bash ../pipe/bam2hints_rnaseq.sh &
bash ../pipe/bam2hints_isoseq.sh &
#bash ./pipe/
wait

cat hints.rnaseq.gff hints.isoseq.gff > hints.all.gff
#cat hints.rnaseq.gff hints.isoseq.gff prothint_augustus.gff > hints.all.gff

bash ../pipe/augustus.sh
