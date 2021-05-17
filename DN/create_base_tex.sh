#!/bin/bash

DIR=~/data/PGP/DN
PADDING=0
MAXPAD=2
source=sc_po_text/dn
for (( v=1 ; v < 35 ; v++ ));
do
    if (( v < 10));
    then 
        create_file=dn0${v}.tex
    else
        create_file=dn${v}.tex
    fi
    cat tex_header.tex > $create_file
    echo -e \\input{tex_build/"$create_file"} >> $create_file;
    echo "\end{document}" >> $create_file
    done




