#!/bin/bash
./ExtractSequence.sh $1 && sleep 1 | ./IsolateSubsequences.sh sequence.txt && sleep 1 | ./GenerateReverseComplement.sh subsequences.txt && sleep 1 | ./IsolateComplementSubsequences.sh reverseComplements.txt && sleep 1 | ./TranslateGenes.sh subsequences.txt