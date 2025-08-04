#!/bin/bash

# ARDA API SDK - SDK Publish Script
# This script builds and publishes the SDK to GitHub Packages

set -e

echo "🚀 Publishing ARDA API SDK"
echo "=========================="

# Check if SDK exists
if [ ! -d "mitm_logs/arda-api-sdk-browser" ]; then
    echo "❌ No SDK found. Run ./scripts/update_sdk.sh first."
    exit 1
fi

# Check if .env exists and has NPM_PAT
if [ ! -f ".env" ]; then
    echo "❌ No .env file found. Please create one with NPM_PAT=your_token"
    exit 1
fi

# Load environment variables
source .env

if [ -z "$NPM_PAT" ]; then
    echo "❌ NPM_PAT not set in .env file"
    exit 1
fi

# Navigate to SDK directory
cd mitm_logs/arda-api-sdk-browser

# Get current version
VERSION=$(grep '"version"' package.json | cut -d'"' -f4)
echo "📦 Publishing version: $VERSION"

# Install dependencies
echo "📥 Installing dependencies..."
npm config set registry https://registry.npmjs.org/
npm install

# Build SDK
echo "🔨 Building SDK..."
npm run build

# Check if build was successful
if [ ! -d "dist" ] || [ ! -f "dist/index.js" ]; then
    echo "❌ Build failed. Check for TypeScript errors."
    exit 1
fi

echo "✅ Build successful!"

# Configure npm for GitHub Packages
echo "⚙️ Configuring npm for GitHub Packages..."
echo "//npm.pkg.github.com/:_authToken=${NPM_PAT}" > .npmrc
echo "@heavygee:registry=https://npm.pkg.github.com" >> .npmrc

# Check if version already exists
echo "🔍 Checking if version $VERSION already exists..."
if npm view @heavygee/arda-api-sdk@$VERSION --registry=https://npm.pkg.github.com > /dev/null 2>&1; then
    echo "⚠️ Version $VERSION already exists. Do you want to overwrite it?"
    read -p "Continue? (y/N): " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo "❌ Publishing cancelled"
        exit 1
    fi
fi

# Publish SDK
echo "🚀 Publishing to GitHub Packages..."
npm config set registry https://npm.pkg.github.com/
npm publish --access=restricted

# Verify publication
echo "✅ Verifying publication..."
PUBLISHED_VERSION=$(npm view @heavygee/arda-api-sdk --registry=https://npm.pkg.github.com --json | grep '"version"' | tail -1 | cut -d'"' -f4)

if [ "$PUBLISHED_VERSION" = "$VERSION" ]; then
    echo "🎉 Successfully published @heavygee/arda-api-sdk@$VERSION"
    echo ""
    echo "📋 Package details:"
    echo "   Name: @heavygee/arda-api-sdk"
    echo "   Version: $VERSION"
    echo "   Registry: https://npm.pkg.github.com"
    echo "   Install: npm install @heavygee/arda-api-sdk"
else
    echo "❌ Publication verification failed"
    exit 1
fi

# Go back to root directory
cd ../..

echo ""
echo "🎯 Next steps:"
echo "   1. Test the published SDK in your project"
echo "   2. Update your project's package.json if needed"
echo "   3. Commit and push your changes" 