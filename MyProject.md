# My Mammiliicoccus Project

## Project Background

The Mammiliicoccus genus is a recently established grouping consisting of five species previously belonging to the Staphylococcus genus.
![Phylogenic tree of a few species from Staphylococcal genus. Species transitioned to Mammiliicoccus genus are sectioned of by blue square.](https://github.com/biol726314/MamiliicoccusResearch/blob/main/Images/MammilicoccusPhylogeneticTree.png)

Previously, non-aureus Staphyloccal and Mammiicoccal species (NASM) were not treated as potential food contaminents as they were assumed to be non-pathogenic and are not considered a spoilage microbe. However, instances of NASM mediated illnesses have been on the rise. Several outbreaks of mastitis, or infection of breast tissue has occured in dairy animals, a severe Exudatvie Epidermitis outbreak occured in a pig population in China, and NASMs have causes instances of endocarditis, peritonitis, septic shock, urinary tract infections, pelvic inflammatory disease, and varying severity of wound infections. Despite this, Mammiliicoccus species are still frequently found in a variety of foods


The evolutionary jump from minor, occasional pathogen to nationwide risk has few barriers, allowing pathogenic traits to become acquired at a rapid pace. We have seen this in the rise of pathogenic "super bugs", such as the Methicillin-resistant *Staphyloccus* aureus (MRSA). *S*. aureus was also previously believed to be non-pathogenic, serving as another species for our skin microbiome. When it was discovered that it actually was able to cause disease, infectetions were treated with relative ease with a basic routine of antibiotics. However, as antibiotics were repeatedly and increasinly prescribed and misused, the remaining *S*. aurues that survived developed protective mechanisms against future exposure to antibioitcs. Now, MRSA is an extremely difficult infection to treat, requiring a specialized and minimalized treatment plan to prevent even more resistances from developing.


Identifying a bacteria's virulence factor allows for potential disease pathways can be identified, food processing treatment plans can be modified to target vulnerabilities, and drugs can be developed to take advantage of cellular mechanisms to ensure the bacteria is killed before resistances can be developed. Due to it's close relation with *S*. aureus, I expect Mammiliicocci bacteria will share several the majority of its virulence factor mechanisms and plasmids with *S*. auerus.  


Oxford Nanopore bacterial sample sequences were trimmed using [Porechop](https://github.com/rrwick/Porechop) via [Galaxy.org](https://usegalaxy.org/root?tool_id=toolshed.g2.bx.psu.edu/repos/iuc/porechop/porechop/0.2.4+galaxy0) then concatenated. Illumina sequences were trimmed using [Trimmomatic](https://github.com/timflutre/trimmomatic). Once both were trimmed, Nanopore and Illumina reads were merged using [Unicycler](https://github.com/rrwick/Unicycler). [Bandage](https://rrwick.github.io/Bandage/) was used to visualze assembly.gfa files, displaying the resulting genome. One contig within size requirements was ran through [NIH BLAST](https://blast.ncbi.nlm.nih.gov/Blast.cgi), and the highest percentage match was used to identify the sample. From the resulting .fastq file, contigs labeled as circular were seperated and ran through their own BLAST search and plasmid matches were identified. Core and plasmid genomes were then uploaded to [CARD](https://card.mcmaster.ca/analyze/rgi) and present resistance genes were identified. The same was done on [VFPB](https://www.mgc.ac.cn/VFs/search_VFs.htm) to identify virulence factors.



## Data Sources

Compressed .fastq files of samples were provided by Anand Karki, Ph.D. who had performed Illumina and Nanopore sequencing on twelve bacterial cultures isolated from mushrooms purchased from a local asian market.


Illumina samples consisted of forward and reverse reads of each sample, labled X_SX_L001_RY.fastq.gz with X representing sample number and Y representing read direction number.


Nanopore samples had one barcode folder for each sample, consisting of dozens to over a hundred compressed and uncompressed reads, labeled FAW98418_pass_barcode0X_e173ad8a_9741874_Y.fastq with the same representative conditions.


Going forward, samples were named as barcodes, resulting in bc 01 through 12.



## Analysis and Results

Adaptors for Trimmomatic
* [MasterAdaptor.fa](https://github.com/biol726314/MamiliicoccusResearch/blob/main/TrimmomaticAdapters/MasterAdaptor.fa)

Trimmomatic of Short Reads
* [trimmomatic.sbatch](https://github.com/biol726314/MamiliicoccusResearch/blob/main/Scripts/trimmomatic.sbatch)
* [trimmomatic.sh](https://github.com/biol726314/MamiliicoccusResearch/blob/main/Scripts/trimmomatic.sh)

Concatenation of Porechop Long Reads
* [concatenate.sbatch](https://github.com/biol726314/MamiliicoccusResearch/blob/main/Scripts/concatenate.sbatch)
* [concatenate.sh](https://github.com/biol726314/MamiliicoccusResearch/blob/main/Scripts/concatenate.sh)

Unicycler
* [Unicycler.sbatch](https://github.com/biol726314/MamiliicoccusResearch/blob/main/Scripts/Unicycler.sbatch)
* [Unicycler.sh](https://github.com/biol726314/MamiliicoccusResearch/blob/main/Scripts/Unicycler.sh)


### CARD Results

bc03 core
![bc03 core](https://github.com/biol726314/MamiliicoccusResearch/blob/main/Images/bc03_core_CARD_genes.png)

bc03 plasmid
![bc03 plasmid](https://github.com/biol726314/MamiliicoccusResearch/blob/main/Images/bc03_plasmid_CARD_genes.png)

bc04 core
![bc04 core](https://github.com/biol726314/MamiliicoccusResearch/blob/main/Images/bc04_core_CARD_genes.png)

bc04 plasmid
![bc04 plasmid](https://github.com/biol726314/MamiliicoccusResearch/blob/main/Images/bc04_plasmid_CARD_genes.png)

bc05 core
![bc05 core](https://github.com/biol726314/MamiliicoccusResearch/blob/main/Images/bc05_core_CARD_genes.png)

bc06 core
![bc06 core](https://github.com/biol726314/MamiliicoccusResearch/blob/main/Images/bc06_core_CARD_genes.png)

bc06 plasmid
![bc06 plasmid](https://github.com/biol726314/MamiliicoccusResearch/blob/main/Images/bc06_plasmid_CARD_genes.png)

bc07 core
![bc07 core](https://github.com/biol726314/MamiliicoccusResearch/blob/main/Images/bc07_core_CARD_genes.png)

bc07 plasmid
![bc07 plasmid](https://github.com/biol726314/MamiliicoccusResearch/blob/main/Images/bc07_plasmid_CARD_genes.png)

bc08 core
![bc08 core](https://github.com/biol726314/MamiliicoccusResearch/blob/main/Images/bc08_core_CARD_genes.png)

bc08 plasmid
![bc08 plasmid](https://github.com/biol726314/MamiliicoccusResearch/blob/main/Images/bc08_plasmid_CARD_genes.png)

bc09 core
![bc09 core](https://github.com/biol726314/MamiliicoccusResearch/blob/main/Images/bc09_core_CARD_genes.png)

bc09 plasmid
![bc09 plasmid](https://github.com/biol726314/MamiliicoccusResearch/blob/main/Images/bc09_plasmid_CARD_genes.png)

bc10 core
![bc010 core](https://github.com/biol726314/MamiliicoccusResearch/blob/main/Images/bc10_core_CARD_genes.png)

bc10 plasmid
![bc10 plasmid](https://github.com/biol726314/MamiliicoccusResearch/blob/main/Images/bc10_plasmid__CARD_genes.png)


VFBD was not used due to lack of location specificity.


Bandage was an interesting tool but only provides a randomized orientation of contigs, and not usable information.



### BLAST Results

Creating this graphics was time consuming and difficult. Plasmid BLASTs were too big to upload onto github, and the results so long taking photos is a poor option. Hopefully, the following hyperlinks are functional, although it is possible the results disappear following a specified period (according to initial BLAST result page it should be around 2 days).

bc03
![bc03 core](https://github.com/biol726314/MamiliicoccusResearch/blob/main/Images/bc03_core_contig11_BLAST.png)
* [bc03 plasmid 9](https://www.ncbi.nlm.nih.gov/projects/msaviewer/?anchor=0&coloring=diff&key=NCID_1_43198702_130.14.18.128_9147_1733798468_450144625_0MetA0__S_NC_PhyloTree&columns=d:120,b:55,x:17,aln,e:55,o:150)
* [bc03 plasmid 12](https://www.ncbi.nlm.nih.gov/projects/msaviewer/?anchor=0&coloring=diff&key=NCID_1_43205955_130.14.18.128_9147_1733798759_3545196981_0MetA0__S_NC_PhyloTree&columns=d:120,b:55,x:17,aln,e:55,o:150)
* [bc03 plasmid 13](https://www.ncbi.nlm.nih.gov/projects/msaviewer/?anchor=0&coloring=diff&key=NCID_1_43276881_130.14.18.128_9147_1733801698_2313271819_0MetA0__S_NC_PhyloTree&columns=d:120,b:55,x:17,aln,e:55,o:150)
* [bc03 plasmid 14](https://www.ncbi.nlm.nih.gov/projects/msaviewer/?anchor=0&coloring=diff&key=NCID_1_43276881_130.14.18.128_9147_1733801698_2313271819_0MetA0__S_NC_PhyloTree&columns=d:120,b:55,x:17,aln,e:55,o:150)
* [bc03 plasmid 15](https://www.ncbi.nlm.nih.gov/projects/msaviewer/?anchor=0&coloring=diff&key=NCID_1_43279731_130.14.18.128_9147_1733801857_53127358_0MetA0__S_NC_PhyloTree&columns=d:120,b:55,x:17,aln,e:55,o:150)
* [bc03 plasmid 17](https://www.ncbi.nlm.nih.gov/projects/msaviewer/?anchor=0&coloring=diff&key=NCID_1_43084558_130.14.22.10_9147_1733801943_1119653663_0MetA0__S_NC_PhyloTree&columns=d:120,b:55,x:17,aln,e:55,o:150)

bc04
![bc04 core](https://github.com/biol726314/MamiliicoccusResearch/blob/main/Images/bc04_core_contig7_BLAST.png)
* [bc04 plasmid ](https://www.ncbi.nlm.nih.gov/projects/msaviewer/?anchor=0&coloring=diff&key=NCID_1_42976860_130.14.22.10_9147_1733797472_138809528_0MetA0__S_NC_PhyloTree&columns=d:120,b:55,x:17,aln,e:55,o:150)
* [bc04 plasmid ](https://www.ncbi.nlm.nih.gov/projects/msaviewer/?anchor=0&coloring=diff&key=NCID_1_43202905_130.14.18.128_9147_1733798637_3255721697_0MetA0__S_NC_PhyloTree&columns=d:120,b:55,x:17,aln,e:55,o:150)
* [bc04 plasmid ](https://www.ncbi.nlm.nih.gov/projects/msaviewer/?anchor=0&coloring=diff&key=NCID_1_43277008_130.14.18.128_9147_1733801704_1388695769_0MetA0__S_NC_PhyloTree&columns=d:120,b:55,x:17,aln,e:55,o:150)
* [bc04 plasmid ](https://www.ncbi.nlm.nih.gov/projects/msaviewer/?anchor=0&coloring=diff&key=NCID_1_43082705_130.14.22.10_9147_1733801838_1765218611_0MetA0__S_NC_PhyloTree&columns=d:120,b:55,x:17,aln,e:55,o:150)
* [bc04 plasmid ](https://www.ncbi.nlm.nih.gov/projects/msaviewer/?key=NCID_1_43280866_130.14.18.128_9147_1733801917_15711323_0MetA0__S_NC_PhyloTree&coloring=cons)

bc05
![bc05 core](https://github.com/biol726314/MamiliicoccusResearch/blob/main/Images/bc05_core_contig12_BLAST.png)

bc06
![bc06 core](https://github.com/biol726314/MamiliicoccusResearch/blob/main/Images/bc06_core_contig4_BLAST.png)
* [bc06 plasmid](https://www.ncbi.nlm.nih.gov/projects/msaviewer/?anchor=0&coloring=diff&key=NCID_1_43172868_130.14.18.128_9147_1733797474_402812267_0MetA0__S_NC_PhyloTree&columns=d:120,b:55,x:17,aln,e:55,o:150)
* [bc06 plasmid](https://www.ncbi.nlm.nih.gov/projects/msaviewer/?anchor=0&coloring=diff&key=NCID_1_43203095_130.14.18.128_9147_1733798644_3374554444_0MetA0__S_NC_PhyloTree&columns=d:120,b:55,x:17,aln,e:55,o:150)
* [bc06 plasmid](https://www.ncbi.nlm.nih.gov/projects/msaviewer/?anchor=0&coloring=diff&key=NCID_1_43080403_130.14.22.10_9147_1733801713_692381217_0MetA0__S_NC_PhyloTree&columns=d:120,b:55,x:17,aln,e:55,o:150)

bc07
![bc07 core](https://github.com/biol726314/MamiliicoccusResearch/blob/main/Images/bc07_core_contig8_BLAST.png)
* [bc07 plasmid](https://www.ncbi.nlm.nih.gov/projects/msaviewer/?anchor=0&coloring=diff&key=NCID_1_42976941_130.14.22.10_9147_1733797476_2734418136_0MetA0__S_NC_PhyloTree&columns=d:120,b:55,x:17,aln,e:55,o:150)
* [bc07 plasmid](https://www.ncbi.nlm.nih.gov/projects/msaviewer/?anchor=1053&coloring=diff&key=2mVMtLpnbUZBSVtBalhlTzYyNDM8MRA7GCMWCYMGv8og_NSvUnJjYvQh5ViwROlc-3Ssde9r_3rlYPV_w1L6UNpg_A,VunAODbr4crNxdfN5tTpw7q-uL-wvZy3lK-ahQ-KM0ascPEMQ1VyLP7Tm6rOtpeuhYbSh5GZgYibkouNvaCEoqSSgg&columns=d:120,b:55,x:17,aln,e:55,o:150)
* [bc07 plasmid](https://www.ncbi.nlm.nih.gov/projects/msaviewer/?anchor=0&coloring=diff&key=NCID_1_43080561_130.14.22.10_9147_1733801720_24476864_0MetA0__S_NC_PhyloTree&columns=d:120,b:55,x:17,aln,e:55,o:150)

bc08
![bc08 core](https://github.com/biol726314/MamiliicoccusResearch/blob/main/Images/bc08_core_contig6_BLAST.png)
* [bc08 plasmid](https://www.ncbi.nlm.nih.gov/projects/msaviewer/?anchor=0&coloring=diff&key=NCID_1_42976987_130.14.22.10_9147_1733797478_136099146_0MetA0__S_NC_PhyloTree&columns=d:120,b:55,x:17,aln,e:55,o:150)
* [bc08 plasmid](https://www.ncbi.nlm.nih.gov/projects/msaviewer/?anchor=0&coloring=diff&key=NCID_1_43203363_130.14.18.128_9147_1733798655_3232299483_0MetA0__S_NC_PhyloTree&columns=d:120,b:55,x:17,aln,e:55,o:150)
* [bc08 plasmid](https://www.ncbi.nlm.nih.gov/projects/msaviewer/?anchor=0&coloring=diff&key=NCID_1_43080651_130.14.22.10_9147_1733801726_3762634349_0MetA0__S_NC_PhyloTree&columns=d:120,b:55,x:17,aln,e:55,o:150)
* [bc08 plasmid](https://www.ncbi.nlm.nih.gov/projects/msaviewer/?anchor=0&coloring=diff&key=NCID_1_43082920_130.14.22.10_9147_1733801851_950346400_0MetA0__S_NC_PhyloTree&columns=d:120,b:55,x:17,aln,e:55,o:150)

bc09
![bc09 core](https://github.com/biol726314/MamiliicoccusResearch/blob/main/Images/bc09_core_contig7_BLAST.png)
* [bc09 plasmid](https://www.ncbi.nlm.nih.gov/projects/msaviewer/?anchor=0&coloring=diff&key=NCID_1_43172976_130.14.18.128_9147_1733797481_847912290_0MetA0__S_NC_PhyloTree&columns=d:120,b:55,x:17,aln,e:55,o:150)
* [bc09 plasmid](https://www.ncbi.nlm.nih.gov/projects/msaviewer/?anchor=0&coloring=diff&key=NCID_1_43006579_130.14.22.10_9147_1733798661_1381015368_0MetA0__S_NC_PhyloTree&columns=d:120,b:55,x:17,aln,e:55,o:150)
* [bc09 plasmid](https://www.ncbi.nlm.nih.gov/projects/msaviewer/?anchor=0&coloring=diff&key=NCID_1_43277610_130.14.18.128_9147_1733801735_332154906_0MetA0__S_NC_PhyloTree&columns=d:120,b:55,x:17,aln,e:55,o:150)
* [bc09 plasmid](https://www.ncbi.nlm.nih.gov/projects/msaviewer/?anchor=0&coloring=diff&key=NCID_1_43279731_130.14.18.128_9147_1733801857_53127358_0MetA0__S_NC_PhyloTree&columns=d:120,b:55,x:17,aln,e:55,o:150)

bc10
![bc10 core](https://github.com/biol726314/MamiliicoccusResearch/blob/main/Images/bc10_core_contig3_BLAST.png)
* [bc10 plasmid](https://www.ncbi.nlm.nih.gov/projects/msaviewer/?anchor=0&coloring=diff&key=NCID_1_42977059_130.14.22.10_9147_1733797483_962597726_0MetA0__S_NC_PhyloTree&columns=d:120,b:55,x:17,aln,e:55,o:150)
* [bc10 plasmid](https://www.ncbi.nlm.nih.gov/projects/msaviewer/?anchor=0&coloring=diff&key=NCID_1_43203651_130.14.18.128_9147_1733798667_2477124222_0MetA0__S_NC_PhyloTree&columns=d:120,b:55,x:17,aln,e:55,o:150)


## Conclusions

The species identified in successfully assembled samples were *M*. vitulinus, *S*. xylosus, *M*. sp. or *M*. sciuri, *S*. pasteuri, *S*. warneri, and *S*. haemolyticus. Each sample was found to have multiple resistances to different antibiotics and disinfectants. 


Disinfectant agents and antiseptecs had the greatest number of instances of resistance. Antibiotic resistances, from most to least present, were fluoroquinolone, glycopeptide, tied for third was penam and streptogramin, aminocoumarin, and tied for fifth was aminoglycoside, tetracycline, macrolide, streptograin B, lincosamide, streptogramin A, pleuromutilin, and phosphonic acid.


For future work, virulence factors, plasmid hits, and resistance genes need to be compiled in a compact, readable table for both for reporting and comprehension purposes. Additionally, the orginal suggestion for this study was to create a complete genome for each sample. Currently, samples exist in a series of contigs, and while analysis is still possible in this format, producing a singular, circular genome would be, for me, impressive. At the very least, samples should eventually have known genes flagged. This will probably be best done with CLC Genomics.


Working on this project was an enjoyable experience. When I first began over the summer, I had been struggling to even trim my samples. While I have coded before, my only bioinformatic experience had been through creating R scripts. Python was a new language for me, and any success was only after the result of several days worth of trial and error. With the tools introduced in this course, the assembly process has become simplified. Now, I feel confident I could perform this study again and even try new programs with much success. I look forward to using OSCER in the future and in my research. Thank you so much for allowing me to take this course, it was genuinely my favorite part of the semester. Now that I have finally graduated, I plan on finishing my research and writing my own research paper on the subject. Actually being able to see the experimental process of graduate students helped me to understand the way that research is performed and written. Before, I had no clue where to start when writing such a thing. I remember begging my graduate student during my sophomore research project to help me at least create an outline, whereas now I will be able to complete a majority of the paper without assistance. I additionally have a new point of interest to discuss during medical school interviews, and I hope to use that to my advantage in finding a school that is known for their bioinformatics research. I plan to continue this type of research once I've become a doctor as well, running my own genomic research on the side.
