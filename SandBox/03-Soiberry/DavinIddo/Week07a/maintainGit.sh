#!/bin/bash
# Combine all objects that are not in a pack, into a pack
git repack -f -a -d --depth=250 --window=250
