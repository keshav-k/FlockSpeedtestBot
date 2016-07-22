#!/bin/sh

result=`$1`
result="{\"text\" : \"$result\"}"
echo "$result" > ~/speedtest.json
curl -X POST $2 -H "Content-Type: application/json" --data @"$HOME/speedtest.json"
