python ../pipe/seq_split.py

bash ../pipe/bam2hints_rnaseq.sh &
bash ../pipe/bam2hints_isoseq.sh &
wait

cat hints.rnaseq.gff hints.isoseq.gff > hints.all.gff
cat hints.rnaseq.gff hints.isoseq.gff prothint_augustus.gff > hints.all.gff

while read -r line; do
    chrom=$(echo "$line" | awk '{print $1}')
    #echo $chrom
    bash ../pipe/augustus.sh ${chrom} &
done < "ref.softmask.list"
wait

while read -r line; do
    chrom=$(echo "$line" | awk '{print $1}')
    #echo $chrom
    agat_sp_manage_IDs.pl --gff augustus.split/augustus.hints.${chrom}.gff  --prefix ${chrom}. -o augustus.split.agat/augustus.hints.${chrom}.gff 1> augustus.split.agat/augustus.hints.${chrom}.gff.log 2> augustus.split.agat/augustus.hints.${chrom}.gff.err
done < "ref.softmask.list"
wait

rm augustus.split.agat.gff
while read -r line; do
    chrom=$(echo "$line" | awk '{print $1}')
    #echo $chrom

    grep -v '#' augustus.split.agat/augustus.hints.${chrom}.gff >> augustus.split.agat.gff
done < "ref.softmask.list"
wait

