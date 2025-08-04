#!/bin/bash

# ARDA API SDK - Traffic Capture Script
# This script starts mitmproxy and provides instructions for capturing API traffic

set -e

echo "🚀 Starting ARDA API Traffic Capture"
echo "===================================="

# Check if Docker is running
if ! docker info > /dev/null 2>&1; then
    echo "❌ Docker is not running. Please start Docker and try again."
    exit 1
fi

# Start mitmproxy container
echo "📡 Starting mitmproxy container..."
docker-compose up -d mitmproxy

# Wait for container to be ready
echo "⏳ Waiting for mitmproxy to start..."
sleep 5

# Check if container is running
if ! docker-compose ps | grep -q "mitmproxy.*Up"; then
    echo "❌ mitmproxy container failed to start. Check logs with: docker-compose logs mitmproxy"
    exit 1
fi

echo "✅ mitmproxy is running!"
echo ""
echo "🌐 Browser Setup Instructions:"
echo "=============================="
echo "1. Install mitmproxy certificate:"
echo "   - Visit http://mitm.it in your browser"
echo "   - Download and install the certificate for your OS"
echo ""
echo "2. Configure browser proxy:"
echo "   - Proxy: 192.168.86.73:8084"
echo "   - Mode: Manual proxy configuration"
echo ""
echo "3. Access mitmweb interface:"
echo "   - URL: http://192.168.86.73:8085"
echo "   - Username: mitmproxy"
echo "   - Password: password123"
echo ""
echo "📊 Monitor capture progress:"
echo "   watch -n 5 'ls -lh mitm_logs/arda_traffic.flow'"
echo ""
echo "🛑 To stop capture:"
echo "   docker-compose down"
echo ""
echo "🎯 Next steps:"
echo "   1. Configure your browser as shown above"
echo "   2. Browse ARDA and perform the actions you want to capture"
echo "   3. Run ./scripts/generate_spec.sh when done" 