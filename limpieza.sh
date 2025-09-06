#!/bin/bash

rm *.err *.nav *.snm *.out *.vrb *.py *.dvi *.ps *.eps */*.eps *.aux */*.aux *.log *.toc *.mtc* *.synctex.gz *.ptc *.idx *.maf *.bbl *.thm *.dep *.gz *.listing *concordance.tex &> /dev/null
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
if [ -d ./img/ ];

then

echo "Sí, sí existe."

else

mkdir ./img

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
 find . -type f -name "*.png" -exec mv -f {} ./img \;
 find . -type f -name "*.jpg" -exec mv -f {} ./img \;
 find . -type f -name "*.svg" -exec mv -f {} ./img \;
 find . -type f -name "*.png" -exec cp -f {} ./image \;
 find . -type f -name "*.jpg" -exec cp -f {} ./image \;
cd pdf 
cp -f conejos.pdf footerscroll.pdf hanoi.pdf headerscroll.pdf logo-ca.pdf suc1.pdf suc2.pdf  ../img
 
