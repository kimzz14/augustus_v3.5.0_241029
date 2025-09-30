############################################################################################
chrom=$1
species=wheat
############################################################################################

augustus \
    --species=${species} \
    --hintsfile=hints.all.gff \
    --extrinsicCfgFile=${AUGUSTUS_CONFIG_PATH}/extrinsic/extrinsic.M.RM.E.W.cfg \
    --softmasking=on \
    --UTR=on \
    --allow_hinted_splicesites=atac \
    --gff3=on \
    ref.softmask.split/${chrom}.fa \
    1> augustus.split/augustus.hints.${chrom}.gff \
    2> augustus.split/augustus.hints.${chrom}.log
