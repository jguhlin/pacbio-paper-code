#!/usr/bin/perl
use strict;

my @a = glob("../genomes/*final.fasta");

foreach my $fasta (@a) {
	$fasta =~ /genomes\/(\w.+)\.final\.fasta/;
	my $acc = $1;

	system("mkdir $acc");

	my $prodigal_cmd = "prodigal -i $fasta -d $acc/${acc}_genes.seq -a $acc/${acc}_genes.pep -f gff -o $acc/${acc}_genes.gff3";
	print $prodigal_cmd . "\n";
	system($prodigal_cmd);
}
