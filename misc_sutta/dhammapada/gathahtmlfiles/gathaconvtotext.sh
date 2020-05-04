#!/bin/bash
	for i in `seq 1 423`; do
		html2text -utf8 gatha$i.htm > textfiles/gatha$i.txt	
	done
