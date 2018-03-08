my @a = glob("../*.fasta");

@b = ("../2011.final.fasta");

foreach my $a (@b) {
	$a =~ /\.\.\/(.+)\.final\.fasta/;
	my $acc1 = $1;
	foreach my $b (@a) {
		$b =~ /\.\.\/(.+)\.final\.fasta/;
		my $acc2 = $1;
		
		my $outfile = $acc1 . "-vs-" . $acc2 . "";
		my $cmd = "nucmer $a $b -p $outfile";
		print $cmd . "\n";
		system($cmd);
		my $cmd2 = "mummerplot $outfile.delta --png -p $outfile";
		system($cmd2);
		
	}
}
