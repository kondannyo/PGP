#!/bin/bash

projectname=$1
filepath=~/KONDANNO/texfiles/sutta/$projectname/
commandpath=~/bin/simplepalidict.py
inputfile=$projectname\_unique.csv
outputfile=$projectname\_glossary.csv

python3 $commandpath $filepath$inputfile $filepath$outputfile
exit
