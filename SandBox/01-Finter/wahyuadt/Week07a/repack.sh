#!/bin/bash

echo "=== start ==="
git repack -f -a -d --depth=250 --window=250
echo "=== end ==="

