#!/bin/bash

# Replace with your bucket name
gsutil -m rsync -R ./public gs://your-bucket-name

echo "✅ Deployment complete!"

chmod +x deploy/deploy.sh