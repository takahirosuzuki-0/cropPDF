#!/bin/sh

if [ "$1" == "" ]
then
	echo "./cropPDF.sh all:	crop all pdf files"
	echo "./cropPDF.sh [name]:	crop [name].pdf"
elif [ "$1" == "all" ]
then
	for FILE in *pdf
	do
	    IN=${FILE%.pdf}
	    pdfcrop $IN.pdf
	    rm $IN.pdf
	    mv $IN-crop.pdf $IN.pdf
	done
else
 	IN=$1
	pdfcrop $IN.pdf
	rm $IN.pdf
	mv $IN-crop.pdf $IN.pdf
fi
