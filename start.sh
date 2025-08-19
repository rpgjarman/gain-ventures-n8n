#!/bin/bash
# Create necessary directories
mkdir -p /tmp/n8n

# Initialize database if it doesn't exist
if [ ! -f /tmp/n8n/database.sqlite ]; then
    echo "Initializing new n8n database..."
fi

# Start n8n
n8n start