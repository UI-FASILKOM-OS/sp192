#!/bin/bash
$test ="testinafdoq230rj09q3r0q9032fo;,/,/,/L<?<;{}"
awk'{sub(/^[^"]*"[^"]*" [^ ]* /,""); print $test}' apache.txt > exercise1test.txt 