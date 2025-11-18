#!/bin/sh

set -e
  
until curl -s http://localhost:8080/ > /dev/null; do
  >&2 echo "Web service is unavailable - sleeping"
  sleep 1
done
  
>&2 echo "Webservice is up - continuing"
