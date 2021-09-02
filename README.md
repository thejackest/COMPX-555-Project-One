# COMPX-555-Project-One
Team Blue
Mackenzie Harcourt - 1230689
Jackest Gong - 1286514

ExtractSequence takes an contig file entry and outputs sequence.txt
	e.g. ./ExtractSequence.sh contig00028.txt
	
IsolateSubsequences takes a sequence input and outputs a subsequences.txt
	e.g. ./IsolateSubsequences.sh sequence.txt
	
GenerateReverseComplement takes a subsequences input and outputs a reverseComplements.txt
	e.g. ./GenerateReverseComplement.sh subsequences.txt
	
IsolateComplementSubsequences takes a reverseComplements input and adds found subsequences to subsequences.txt
	e.g. ./IsolateComplementSubsequences.sh reverseComplements.txt
	
SortSequences takes a sunbsequences file and sorts it from largest to smallest, this is outputted as sortedsubsequences.txt
	e.g. ./SortSequences subsequences.txt
	
TranslateGenes takes a sortedsubsequences file input and outputs an aminoAcids.txt
	e.g. ./TranslateGenes.sh sortedsubsequences.txt
	
MergeGenesAmino takes a subsequences file and aminoacids file and outputs pairs with a new line inbetween as MergedGenesAcids.txt
	e.g. ./MergeGenesAmino.sh subsequences.txt aminoAcids.txt
	
RunFindAminoAcids takes a contig file input and runs all steps with their respective inputs, outputting them all as it goes
	e.g. ./RunFindAminoAcids.sh contig00028.txt