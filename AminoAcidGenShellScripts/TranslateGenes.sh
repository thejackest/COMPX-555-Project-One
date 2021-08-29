#!/bin/bash
awk '
{
	out = "";
	for (i = 0; i < length($0); i+=3)
	{
		tuple = substr($0,i,3);
		gsub(/TT[TC]/, "F", tuple); #Phenylalanine	
		gsub(/TT[AG]|CT[TCAG]/, "L", tuple);#Leucine
		gsub(/AT[TCA]/, "I", tuple); #Isoleucine
		gsub(/ATG/,"M", tuple); #Methionine
		gsub(/GT[TCAG]/, "V", tuple); #Valine
		gsub(/TC[TCAG]|AG[TC]/, "S", tuple); #Serine
		gsub(/CC[TCAG]/, "P", tuple); #Proline
		gsub(/AC[TCAG]/, "T", tuple); #Threonine
		gsub(/GC[TCAG]/, "A", tuple); #Alanine
		gsub(/TA[TC]/, "Y", tuple); #Tyrosine
		gsub(/TA[AG]|TGA/, "", tuple);# stop
		gsub(/CA[TC]/, "H", tuple); #Histidine
		gsub(/CA[AG]/, "Q", tuple); #Glutamine
		gsub(/AA[TC]/, "N", tuple); #Asparagine
		gsub(/AA[AG]/, "K", tuple); #Lysine
		gsub(/GA[TC]/, "D", tuple);#aspartic acid
		gsub(/GA[AG]/, "E", tuple); #Glutamic acid
		gsub(/TG[TC]/, "C", tuple); #Cysteine
		gsub(/TGG/, "W", tuple); #Tryptophan
		gsub(/CG[TCAG]|AG[AG]/, "R", tuple); #Arginine
		gsub(/GG[TCAG]/, "G", tuple); #Glycine
		if (tuple != "")
		{
			out = out tuple
		}
	}
	print out
}' $1 > aminoAcids.txt