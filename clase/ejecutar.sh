#!/bin/bash
	pdflatex -interaction=nonstopmode -shell-escape Notas_de_clases.tex
	pdflatex -interaction=nonstopmode -shell-escape Notas_de_clases.tex
	evince Notas_de_clases.pdf
    sh limpieza.sh
