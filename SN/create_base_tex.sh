#!/bin/bash

DIR=~/data/PGP/SN
PADDING=0
MAXPAD=2
source=sc_po_text/sn
for (( v=1 ; v < 57 ; v++ ));
do
    if (( v < 10));
    then 
        source_dir=${source}0${v}
        create_file=$DIR/sn0${v}.tex
    else
        source_dir=${source}${v}
        create_file=$DIR/sn${v}.tex
    fi
    rm $create_file
    cat tex_header.tex > $create_file
    for f in /home/kondanno/data/PGP/SN/$source_dir/*.po;
        do 
            strip_dir="$(echo "$f" | sed -E 's/\/home\/kondanno\/data\/PGP\/SN\/sc_po_text\/sn..\///')"
            tex_file="$(echo "$strip_dir" | sed -e 's/.po/.tex/')";
            echo -e \\input{tex_build/"$tex_file"} >> $create_file;
        done
    echo "\end{document}" >> $create_file
    done




