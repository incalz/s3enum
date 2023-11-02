#!/bin/sh
aws s3 ls s3://s3-assignment-instance --recursive | awk '{print $4}' > /app/output.txt
python -m http.server 8001
