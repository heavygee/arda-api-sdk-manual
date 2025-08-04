#!/bin/bash
# Fix permissions on mitm_logs directory and all files within it
sudo chown -R heavygee:heavygee mitm_logs/
echo "Permissions fixed for mitm_logs directory" 