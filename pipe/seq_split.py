fi = open('ref.softmask.fa')
fo_list = open('ref.softmask.list', 'w')
fo = None
for line in fi:
    if line.startswith('>'):
        seqName = line.rstrip('\n').split('\t')[0][1:]

        if fo != None: fo.close()

        fo_list.write(seqName + '\n')

        fo = open(f'ref.softmask.split/{seqName}.fa', 'w')
        fo.write(f'>{seqName}\n')
    else:
        fo.write(line)    
fi.close()
fo.close()
fo_list.close()
