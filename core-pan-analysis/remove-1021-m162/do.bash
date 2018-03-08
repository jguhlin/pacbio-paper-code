for i in *.tsv
do
	mcl $i --abc -I 2.0
	mcl $i --abc -I 4.0
	mcl $i --abc -I 6.0
	mcl $i --abc -I 8.0
	mcl $i --abc -I 10.0
done
