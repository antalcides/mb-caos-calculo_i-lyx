all:
	latex -interaction=nonstopmode -shell-escape Notas_de_clases.tex
	latex -interaction=nonstopmode -shell-escape Notas_de_clases.tex
	dvips -o Notas_de_clases.ps Notas_de_clases.dvi 
	ps2pdf Notas_de_clases.ps 
	evince Notas_de_clases.pdf


clean:
	rm -f *.out
	rm -f *.nav
	rm -f *.log
	rm -f *.aux
	rm -f *.toc
	rm -f *.snm
	rm -f *.blg
	rm -f *.bbl
	rm -f *.bcf
	rm -f *.xml
	rm -f *.err
	rm -f *.vrb
	rm -f *.py
	rm -f *.mtc*
	rm -f *.synctex.gz
	rm -f *.ptc
	rm -f *.idx
	rm -f *.maf
	rm -f *.pyg

