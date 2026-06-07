#!/bin/bash

URL=$1

STATUS=$(curl -o /dev/null -s -w "%{http_code}" $URL)

if [ "$STATUS" -eq 200 ]; then
    echo "Application is UP (HTTP $STATUS)"
else
    echo "Application is DOWN (HTTP $STATUS)"
fi
