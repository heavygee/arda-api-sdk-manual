#!/usr/bin/env python3
"""
SDK Package Validation Script

This script validates that the generated SDK package is complete, compilable, and usable.
It prevents publishing broken packages by catching issues before npm publish.

Validation checks:
1. TypeScript compilation success
2. Required files exist (dist/, package.json, etc.)
3. Package can be imported and used
4. Webpack compatibility
5. All exports are available
"""

import os
import sys
import json
import subprocess
import tempfile
import shutil
from pathlib import Path
from typing import List, Dict, Any, Tuple

class SDKValidator:
    def __init__(self, sdk_path: str = "sdk"):
        self.sdk_path = Path(sdk_path)
        self.errors = []
        self.warnings = []
        
    def log_error(self, message: str):
        """Log an error that will cause validation to fail"""
        print(f"❌ ERROR: {message}")
        self.errors.append(message)
        
    def log_warning(self, message: str):
        """Log a warning that should be investigated"""
        print(f"⚠️  WARNING: {message}")
        self.warnings.append(message)
        
    def log_success(self, message: str):
        """Log a successful validation step"""
        print(f"✅ {message}")
        
    def validate_directory_structure(self) -> bool:
        """Validate that the SDK directory has the required structure"""
        print("\n🔍 Validating SDK directory structure...")
        
        required_files = [
            "package.json",
            "tsconfig.json",
            "index.ts",
            "api.ts",
            "configuration.ts",
            "user_profile.ts"
        ]
        
        required_dirs = [
            "dist",
            "dist/esm"
        ]
        
        # Check required files
        for file_name in required_files:
            file_path = self.sdk_path / file_name
            if not file_path.exists():
                self.log_error(f"Required file missing: {file_name}")
                return False
            else:
                self.log_success(f"Found required file: {file_name}")
        
        # Check required directories (will be created by build)
        for dir_name in required_dirs:
            dir_path = self.sdk_path / dir_name
            if not dir_path.exists():
                self.log_warning(f"Directory will be created by build: {dir_name}")
        
        return True
    
    def validate_package_json(self) -> bool:
        """Validate package.json has required fields and correct configuration"""
        print("\n📦 Validating package.json...")
        
        package_json_path = self.sdk_path / "package.json"
        try:
            with open(package_json_path, 'r') as f:
                package_data = json.load(f)
        except Exception as e:
            self.log_error(f"Failed to parse package.json: {e}")
            return False
        
        # Check required fields
        required_fields = ["name", "version", "main", "module", "typings"]
        for field in required_fields:
            if field not in package_data:
                self.log_error(f"Missing required field in package.json: {field}")
                return False
        
        # Check that main/module/typings point to dist/ directory
        dist_fields = ["main", "module", "typings"]
        for field in dist_fields:
            value = package_data.get(field, "")
            if not value.startswith("./dist/"):
                self.log_error(f"package.json {field} must point to dist/ directory: {value}")
                return False
        
        # Check build script exists
        scripts = package_data.get("scripts", {})
        if "build" not in scripts:
            self.log_error("package.json missing 'build' script")
            return False
        
        self.log_success("package.json validation passed")
        return True
    
    def run_typescript_compilation(self) -> bool:
        """Run TypeScript compilation and check for errors"""
        print("\n🔨 Running TypeScript compilation...")
        
        try:
            # Change to SDK directory
            original_cwd = os.getcwd()
            os.chdir(self.sdk_path)
            
            # Run TypeScript compilation
            result = subprocess.run(
                ["npm", "run", "build"],
                capture_output=True,
                text=True,
                timeout=300  # 5 minute timeout
            )
            
            # Restore original directory
            os.chdir(original_cwd)
            
            if result.returncode != 0:
                self.log_error(f"TypeScript compilation failed with exit code {result.returncode}")
                self.log_error(f"STDOUT: {result.stdout}")
                self.log_error(f"STDERR: {result.stderr}")
                return False
            
            # Check for common TypeScript errors in output
            error_indicators = [
                "error TS",
                "Cannot find name",
                "Cannot find module",
                "Module not found",
                "Type error"
            ]
            
            output = result.stdout + result.stderr
            for indicator in error_indicators:
                if indicator in output:
                    self.log_error(f"TypeScript compilation contains errors: {indicator}")
                    self.log_error(f"Output: {output}")
                    return False
            
            self.log_success("TypeScript compilation completed successfully")
            return True
            
        except subprocess.TimeoutExpired:
            self.log_error("TypeScript compilation timed out after 5 minutes")
            return False
        except Exception as e:
            self.log_error(f"Failed to run TypeScript compilation: {e}")
            return False
    
    def validate_build_output(self) -> bool:
        """Validate that the build process created the required output files"""
        print("\n📁 Validating build output...")
        
        # Check that dist/ directory exists and contains files
        dist_path = self.sdk_path / "dist"
        if not dist_path.exists():
            self.log_error("dist/ directory was not created by build process")
            return False
        
        # Check for required compiled files
        required_compiled_files = [
            "index.js",
            "index.d.ts",
            "esm/index.js"
        ]
        
        for file_name in required_compiled_files:
            file_path = dist_path / file_name
            if not file_path.exists():
                self.log_error(f"Required compiled file missing: dist/{file_name}")
                return False
            else:
                # Check file is not empty
                if file_path.stat().st_size == 0:
                    self.log_error(f"Compiled file is empty: dist/{file_name}")
                    return False
                self.log_success(f"Found compiled file: dist/{file_name}")
        
        # Check that dist/ directory contains reasonable number of files
        js_files = list(dist_path.rglob("*.js"))
        dts_files = list(dist_path.rglob("*.d.ts"))
        
        if len(js_files) < 5:
            self.log_warning(f"Very few JavaScript files in dist/: {len(js_files)}")
        
        if len(dts_files) < 5:
            self.log_warning(f"Very few TypeScript declaration files in dist/: {len(dts_files)}")
        
        self.log_success("Build output validation passed")
        return True
    
    def test_package_import(self) -> bool:
        """Test that the package can be imported and used"""
        print("\n🧪 Testing package import...")
        
        # Create a temporary test file
        test_code = """
import { Configuration } from './dist/index.js';
import { getUserProfileFromCookies } from './dist/index.js';

// Test basic functionality
const config = new Configuration({
    apiKey: 'test-key'
});

console.log('✅ Package import test passed');
"""
        
        test_file = self.sdk_path / "test_import.js"
        try:
            with open(test_file, 'w') as f:
                f.write(test_code)
            
            # Run the test
            result = subprocess.run(
                ["node", "test_import.js"],
                cwd=self.sdk_path,
                capture_output=True,
                text=True,
                timeout=30
            )
            
            # Clean up test file
            test_file.unlink(missing_ok=True)
            
            if result.returncode != 0:
                self.log_error(f"Package import test failed: {result.stderr}")
                return False
            
            if "✅ Package import test passed" not in result.stdout:
                self.log_error("Package import test did not produce expected output")
                return False
            
            self.log_success("Package import test passed")
            return True
            
        except Exception as e:
            self.log_error(f"Failed to run package import test: {e}")
            test_file.unlink(missing_ok=True)
            return False
    
    def validate_typescript_declarations(self) -> bool:
        """Validate TypeScript declaration files are properly generated"""
        print("\n📝 Validating TypeScript declarations...")
        
        dist_path = self.sdk_path / "dist"
        
        # Check main declaration file
        main_dts = dist_path / "index.d.ts"
        if not main_dts.exists():
            self.log_error("Main TypeScript declaration file missing: dist/index.d.ts")
            return False
        
        # Read and validate the declaration file
        try:
            with open(main_dts, 'r') as f:
                content = f.read()
            
            # Check for common issues
            if "export * from" not in content:
                self.log_error("Main declaration file missing exports")
                return False
            
            # Check for specific exports we expect
            expected_exports = [
                "Configuration",
                "getUserProfileFromCookies"
            ]
            
            for export_name in expected_exports:
                if export_name not in content:
                    self.log_warning(f"Expected export not found in declarations: {export_name}")
            
            self.log_success("TypeScript declarations validation passed")
            return True
            
        except Exception as e:
            self.log_error(f"Failed to validate TypeScript declarations: {e}")
            return False
    
    def run_webpack_compatibility_test(self) -> bool:
        """Test webpack compatibility by creating a simple webpack build"""
        print("\n📦 Testing webpack compatibility...")
        
        # Create a temporary test directory
        with tempfile.TemporaryDirectory() as temp_dir:
            temp_path = Path(temp_dir)
            
            # Create a simple webpack config
            webpack_config = """
const path = require('path');

module.exports = {
  mode: 'development',
  entry: './src/index.js',
  output: {
    path: path.resolve(__dirname, 'dist'),
    filename: 'bundle.js',
  },
  resolve: {
    extensions: ['.js', '.ts'],
  },
};
"""
            
            # Create test source file
            test_source = """
import { Configuration } from '@heavygee/arda-api-sdk';

const config = new Configuration({
  apiKey: 'test-key'
});

console.log('Webpack test passed');
"""
            
            # Create package.json for test
            test_package_json = {
                "name": "webpack-test",
                "version": "1.0.0",
                "dependencies": {
                    "@heavygee/arda-api-sdk": "file:../sdk"
                },
                "devDependencies": {
                    "webpack": "^5.0.0",
                    "webpack-cli": "^4.0.0"
                }
            }
            
            try:
                # Write test files
                (temp_path / "webpack.config.js").write_text(webpack_config)
                (temp_path / "src" / "index.js").write_text(test_source)
                (temp_path / "package.json").write_text(json.dumps(test_package_json, indent=2))
                
                # Install dependencies
                subprocess.run(["npm", "install"], cwd=temp_path, check=True, capture_output=True)
                
                # Run webpack build
                result = subprocess.run(
                    ["npx", "webpack"],
                    cwd=temp_path,
                    capture_output=True,
                    text=True,
                    timeout=60
                )
                
                if result.returncode != 0:
                    self.log_error(f"Webpack compatibility test failed: {result.stderr}")
                    return False
                
                # Check that bundle was created
                bundle_path = temp_path / "dist" / "bundle.js"
                if not bundle_path.exists():
                    self.log_error("Webpack bundle was not created")
                    return False
                
                self.log_success("Webpack compatibility test passed")
                return True
                
            except Exception as e:
                self.log_error(f"Webpack compatibility test failed: {e}")
                return False
    
    def validate_all(self) -> bool:
        """Run all validation checks"""
        print("🚀 Starting comprehensive SDK package validation...")
        
        validation_steps = [
            ("Directory Structure", self.validate_directory_structure),
            ("Package.json", self.validate_package_json),
            ("TypeScript Compilation", self.run_typescript_compilation),
            ("Build Output", self.validate_build_output),
            ("Package Import", self.test_package_import),
            ("TypeScript Declarations", self.validate_typescript_declarations),
            ("Webpack Compatibility", self.run_webpack_compatibility_test),
        ]
        
        all_passed = True
        
        for step_name, validation_func in validation_steps:
            try:
                if not validation_func():
                    self.log_error(f"Validation step failed: {step_name}")
                    all_passed = False
                    break
            except Exception as e:
                self.log_error(f"Validation step crashed: {step_name} - {e}")
                all_passed = False
                break
        
        # Print summary
        print(f"\n📊 Validation Summary:")
        print(f"✅ Passed: {len([s for s, _ in validation_steps if all_passed])}")
        print(f"❌ Errors: {len(self.errors)}")
        print(f"⚠️  Warnings: {len(self.warnings)}")
        
        if self.errors:
            print(f"\n❌ Validation Errors:")
            for error in self.errors:
                print(f"  - {error}")
        
        if self.warnings:
            print(f"\n⚠️  Validation Warnings:")
            for warning in self.warnings:
                print(f"  - {warning}")
        
        if all_passed:
            print(f"\n🎉 All validation checks passed! SDK package is ready for publishing.")
        else:
            print(f"\n💥 Validation failed! Do not publish this package.")
        
        return all_passed

def main():
    """Main entry point"""
    if len(sys.argv) > 1:
        sdk_path = sys.argv[1]
    else:
        sdk_path = "sdk"
    
    validator = SDKValidator(sdk_path)
    success = validator.validate_all()
    
    # Exit with appropriate code
    sys.exit(0 if success else 1)

if __name__ == "__main__":
    main() 