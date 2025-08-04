#!/bin/bash

# ARDA API SDK - SDK Update Script
# This script generates the TypeScript SDK from the OpenAPI specification

set -e

echo "📦 Generating TypeScript SDK"
echo "============================"

# Check if OpenAPI spec exists
if [ ! -f "mitm_logs/arda_comprehensive.yaml" ]; then
    echo "❌ No OpenAPI spec found. Run ./scripts/generate_spec.sh first."
    exit 1
fi

# Get current version from existing SDK or default to 1.0.0
CURRENT_VERSION="1.0.0"
if [ -f "mitm_logs/arda-api-sdk-browser/package.json" ]; then
    CURRENT_VERSION=$(grep '"version"' mitm_logs/arda-api-sdk-browser/package.json | cut -d'"' -f4)
    echo "📋 Current SDK version: $CURRENT_VERSION"
fi

# Prompt for new version
echo ""
read -p "Enter new version (or press Enter to keep $CURRENT_VERSION): " NEW_VERSION
NEW_VERSION=${NEW_VERSION:-$CURRENT_VERSION}

# Create backup of existing SDK if it exists
if [ -d "mitm_logs/arda-api-sdk-browser" ]; then
    echo "💾 Backing up existing SDK..."
    mv mitm_logs/arda-api-sdk-browser mitm_logs/arda-api-sdk-browser.backup
fi

# Generate TypeScript SDK
echo "🔄 Generating TypeScript SDK..."
docker run --rm -v $(pwd)/mitm_logs:/local openapitools/openapi-generator-cli generate \
    -i /local/arda_comprehensive.yaml \
    -g typescript-axios \
    -o /local/arda-api-sdk-browser \
    --additional-properties=packageName=@heavygee/arda-api-sdk,packageVersion=$NEW_VERSION,supportsES6=true,usePromises=true

# Fix permissions
echo "🔧 Fixing permissions..."
sudo chown -R $USER:$USER mitm_logs/ 2>/dev/null || true

# Check if SDK was generated
if [ ! -d "mitm_logs/arda-api-sdk-browser" ]; then
    echo "❌ Failed to generate SDK"
    exit 1
fi

# Update package.json with proper configuration
echo "⚙️ Configuring package.json..."
cat > mitm_logs/arda-api-sdk-browser/package.json << EOF
{
    "name": "@heavygee/arda-api-sdk",
    "version": "$NEW_VERSION",
    "description": "Browser-compatible TypeScript SDK for ARDA (BigScreen Cloud) API",
    "keywords": ["arda", "bigscreen", "api", "sdk", "typescript", "browser", "chrome-extension"],
    "repository": {
        "type": "git",
        "url": "https://github.com/heavygee/arda-api-sdk.git"
    },
    "publishConfig": {
        "registry": "https://npm.pkg.github.com"
    },
    "main": "dist/index.js",
    "types": "dist/index.d.ts",
    "scripts": {
        "clean": "rm -Rf node_modules/ dist/ *.js",
        "build": "tsc",
        "test": "npm run build",
        "prepublishOnly": "npm run build"
    },
    "author": "BigScreen Cloud",
    "license": "MIT",
    "dependencies": {
        "axios": "^1.4.0"
    },
    "devDependencies": {
        "@types/node": "^17.0.18",
        "typescript": "^4.9.0"
    },
    "engines": {
        "node": ">=14.0.0"
    },
    "browser": {
        "fs": false,
        "path": false,
        "os": false
    }
}
EOF

# Add user profile helpers
echo "👤 Adding user profile helpers..."
cp scripts/user_profile.ts mitm_logs/arda-api-sdk-browser/
echo "export * from './user_profile';" >> mitm_logs/arda-api-sdk-browser/index.ts

# Configure TypeScript
echo "⚙️ Configuring TypeScript..."
cat > mitm_logs/arda-api-sdk-browser/tsconfig.json << EOF
{
  "compilerOptions": {
    "target": "es2018",
    "lib": ["es2018", "dom"],
    "allowJs": true,
    "skipLibCheck": true,
    "noImplicitAny": false,
    "strict": false,
    "esModuleInterop": true,
    "allowSyntheticDefaultImports": true,
    "forceConsistentCasingInFileNames": true,
    "moduleResolution": "node",
    "resolveJsonModule": true,
    "noEmit": false,
    "outDir": "dist",
    "declaration": true,
    "declarationMap": true,
    "sourceMap": true,
    "module": "esnext"
  },
  "include": [
    "**/*.ts"
  ],
  "exclude": [
    "node_modules",
    "dist"
  ]
}
EOF

# Count methods in generated SDK
METHODS=$(grep -c "public.*(" mitm_logs/arda-api-sdk-browser/api.ts || echo "0")
echo "✅ Generated SDK with $METHODS methods"

echo ""
echo "🎯 Next steps:"
echo "   1. Review the generated SDK: mitm_logs/arda-api-sdk-browser/"
echo "   2. Run ./scripts/publish_sdk.sh to build and publish the SDK" 