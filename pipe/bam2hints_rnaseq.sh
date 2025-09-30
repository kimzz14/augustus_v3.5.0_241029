bam2hints \
    --in=rnaseq.sorted.bam \
    --out=hints.rnaseq.gff \
    --intronsonly \
    --minintronlen=20 \
    --maxintronlen=200000 \
    --priority=4 \
    1> hints.rnaseq.gff.log \
    2> hints.rnaseq.gff.err
