#!/bin/bash
cat $1 | python3 -m json.tool > output.txt
