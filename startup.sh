#!/bin/bash
cd /home/site/wwwroot

# Start the application
echo "Starting application..."
gunicorn app:app -b 0.0.0.0:8000 --timeout 1200 --workers 1 --preload
