#!/usr/bin/env bash

#general syntax:
#fastqc seqfile1 seqfile2 .. seqfileN

for file in $(find -L ../data -name "*.fastq*"); do
    echo "Running FastQC on $(basename -a $file)"
    fastqc --outdir ../results $file &
done
wait

echo "Finished with FastQC"