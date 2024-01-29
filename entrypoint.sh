#!/bin/sh

if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ]; then
  echo "Usage: send_message.sh <TOKEN> <CHAT_ID> <TEXT>"
  exit 1
fi

TOKEN=$1
CHAT_ID=$2
TEXT=$3

curl -vv -XPOST "https://api.telegram.org/bot$TOKEN/sendMessage" -H "Content-Type: application/json" -d "{\"chat_id\": \"$CHAT_ID\", \"text\": \"$TEXT\"}"
