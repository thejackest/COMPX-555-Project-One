# COMPX-555-Project-One
ExtractSequence takes an contig file entry and outputs sequence.txt
	e.g. ./ExtractSequence.sh contig00028.txt
	
IsolateSubsequences takes a sequence input and outputs a subsequences.txt
	e.g. ./IsolateSubsequences.sh sequence.txt
	
GenerateReverseComplement takes a subsequences input and outputs a reverseComplements.txt
	e.g. ./GenerateReverseComplement.sh subsequences.txt
	
IsolateComplementSubsequences takes a reverseComplements input and adds found subsequences to subsequences.txt
	e.g. ./IsolateComplementSubsequences.sh reverseComplements.txt
	
TranslateGenes takes a subsequences file input and outputs an aminoAcids.txt
	e.g. ./TranslateGenes.sh subsequences.txt
	
RunFindAminoAcids takes a contig file input and runs all steps with their respective inputs, outputting them all as it goes
	e.g. ./RunFindAminoAcids.sh contig00028.txt