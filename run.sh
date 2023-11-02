#!/bin/sh

# this scirpt lists items in our backet and append them in a text/api of a flask server
aws s3 ls s3://s3-assignment-instance --recursive | awk '{print $4}' > /app/output.txt
python -m http.server 8001
