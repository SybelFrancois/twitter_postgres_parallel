#!/bin/sh


for file in $1; do
    unzip -p "$1" | sed 's/\\u0000//g' | psql postgresql://postgres:pass@localhost:3038/ -c "COPY tweets_jsonb (data) FROM STDIN csv quote e'\x01' delimiter e'\x02';"
done
