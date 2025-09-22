bam2hints \
    --in=isoseq.sorted.bam \
    --out=hints.isoseq.gff \
    --minintronlen=20 \
    --maxintronlen=200000 \
    --priority=6 \
    1> hints.isoseq.gff.log \
    2> hints.isoseq.gff.err
