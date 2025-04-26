#!/bin/bash
cd /home/site/wwwroot

# Download spaCy model
echo "Downloading spaCy model..."
python -m spacy download en_core_web_sm

# Start the application
echo "Starting application..."
gunicorn app:app -b 0.0.0.0:8000 --timeout 1200 --workers 1 --preload
