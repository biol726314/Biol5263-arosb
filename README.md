# Welcome to my markdown for Mammiliicoccus research!!

Previous attempts at performing functions were unsuccessful, as terminal was on windows platform and did not have acces to many of the functions required. Performing through OSCER allowed for complete analysis and valid results.

Original data was downloaded from lab devices to local folder. All of the reads are way to long to be used if not already containing dozens to hundreds of reads. So first, all samples must be trimmed. For Short reads, this is easily done using [Trimmomatic] (https://github.com/usadellab/Trimmomatic)

Adaptors generated after downloading Trimmomatic were moved into a singular fasta file. This allowed Trimmomatic to use all adaptors to trim.

Adaptors for Trimmomatic
* [MasterAdaptor.fa](https://github.com/biol726314/MamiliicoccusResearch/blob/main/TrimmomaticAdapters/MasterAdaptor.fa)

Trimmomatic of Short Reads
* [trimmomatic.sbatch](https://github.com/biol726314/MamiliicoccusResearch/blob/main/Scripts/trimmomatic.sbatch)
* [trimmomatic.sh](https://github.com/biol726314/MamiliicoccusResearch/blob/main/Scripts/trimmomatic.sh)



Long read samples are trimmed via [Porechop](https://github.com/rrwick/Porechop). However, trimming Long Reads is difficult with the number of files present. Preceeding the trim, files should have been concatenated using the terminal to reduce the number of jobs submitted. This was unfortunately not thought of until after Porechop had finally finished.

Porechop was performed through third party service [Galaxy](https://usegalaxy.org/root?tool_id=toolshed.g2.bx.psu.edu/repos/iuc/porechop/porechop/0.2.4+galaxy0) using their inbuilt Porechop tool to trim each file within each barcode, using the preset paramaters.

Afterwords, outputs were downloaded localy then concatenated.

Concatenation of Long Reads
* [concatenate.sbatch](https://github.com/biol726314/MamiliicoccusResearch/blob/main/Scripts/concatenate.sbatch)
* [concatenate.sh](https://github.com/biol726314/MamiliicoccusResearch/blob/main/Scripts/concatenate.sh)

With both short and long reads trimmed, the two are finally able to be merged via [Unicycler](https://github.com/rrwick/Unicycler). This was my first time using OSCER, so it took a few tries before I was able to figure out how to merge them in one large file.

Unicycler
* [Unicycler.sbatch](https://github.com/biol726314/MamiliicoccusResearch/blob/main/Scripts/Unicycler.sbatch)
* [Unicycler.sh](https://github.com/biol726314/MamiliicoccusResearch/blob/main/Scripts/Unicycler.sh)

Barcodes that successfully generated assembly.fasta files were kept






Blast Create
* [blast_create.sbatch](https://github.com/biol726314/MamiliicoccusResearch/blob/main/Scripts/blast_create.sbatch)
* [blast_create.sh](https://github.com/biol726314/MamiliicoccusResearch/blob/main/Scripts/blast_create.sh)

Blast bc03 core
* [bc03_core_blast.sbatch](https://github.com/biol726314/MamiliicoccusResearch/blob/main/Scripts/bc03_core_blast.sbatch)
* [bc03_core_blast.sh](https://github.com/biol726314/MamiliicoccusResearch/blob/main/Scripts/bc03_core_blast.sh)