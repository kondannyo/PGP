#!/bin/bash

projectname=$1
filepath=~/KONDANNO/texfiles/sutta/$projectname/
commandpath=~/bin/paliuniqinorder.py
inputfile=$projectname\_pali.txt
outputfile=$projectname\_unique.csv

python3 $commandpath $filepath$inputfile $filepath$outputfile
exit
