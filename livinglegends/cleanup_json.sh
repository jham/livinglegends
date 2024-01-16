#!/bin/bash
cat $1 | python3 -c 'import csv, json, sys; print(json.dumps([dict(r) for r in csv.DictReader(sys.stdin)], indent = 4))' > $2
sed -i '' 's/points": "\([0-9]*\)"/points": \1/' $2
