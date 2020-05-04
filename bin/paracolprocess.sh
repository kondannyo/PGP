#!/bin/bash

projectname=$1
filepath=~/KONDANNO/texfiles/sutta/$projectname/
commandpath=~/bin/paracol-spliceandcode.py
leftfile=$projectname\_eng.txt
rightfile=$projectname\_pali.txt
outputfile=$projectname\_paracol.tex

python2 $commandpath $filepath$leftfile $filepath$rightfile $filepath$outputfile
cd $filepath
latexmk -gg -f $projectname\_master.tex
if pgrep zathura
then 
	echo "zathura already running"
else 
	zathura --fork $filepath/$projectname\_master.pdf
fi
exit
