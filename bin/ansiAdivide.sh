#!/bin/bash

projectname=$1
filepath=/media/removable/KONDANNO/texfiles/sutta/$projectname/
commandpath=/media/removable/KONDANNO/texfiles/utils/pagedividers/
commandfile=AnsiAPageDividerConditional
inputfile=$projectname\_master.pdf
outputfile=$projectname\_divided.pdf

cp $filepath$inputfile $commandpath/tobedivided.pdf
cd $commandpath
xelatex $commandfile\.tex
cp $commandpath$commandfile\.pdf $filepath$outputfile
cd -
if pgrep zathura
then 
	echo "zathura already running"
else 
	zathura --fork $filepath$outputfile
fi
exit
