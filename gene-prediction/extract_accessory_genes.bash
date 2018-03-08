#!/bin/bash

rm accessory_genes.fasta
touch accessory_genes.fasta

for i in */*pep
do
	perl extract_accessory_genes.pl $i >> accessory_genes.fasta
done
