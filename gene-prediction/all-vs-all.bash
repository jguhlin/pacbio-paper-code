makeblastdb -dbtype prot -in all_genes_proteins.fasta
blastp -num_threads 8 -db all_genes_proteins.fasta -query all_genes_proteins.fasta -outfmt "6 std qlen slen" > all-vs-all.tsv
