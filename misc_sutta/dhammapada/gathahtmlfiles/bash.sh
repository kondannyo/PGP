#!/bin/bash
	for i in `seq 1 423`; do
		html2text -utf8 gatha$i.htm > gatha$i.txt	
	done
