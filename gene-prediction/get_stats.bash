echo "Main"
cat *.gff3 | grep CDS | grep Main | wc -l
echo "pSymA"
cat *.gff3 | grep CDS | grep pSymA | wc -l
echo "pSymB"
cat *.gff3 | grep CDS | grep pSymB | wc -l