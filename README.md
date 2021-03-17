# Analysis of Transcriptional Profile of Mammalian Cardiac Regeneration with mRNA-Seq

The objective of this project is to explore/verify findings from [Transcriptional Profile of Mammalian Cardiac Regeneration with mRNA-Seq](https://pubmed.ncbi.nlm.nih.gov/25477501/). Researchers are trying to uncover the secret of heart regeneration, a function which will be lost during adulthood. 
In this project, We acquired, processed, and analyzed sequencing data generated from different stages of mice reproduce one result in the paper and better understand the diffrence on the gene expressions between the period when neonatal mice are able to regenerate their heart tissue and when they lose this ability later in development.

# Contributors

Data Curator: [Yichi Zhang](https://github.com/MogicianEik)<br />
Programmer: [Varun Raghuraman](https://github.com/vrvarun)<br />
Analyst: [Neha Gupta](https://github.com/neha163)<br />
Biologist: [Rachel Thomas](https://github.com/RaePayne03)<br />

# Repository Contents

## The procedure of data acquisition from the pubic database and most of raw data are not included in this repo.
1. Fastq file QC summary.<br />
2. Qsub scripts of processing sequencing data.<br />
3. Fastq file mapping summary.<br />
4. Quantification of gene expression.<br />
5. Scripts that reproduce the comparison of postnatal day 0 (P0) versus Adult. It filters to find the top up- and down-regulated genes via log2 fold change. <br />
6. A table summarizing the top cluster results from the DAVID analysis from 4. <br />
7. Scripts that compare and visualize key gene expressions among mice samples. <br />
8. A report in details.
