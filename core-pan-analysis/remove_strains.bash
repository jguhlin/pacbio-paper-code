for i in *.tsv
do
	grep -iv M162 $i | grep -iv USDA1021 | sort | uniq > remove-1021-m162/$i 
done
