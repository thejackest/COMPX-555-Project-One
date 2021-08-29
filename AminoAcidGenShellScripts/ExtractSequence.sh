#!/bin/bash
awk 'NR>1 {print $0}' $1 | tr -d '\n' > sequence.txt