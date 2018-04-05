export _JAVA_OPTIONS="-Xms8g -Xmx8g"

# M2_trimmed_1.fastq  M2_trimmed_2.fastq  trimmed_singles.fastq


bwa index M2_consensus_final.fasta
bwa mem M2_consensus_final.fasta M2_trimmed_1.fastq M2_trimmed_2.fastq > M2_trimmed.sam

samtools view -bS M2_trimmed.sam | samtools sort - M2_trimmed.sorted
samtools index M2_trimmed.sorted.bam

java -Xmx32g -jar pilon-1.16.jar --genome M2_consensus_final.fasta \
        --frags M2_trimmed.sorted.bam \
        --output M2_trimmed.pilon \
        --changes --fix "bases"

