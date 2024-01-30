#!/bin/sh

if [ -z "$TOKEN" ] || [ -z "$1" ] || [ -z "$2" ]; then
  echo "Usage: entrypoint.sh <CHAT_ID> <TEXT>"
  exit 1
fi

CHAT_ID=$1
TEXT=$2

curl -vv -XPOST "https://api.telegram.org/bot$TOKEN/sendMessage" -H "Content-Type: application/json" -d "{\"chat_id\": \"$CHAT_ID\", \"text\": \"$TEXT\"}"
