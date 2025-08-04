# ARDA API SDK - Manual Generation

A clean, dedicated repository for manually generating the ARDA API SDK through traffic capture and analysis.

## 🎯 Purpose

This repository provides a repeatable process to:
1. Capture new API endpoints through mitmproxy traffic analysis
2. Incrementally update the existing API specification
3. Generate and publish updated SDK versions

## 📁 Repository Structure

```
arda-api-sdk-manual/
├── docker-compose.yml          # mitmproxy container setup
├── mitm_logs/                  # Captured traffic and generated files
│   ├── arda_traffic.flow      # Raw captured traffic
│   ├── arda_comprehensive.yaml # Current OpenAPI spec
│   └── arda-api-sdk-browser/  # Generated SDK
├── scripts/                    # Automation scripts
│   ├── capture_traffic.sh     # Start traffic capture
│   ├── generate_spec.sh       # Generate OpenAPI spec
│   ├── update_sdk.sh          # Update SDK with new spec
│   └── publish_sdk.sh         # Publish SDK to GitHub Packages
├── .env                        # Environment variables (NPM_PAT)
├── .npmrc                      # npm registry config
└── README.md                   # This file
```

## 🚀 Quick Start

### 1. Setup Environment

```bash
# Clone the repository
git clone <repository-url>
cd arda-api-sdk-manual

# Set up environment variables
cp .env.example .env
# Edit .env and add your NPM_PAT
```

### 2. Start Traffic Capture

```bash
# Start mitmproxy container
docker-compose up -d

# Configure browser proxy:
# - Proxy: 192.168.86.73:8084
# - Install certificate from http://mitm.it
```

### 3. Capture New Functionality

1. Browse ARDA and perform the new action you want to capture
2. Monitor capture progress: `ls -lh mitm_logs/arda_traffic.flow`

### 4. Monitor Capture Progress

```bash
# Monitor traffic capture in real-time
./scripts/monitor_capture.sh
```

### 5. Generate Updated SDK

```bash
# Generate OpenAPI spec from captured traffic
./scripts/generate_spec.sh

# Update SDK with new spec
./scripts/update_sdk.sh

# Validate SDK before publishing
python3 scripts/validate_sdk_package.py

# Publish updated SDK
./scripts/publish_sdk.sh
```

## 📋 Detailed Process

### Phase 1: Traffic Capture

1. **Start mitmproxy**:
   ```bash
   docker-compose up -d
   ```

2. **Configure browser**:
   - Install mitmproxy certificate from http://mitm.it
   - Set proxy to 192.168.86.73:8084
   - Test connection to ARDA

3. **Perform comprehensive session**:
   - Login to ARDA
   - Navigate to the functionality you want to capture
   - Perform all related actions
   - Monitor capture size: `watch -n 5 'ls -lh mitm_logs/arda_traffic.flow'`

### Phase 2: Spec Generation

1. **Generate OpenAPI spec**:
   ```bash
   docker run --rm -v $(pwd)/mitm_logs:/local mitmproxy/mitmproxy:latest \
     mitmproxy2swagger -f /local/arda_traffic.flow -p / -o /local/arda_comprehensive.yaml
   ```

2. **Update path templates** (if needed):
   Edit `mitm_logs/arda_comprehensive.yaml` to add any new expected paths

### Phase 3: SDK Generation

1. **Generate TypeScript SDK**:
   ```bash
   docker run --rm -v $(pwd)/mitm_logs:/local openapitools/openapi-generator-cli generate \
     -i /local/arda_comprehensive.yaml \
     -g typescript-axios \
     -o /local/arda-api-sdk-browser \
     --additional-properties=packageName=@heavygee/arda-api-sdk,packageVersion=1.0.x,supportsES6=true,usePromises=true
   ```

2. **Add user profile helpers**:
   ```bash
   cp scripts/user_profile.ts mitm_logs/arda-api-sdk-browser/
   echo "export * from './user_profile';" >> mitm_logs/arda-api-sdk-browser/index.ts
   ```

3. **Configure package.json**:
   Update version and description in `mitm_logs/arda-api-sdk-browser/package.json`

### Phase 4: Build and Publish

1. **Build SDK**:
   ```bash
   cd mitm_logs/arda-api-sdk-browser
   npm install
   npm run build
   ```

2. **Configure publishing**:
   ```bash
   echo "//npm.pkg.github.com/:_authToken=${NPM_PAT}" > .npmrc
   echo "@heavygee:registry=https://npm.pkg.github.com" >> .npmrc
   ```

3. **Publish**:
   ```bash
   npm publish --access=restricted
   ```

## 🔄 Incremental Updates

For adding new functionality to existing SDK:

1. **Capture new traffic** for the specific functionality
2. **Merge with existing spec** using the update scripts
3. **Increment version** in package.json
4. **Regenerate and publish** SDK

## 🛠 Scripts

### `scripts/capture_traffic.sh`
- Starts mitmproxy container
- Provides instructions for browser setup
- Monitors capture progress

### `scripts/generate_spec.sh`
- Converts flow file to OpenAPI spec
- Applies path templates
- Validates generated spec

### `scripts/update_sdk.sh`
- Generates TypeScript SDK
- Adds user profile helpers
- Configures package.json

### `scripts/publish_sdk.sh`
- Builds SDK
- Configures npm registry
- Publishes to GitHub Packages

### `scripts/fix_permissions.sh`
- Fixes Docker permission issues
- Ensures proper file ownership

### `scripts/monitor_capture.sh`
- Real-time monitoring of traffic capture
- Shows flow file size and container status
- Provides web UI access information

### `scripts/validate_sdk_package.py`
- Validates SDK package before publishing
- Checks TypeScript compilation
- Verifies package structure and imports

## 📊 Current SDK Status

- **Version**: 1.0.2
- **Endpoints**: 170 total (155 GET, 5 POST, 10 PUT)
- **Features**: Order holds, user profiles, comprehensive API coverage
- **Registry**: GitHub Packages (@heavygee/arda-api-sdk)

## 🔧 Troubleshooting

### Permission Issues
```bash
sudo chown -R $USER:$USER mitm_logs/
```

### Build Errors
- Check TypeScript version compatibility
- Ensure all dependencies are installed
- Verify package.json configuration

### Publishing Issues
- Verify NPM_PAT is set in .env
- Check .npmrc configuration
- Ensure package name matches repository

## 📝 Notes

- This is an **unofficial** SDK not affiliated with BigScreen Cloud
- Published to GitHub Packages as a **private package** (not available on public npm registry)
- Requires authentication for installation
- Designed for browser/Chrome extension use
- Includes user profile helpers for cookie parsing
- **Security**: Internal API details are kept private and not exposed publicly 