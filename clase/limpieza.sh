#!/bin/bash

rm *.err *.nav *.snm *.out *.vrb *.py *.dvi *.ps *.eps */*.eps *.aux */*.aux *.log *.toc *.mtc* *.synctex.gz *.ptc *.idx *.maf *.bbl *.thm *.dep *.gz *.listing *concordance.tex  *.pyg *.xml *.bcf *.blg&> /dev/null
rm -R _minted-* &> /dev/null
if [ -d ./pdf/ ];

then

echo "Sí, sí existe."

else

mkdir ./pdf

fi

if [ -d ./bak/ ];

then

echo "Sí, sí existe."

else

mkdir ./bak

fi

if [ -d ./image/ ];

then

echo "Sí, sí existe."

else

mkdir ./image

fi

 find . -type f -name "*.pdf" -exec mv -f {} ./pdf \;
 find . -type f -name "*.bak" -exec mv -f {} ./bak \;
 find . -type f -name "*.lyx~" -exec mv -f {} ./bak \;
 find . -type f -name "*.png" -exec mv -f {} ./image \;
 find . -type f -name "*.jpg" -exec mv -f {} ./image \;
 find . -type f -name "*.eps" -exec mv -f {} ./image \;


 
