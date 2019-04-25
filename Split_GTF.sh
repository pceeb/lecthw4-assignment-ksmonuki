#!/bin/bash
#Script to split data based on chromosome and saves the individual chromosome data in separate files.
#Requires argument of input file: sh bash_script.sh input_file
#Example: sh Split_GTF.sh hg19.gtf
#NOTE: the script is specific to the chromosomes given in the hg19.gtf file (ie. chr2, chr21, chr3). You must edit the script to separate the data if using an input file different from hg19.gtf.

for i in 2 3 21
do 
grep -P "chr${i}\t" $1 > chr${i}_gtf
done
 
