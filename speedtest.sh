#!/bin/sh

result="{\"text\" : \"`$1`\"}"
echo "$result" > ~/speedtest.json
curl -X POST $2 -H "Content-Type: application/json" --data @"$HOME/speedtest.json"
rm ~/speedtest.json
