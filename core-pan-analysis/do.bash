for i in *.tsv
do
	perl parse_blastp.pl $i
done
