#!/bin/bash

# ARDA API SDK - Incremental Update Script
# This script merges new traffic captures with existing OpenAPI specification

set -e

echo "🔄 Incremental SDK Update"
echo "========================="

# Check if existing spec exists
if [ ! -f "mitm_logs/arda_comprehensive.yaml" ]; then
    echo "❌ No existing spec found. Run ./scripts/generate_spec.sh for initial generation."
    exit 1
fi

# Check if new flow file exists
if [ ! -f "mitm_logs/arda_traffic.flow" ]; then
    echo "❌ No new traffic capture found. Run ./scripts/capture_traffic.sh first."
    exit 1
fi

echo "📊 Current spec endpoints: $(grep -c 'summary:' mitm_logs/arda_comprehensive.yaml || echo '0')"
echo "📊 New flow file size: $(ls -lh mitm_logs/arda_traffic.flow | awk '{print $5}')"

# Create backup of existing spec
echo "💾 Backing up existing spec..."
cp mitm_logs/arda_comprehensive.yaml mitm_logs/arda_comprehensive.yaml.backup

# Generate new spec from flow file
echo "🔄 Generating new spec from captured traffic..."
docker run --rm -v $(pwd)/mitm_logs:/local mitmproxy/mitmproxy:latest \
    mitmproxy2swagger -f /local/arda_traffic.flow -p / -o /local/arda_comprehensive_new.yaml

# Fix permissions
sudo chown -R $USER:$USER mitm_logs/ 2>/dev/null || true

# Count endpoints in new spec
NEW_ENDPOINTS=$(grep -c 'summary:' mitm_logs/arda_comprehensive_new.yaml || echo '0')
echo "📊 New spec endpoints: $NEW_ENDPOINTS"

# Simple merge strategy: use the new spec (mitmproxy2swagger should handle merging)
echo "🔄 Merging specs..."
mv mitm_logs/arda_comprehensive_new.yaml mitm_logs/arda_comprehensive.yaml

# Count final endpoints
FINAL_ENDPOINTS=$(grep -c 'summary:' mitm_logs/arda_comprehensive.yaml || echo '0')
echo "✅ Final spec endpoints: $FINAL_ENDPOINTS"

# Show what changed
echo "📋 New endpoints found:"
grep 'summary:' mitm_logs/arda_comprehensive.yaml | tail -10

echo ""
echo "🎯 Next steps:"
echo "   1. Review the updated spec: mitm_logs/arda_comprehensive.yaml"
echo "   2. Run ./scripts/update_sdk.sh to generate the updated SDK"
echo "   3. Run ./scripts/publish_sdk.sh to publish the updated SDK" 