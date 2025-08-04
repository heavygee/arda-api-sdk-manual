#!/bin/bash
# Monitor ARDA API capture progress

echo "=== ARDA API Capture Monitor ==="
echo "Proxy: http://192.168.86.73:8084"
echo "Web UI: http://192.168.86.73:8085 (password: password123)"
echo ""

while true; do
    clear
    echo "=== ARDA API Capture Progress ==="
    echo "Time: $(date)"
    echo ""
    
    # Check container status
    echo "Container Status:"
    docker compose ps mitmproxy 2>/dev/null | grep mitmproxy || echo "Container not running!"
    echo ""
    
    # Check flow file size
    if [ -f "mitm_logs/arda_traffic.flow" ]; then
        SIZE=$(ls -lh mitm_logs/arda_traffic.flow | awk '{print $5}')
        echo "Flow file size: $SIZE"
        
        # Try to count requests more reliably
        echo "Checking captured traffic..."
        
        # Use a simpler approach - just check if file is growing
        if [ -f "mitm_logs/arda_traffic.flow" ]; then
            CURRENT_SIZE=$(stat -c%s mitm_logs/arda_traffic.flow 2>/dev/null || echo "0")
            if [ "$CURRENT_SIZE" -gt 0 ]; then
                echo "✅ Traffic is being captured (file size: $CURRENT_SIZE bytes)"
                echo "📊 Check web UI at http://192.168.86.73:8085 for real-time view"
            else
                echo "❌ No traffic captured yet"
            fi
        fi
    else
        echo "No flow file yet - start browsing ARDA!"
    fi
    
    echo ""
    echo "Press Ctrl+C to stop monitoring"
    echo "================================"
    sleep 5
done 