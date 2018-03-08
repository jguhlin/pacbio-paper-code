nucmer --mum -p USDA1106-vs-M162 ../genomes/USDA1106.final.fasta ../genomes/M162.final.fasta
show-coords -cHT USDA1106-vs-M162.delta > USDA1106-vs-M162.coords

nucmer --mum -p WSM.acc-VS-M162 WSM419.plasmid.7611.fasta ../genomes/M162.final.fasta
show-coords -cHT WSM.acc-VS-M162.delta > WSM.acc-VS-M162.coords

nucmer --mum -p M2.acc-VS-M162 M2.plasmid.7433.fasta ../genomes/M162.final.fasta
show-coords -cHT M2.acc-VS-M162.delta > M2.acc-VS-M162.coords

nucmer --mum -p USDA1106-vs-USDA1021 ../genomes/USDA1106.final.fasta ../genomes/USDA1021.final.fasta
show-coords -cHT USDA1106-vs-USDA1021.delta > USDA1106-vs-USDA1021.coords

nucmer --mum -p agro-vs-m270 Agro_C58_Plasmid.fasta M270_accessory_b.fasta
show-coords -cHT agro-vs-m270.delta > agro-vs-m270.coords
