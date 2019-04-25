#!/bin/bash
#Script to split data based on chromosome, create directories for each chromosome, and save the individual chromosome data in separate files within their respective directories.
#Requires argument of input file: sh bash_script.sh input_file
#Example: sh Split_GTF.sh hg19.gtf
#NOTE: the script is specific to the chromosomes given in the hg19.gtf file (ie. chr2, chr21, chr3). You must edit the script to separate the data if using an input file different from hg19.gtf.

for i in 2 3 21
do
mkdir chr${i}_gtf
cp $1 chr${i}_gtf
cd chr${i}_gtf 
grep -P "chr${i}\t" $1 > chr${i}.gtf
cd ../
done
 
