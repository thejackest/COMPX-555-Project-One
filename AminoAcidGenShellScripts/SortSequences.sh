#!/bin/bash
cat $1 | awk '{ print length , $0 }' | sort -r -n |sed -E -e 's/^[0-9]+ //' > sortedsubsequences.txt