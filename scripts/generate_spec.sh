#!/bin/bash

# ARDA API SDK - OpenAPI Spec Generation Script
# This script converts captured mitmproxy traffic to OpenAPI specification

set -e

echo "🔧 Generating OpenAPI Specification"
echo "==================================="

# Check if flow file exists
if [ ! -f "mitm_logs/arda_traffic.flow" ]; then
    echo "❌ No traffic capture found. Run ./scripts/capture_traffic.sh first."
    exit 1
fi

# Check flow file size
FLOW_SIZE=$(ls -lh mitm_logs/arda_traffic.flow | awk '{print $5}')
echo "📊 Flow file size: $FLOW_SIZE"

if [ "$FLOW_SIZE" = "0" ] || [ "$FLOW_SIZE" = "0B" ]; then
    echo "❌ Flow file is empty. No traffic was captured."
    exit 1
fi

# Create backup of existing spec if it exists
if [ -f "mitm_logs/arda_comprehensive.yaml" ]; then
    echo "💾 Backing up existing spec..."
    cp mitm_logs/arda_comprehensive.yaml mitm_logs/arda_comprehensive.yaml.backup
fi

# Generate OpenAPI spec from flow file
echo "🔄 Converting traffic to OpenAPI spec..."
docker run --rm -v $(pwd)/mitm_logs:/local mitmproxy/mitmproxy:latest \
    mitmproxy2swagger -f /local/arda_traffic.flow -p / -o /local/arda_comprehensive.yaml

# Fix permissions
echo "🔧 Fixing permissions..."
sudo chown -R $USER:$USER mitm_logs/ 2>/dev/null || true

# Check if spec was generated
if [ ! -f "mitm_logs/arda_comprehensive.yaml" ]; then
    echo "❌ Failed to generate OpenAPI spec"
    exit 1
fi

# Count endpoints in generated spec
ENDPOINTS=$(grep -c "summary:" mitm_logs/arda_comprehensive.yaml || echo "0")
echo "✅ Generated OpenAPI spec with $ENDPOINTS endpoints"

# Show endpoint breakdown
echo "📋 Endpoint breakdown:"
grep "summary:" mitm_logs/arda_comprehensive.yaml | head -10

if [ "$ENDPOINTS" -gt 10 ]; then
    echo "... and $(($ENDPOINTS - 10)) more endpoints"
fi

echo ""
echo "🎯 Next steps:"
echo "   1. Review the generated spec: mitm_logs/arda_comprehensive.yaml"
echo "   2. Run ./scripts/update_sdk.sh to generate the SDK"
echo "   3. Run ./scripts/publish_sdk.sh to publish the SDK" 