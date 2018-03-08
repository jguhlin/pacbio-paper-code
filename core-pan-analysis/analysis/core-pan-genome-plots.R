library("ggplot2")
library("data.table")
library("svglite")

# setwd("/home/joseph/msi/work/pacbio-paper-code/core-pan-analysis/analysis")
# setwd("G:/Development/pacbio-paper-code/core-pan-analysis/analysis")


plot_core_qplot <- function(filename, title){
  sc <- scale_fill_continuous() 
  sc$legend <- FALSE 
  coregenes <- fread(filename)
  cg <- qplot(data=coregenes, x=V1, y=V2, 
              color=V1,
              xlab = "Gene Clusters",
              ylab = "Genome Number",
              main = title) + guides(FALSE)
  coregenes <- 0
  cg
}

# Colors from: http://colorbrewer2.org
# Chosen to be colorblind safe, photocopy safe, and printer friendly

plotcp <- function(corefile, panfile, title){
  
  coregenes <- fread(corefile)
  pangenome <- fread(panfile)
  
  cg <- ggplot() + 
    geom_point(data=coregenes, aes(x=V1, y=V2), size=2, shape=20, color = "#2c7fb8") +
    geom_smooth(data=coregenes, aes(x=V1, y=V2), method="auto", se=FALSE, fullrange=FALSE, level=0.99, inherit.aes=FALSE, color = "#7fcdbb") +
    geom_point(data=pangenome, aes(x=V1, y=V2), size=2, shape=20, color = "#31a354") +
    geom_smooth(data=pangenome, aes(x=V1, y=V2), method="auto", se=FALSE, fullrange=FALSE, level=0.99, color = "#addd8e") +
    xlab("Genome Number") +
    ylab("Gene Clusters") +
    theme(plot.title = element_text(hjust = 0.5)) +
    ggtitle(title)
  
  cg
}

all <- plotcp("core-genome.tsv", "pan-genome.tsv", "Core and Pan-Genome Curve")
all
ggsave(file="all-genome.svg", plot=all, width=10, height=8)
ggsave(file="all-genome.pdf", plot=all, width=10, height=8)
ggsave(file="all-genome.png", plot=all, width=10, height=8)
ggsave(file="all-genome.jpeg", plot=all, width=10, height=8, dpi=300)

chr <- plotcp("core-main-genome.tsv", "pan-main-genome.tsv", "Chromosome Core and Pan-Genome Curve")
chr
ggsave(file="chr-genome.svg", plot=chr, width=10, height=8)
ggsave(file="chr-genome.pdf", plot=chr, width=10, height=8)
ggsave(file="chr-genome.png", plot=chr, width=10, height=8)
ggsave(file="chr-genome.jpeg", plot=chr, width=10, height=8, dpi=300)

psyma <- plotcp("core-psyma-genome.tsv", "pan-psyma-genome.tsv", "pSymA Core and Pan-Genome Curve")
psyma
ggsave(file="psyma-genome.svg", plot=psyma, width=10, height=8)
ggsave(file="psyma-genome.pdf", plot=psyma, width=10, height=8)
ggsave(file="psyma-genome.png", plot=psyma, width=10, height=8)
ggsave(file="psyma-genome.jpeg", plot=psyma, width=10, height=8, dpi=300)

psymb <- plotcp("core-psymb-genome.tsv", "pan-psymb-genome.tsv", "pSymB Core and Pan-Genome Curve")
psymb
ggsave(file="psymb-genome.svg", plot=psymb, width=10, height=8)
ggsave(file="psymb-genome.pdf", plot=psymb, width=10, height=8)
ggsave(file="psymb-genome.png", plot=psymb, width=10, height=8)
ggsave(file="psymb-genome.jpeg", plot=psymb, width=10, height=8, dpi=300)

psyma_acc <- plotcp("core-psyma-acc-genome.tsv", "pan-psyma-acc-genome.tsv", "pSymA Core and Pan-Genome Curve")
psyma_acc
ggsave(file="psyma-acc-genome.svg", plot=psyma, width=10, height=8)
ggsave(file="psyma-acc-genome.pdf", plot=psyma, width=10, height=8)
ggsave(file="psyma-acc-genome.png", plot=psyma, width=10, height=8)
ggsave(file="psyma-acc-genome.jpeg", plot=psyma, width=10, height=8, dpi=300)
