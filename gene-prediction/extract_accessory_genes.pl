use Bio::SeqIO;

my $in = Bio::SeqIO->new(-file => $ARGV[0], -format => "Fasta");

while (my $seq = $in->next_seq()) {
	if ($seq->id() =~ /Accessory/i) {
		print ">" . $seq->id() . "\n";

		# Remove trailing * (stop codon) for processing with other tools like
		# InterProScan, amongst others possibly
		my $sequence = $seq->seq();
		if (substr($sequence, -1) == '*') {
			chop($sequence);
		}

		print $sequence . "\n";
	} 
}
