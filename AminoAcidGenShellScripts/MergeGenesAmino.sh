#!/bin/bash
awk 'NR==FNR {x[FNR]=$0;next} {print x[FNR]"\n"$0"\n"}' $1 $2 > MergedGenesAcids.txt