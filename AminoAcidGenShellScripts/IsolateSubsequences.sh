#!/bin/bash
awk '{for (i = 1; i <= length($0); i++)
{
	if(substr($0,i,3) ~ /ATG/)
	{
		for(j=i; j <= length($0); j+=3) 
		{
			if(substr($0,j,3) ~ /TGA|TA[GA]/)
			{
				if(length(substr($0,i,j-i+3))>6)
				{
					print length(substr($0,i,j-i+3)),substr($0,i,j-i+3)
					break;
				}
			}
		}
	}
}}
' $1 | sort -r -n |sed -E -e 's/^[0-9]+ //' > subsequences.txt