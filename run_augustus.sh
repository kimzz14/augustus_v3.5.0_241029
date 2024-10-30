augustus --species=zebrafish --UTR=off ref.fa --gff3=on 1> augustus.gff3 2> run_augustus.log

###############################################################################################################################
#--UTR=on/off
#  predict the untranslated regions in addition to the coding sequence. This currently works only for a subset of species.
#
#--gff3=on/off
#  output in gff3 format
###############################################################################################################################