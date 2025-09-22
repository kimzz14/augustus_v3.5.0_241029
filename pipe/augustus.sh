augustus \
    --species=wheat \
    --hintsfile=hints.all.gff \
    --extrinsicCfgFile=${AUGUSTUS_CONFIG_PATH}/extrinsic/extrinsic.ME.cfg \
    --softmasking=on \
    --UTR=on \
    --allow_hinted_splicesites=atac \
    --gff3=on \
    ref.softmask.fa \
    1> augustus.hints.gff \
    2> augustus.hints.log
