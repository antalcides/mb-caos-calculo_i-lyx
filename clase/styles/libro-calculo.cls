%%
%% This is file `libroca.cls',
%% generated with TexMaker program
%% This file is part of the LaTeX2e system.
%% ----------------------------------------------------------------------------
%% 
%% It may be distributed under the terms of the LaTeX Project Public
%% License, as described in lppl.txt in the base LaTeX distribution.
%% Either version 1.0 or, at your option, any later version.
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{libro-calculo}
              [2019/11/5 v1.0
 Standard LaTeX document class
 Antalcides Olivo Burgos
 antalcides@gmail.com]
%\DeclareOption{5m}{\xdef\jtype{5}
%\ExecuteOptions{twocolumn}}
%\def\jtype{0}
%\DeclareOption{2m}{\xdef\jtype{2}}
%\DeclareOption{3m}{\xdef\jtype{3}}
%\DeclareOption{4m}{\xdef\jtype{4}}
%\DeclareOption{1m}{
%  \xdef\jtype{1}
%  \AtBeginDocument{\@twocolumnfalse}
%          }
%\ExecuteOptions{1m,11pt,onecolumn}


\ProcessOptions
\LoadClass{book}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%Paquetes%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{xcolor}% define los colores # lo carga tikz %%%%%%%%%%%%%%%%%%%
\RequirePackage{color}%Para utilizar los colores% tikz lo carga no es necesario.
%%%%%%% The floatrow package provides many ways to customize layouts of floating environments and has code to cooperate with the caption 3.x package
\RequirePackage{floatrow}% colocar al principio para evitar errores
\RequirePackage{graphicx}% Para poder insertar figuras %%%%%%%%%%%%%%%%%%%%%%%%
\graphicspath{{ps/}{logo/}{img/}{sections/figures/}{figures/}{images/}}% carpetas donde el compilador busca las graficas.
\RequirePackage{incgraph} %Sophisticated graphics inclusion in a PDF document
\RequirePackage{tikz}% dibujos compatibles con pdf
%%%%%%%%%%%%% librerias de Tikz %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usetikzlibrary{decorations.pathmorphing}
\usetikzlibrary{shadows}
\usetikzlibrary{calc}
\usetikzlibrary{shadows.blur}
\usetikzlibrary{tikzmark}
\usetikzlibrary{decorations.pathreplacing}
\usetikzlibrary{shapes.misc}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{titletoc}% diseño de TOC, LOF, LOT y tabla de indices en general
\RequirePackage[toctitles,newparttoc,explicit,calcwidth]{titlesec}% diseño de los titulos de secciones
\RequirePackage{minitoc}  %Produce,UN TOC al comienzo de cada %%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%% Programacion %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{ifthen} %The package's basic command is \ifthenelse, which can use a wide array of tests
\RequirePackage{etoolbox}%The package is a toolbox of programming facilities geared primarily towards LaTeX class and package authors. It provides ...
\RequirePackage{calc}%Adds infix expressions to perform arithmetic on the arguments of the LaTeX commands \setcounter, \addtocounter, \setlength, and \addtolength. Since many 
\RequirePackage{fixltx2e)%In earlier releases it was used to distribute bug fixes and improvements to the LATEX kernel #usar antes del 2015.
\RequirePackage[many,most]{tcolorbox} % cajas
%%%%%%%%%%%%%%%%%%%%%%%%%% librerias para Tcolorbox %%%%%%%%%%%%%%%%%%%%%%%%%%%
\tcbuselibrary{breakable}
\tcbuselibrary{minted}
\tcbuselibrary{skins}
\tcbuselibrary{theorems}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%% fuentes tipográficas %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[T1]{fontenc} %  Standard package for selecting font encodings%%
\RequirePackage{lmodern}% Latin modern fonts in outline formats
\RequirePackage{amsfonts} % TeX fonts from the American Mathematical Society
\RequirePackage{mathdots}% Commands to produce dots in math that respect font size. Redefines \ddots
\RequirePackage{marvosym} %Symbol font (marvosym) contains the Euro currency symbol.  The package contains both the original TrueType font and the derived Type 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{mdframed}% cajas
\RequirePackage{framed}% cajas
\RequirePackage{emptypage}%p\'agina en blanco al terminar cap\'itulo
%%%%%%%%%%%%%%%% Simbolos matematicos y theorem. Antiguo AMS %%%%%%%%%%%%%%%%%%
\RequirePackage{latexsym}%The latexsym package provides 11 math symbols that were originally defined in LaTeX2.09 but are no longer defined in the New Font Selection
\RequirePackage{amsmath}%The principal package in the AMS-LaTeX distribution
\RequirePackage{amssymb}% Basic LaTeX support for the symbol fonts
\RequirePackage{amsthm} % Typesetting theorems (AMS style)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{verbatim}%  which provides a command \verbatiminput that takes a file name as argumen. # incluir codigo como texto#
\RequirePackage{fancyvrb}% This package provides very sophisticated facilities for reading and writing verbatim TEX code
%%%%%%% debe colocarse antes de chngcntr para evitar conflictos "bug" %%%%%%%%%
	\let\counterwithout\relax
	\let\counterwithin\relax
\RequirePackage{chngcntr}% Change the resetting of counters. Defines commands \counterwithin (which sets up a counter to be reset when another is incremented) 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{aliascnt}%This package introduces aliases for counters
\RequirePackage{mwe}%load graphix,lipsum,...# para rellenar con graficas %%%%%%
\RequirePackage{caption}%The caption package provides many ways to customise the captions in floating environments
\RequirePackage{fancyhdr}     %Estilo de encabezado y pie de paginas
\RequirePackage{emptypage}%p\'agina en blanco al terminar cap\'itulo
%%%%%%%%%%%%%%%%%%%%%%%%% pstricks y sus librerias %%%%%%%%%%%%%%%%%%%%%%%%%%%% 
\RequirePackage{pstricks-add}
\RequirePackagee{pst-plot}
\RequirePackage{pst-grad}
\RequirePackage{pst-math}
\RequirePackage{pst-node}
\RequirePackage{psboxit}
%\RequirePackage{trees} % quita la raiz
\RequirePackage{ecltree} 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{makeidx}% Para crear el indice de materias %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%% configuracion de tablas %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{booktabs}%The package enhances the quality of tables in LaTeX
\RequirePackage{tabularx}%The tabularx package provides support for tables.
\RequirePackage{array}%An extended implementation of the array and tabular environments which extends the options for column formats, and provides "programmable" format specifications.
\RequirePackage{colortbl}% colorear tablas %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{multicol}  %Une y devide columnasw
\RequirePackage{multirow}%Para jugar con las tablas% Une y divide celas
%%%%%%%%%%%%%%%%%%%%%%% manejo de figuras %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{wrapfig}	%que sirve, como su nombre indica, para rodear las imágenes con texto
\RequirePackage{subfigure}%which provides sup- port for the inclusion of small, 'sub', figures and tables. # se cosidera obsoleto
\RequirePackage[pages=some]{background} % coloca texto y figuras en el fondo %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% configuracion de referencias %%%%%%%%%%%%%%%%%
\RequirePackage{cleveref}%The package enhances LaTeX's cross-referencing features,
\RequirePackage{upref} %The upref package redefines the LaTeX \ref command to ensure the numbers are upright
%%%%%%%%%%%%%%%%%%%%%%%5 configuracion de listas %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{enumerate}%The package adds an optional argument to the enumerate environment which determines the style in which the counter is printed
\RequirePackage{paralist}%Enumerate and itemize within paragraphs
%%%%%%%%%%%%%%%%%%%%% ajuste de texto %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{varwidth}%The varwidth environment is superficially similar to minipage, but the specified width is just a maximum value 
\RequirePackage{parskip}% Simply changing \parskip and \parindent leaves a layout that is untidy
\RequirePackage[document]{ragged2e}%The package defines new commands \Centering, \RaggedLeft, and \RaggedRight and new environments Center,
\RequirePackage{indentfirst}%Indent first paragraph after section header
\RequirePackage{marginnote} % coloca texto y objetos al margen %%%%%%%%%%%%%%%%
%%%%%%%%%%%% orientacion de paginas %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%\RequirePackage{lscape}
%\RequirePackage{pdflscape}
\RequirePackage{geometry}% configura encajonado de las paginas %%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%%%%%%%%%% definiendo fuentes%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\helv@scale{.82}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\DeclareFontFamily{T1}{helvetica}{}%
\DeclareFontShape{T1}{helvetica}{m}{n}{<->s*[\helv@scale]phvr8t}{}%
\DeclareFontShape{T1}{helvetica}{m}{it}{<->s*[\helv@scale]phvro8t}{}%
\DeclareFontShape{T1}{helvetica}{m}{sc}{<->s*[\helv@scale]phvrc8t}{}%
\DeclareFontShape{T1}{helvetica}{b}{n}{<->s*[\helv@scale]phvb8t}{}%
\DeclareFontShape{T1}{helvetica}{b}{it}{<->s*[\helv@scale]phvbo8t}{}%
\DeclareFontShape{T1}{helvetica}{m}{sl}{<->s*[\helv@scale]phvro8t}{}%
\DeclareFontShape{T1}{helvetica}{b}{sc}{<->s*[\helv@scale]phvbc8t}{}%
\DeclareFontShape{T1}{helvetica}{b}{sl}{<->s*[\helv@scale]phvbo8t}{}%
\DeclareFontShape{T1}{helvetica}{bx}{n}{<->s*[\helv@scale]phvb8t}{}%
\DeclareFontShape{T1}{helvetica}{bx}{it}{<->s*[\helv@scale]phvbo8t}{}%
\DeclareFontShape{T1}{helvetica}{bx}{sc}{<->s*[\helv@scale]phvbc8t}{}%
\DeclareFontShape{T1}{helvetica}{bx}{sl}{<->ssub * helvetica/b/it}{}%
\DeclareFontFamily{OT1}{helvetica}{}%
\DeclareFontShape{OT1}{helvetica}{m}{n}{<->s*[\helv@scale]phvr7t}{}%
\DeclareFontShape{OT1}{helvetica}{m}{it}{<->s*[\helv@scale]phvro7t}{}%
\DeclareFontShape{OT1}{helvetica}{m}{sc}{<->s*[\helv@scale]phvrc7t}{}%
\DeclareFontShape{OT1}{helvetica}{b}{n}{<->s*[\helv@scale]phvb7t}{}%
\DeclareFontShape{OT1}{helvetica}{b}{it}{<->s*[\helv@scale]phvbo7t}{}%
\DeclareFontShape{OT1}{helvetica}{m}{sl}{<->s*[\helv@scale]phvro7t}{}%
\DeclareFontShape{OT1}{helvetica}{b}{sc}{<->s*[\helv@scale]phvbc8t}{}%
\DeclareFontShape{OT1}{helvetica}{b}{sl}{<->s*[\helv@scale]phvbo7t}{}%
\DeclareFontShape{OT1}{helvetica}{bx}{n}{<->s*[\helv@scale]phvb7t}{}%
\DeclareFontShape{OT1}{helvetica}{bx}{it}{<->s*[\helv@scale]phvbo7t}{}%
\DeclareFontShape{OT1}{helvetica}{bx}{sc}{<->s*[\helv@scale]phvbc8t}{}%
\DeclareFontShape{OT1}{helvetica}{bx}{sl}{<->s*[\helv@scale]phvbo7t}{}%
%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%% Font Defined %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\@xipt{11}
\def\@xviiipt{18}
\def\@xxivpt{24}
\newcommand\ContributorAffiliationFont{\reset@font\fontsize{10}{12}\raggedright\selectfont}
\newcommand\ContributorNameFont{\reset@font\fontsize{10}{12}\bfseries\raggedright\selectfont}
\newcommand\TitlePageTitleFont{\fontsize{24}{28}\slshape\bfseries\selectfont}
\newcommand\PageNumFont{\reset@font\fontsize{10}{12}\selectfont}
\newcommand\ChapNumFont{\reset@font\fontsize{24}{24}\bfseries\selectfont}
\newcommand\ChapTitleFont{\reset@font\fontsize{18}{20}\slshape\selectfont}
\newcommand\SectionHeadFont{\fontsize{12}{14}\bfseries\selectfont}
\newcommand\SubsectionHeadFont{\fontsize{11}{13}\bfseries\selectfont}
\newcommand\SubsubsectionHeadFont{\fontsize{10}{12}\bfseries\selectfont}
\newcommand\ParagraphHeadFont{\fontsize{10}{12}\itshape\selectfont}
\newcommand\SubParagraphHeadFont{\fontsize{10}{12}\itshape\selectfont}
\newcommand\FMHeadFont{\reset@font\fontsize{18}{20}\slshape\bfseries\selectfont}
\newcommand\RunningHeadFont{\fontsize{10}{12}\itshape\selectfont}
\newcommand\NameFont{\fontsize{10}{12}\itshape\selectfont}
\newcommand\AffiliationFont{\fontsize{8}{10}\selectfont}
\newcommand\FigCapFont{\fontsize{10}{12}\bfseries\selectfont}
\newcommand\FigCapBIFont{\fontsize{10}{12}\bfseries\itshape\selectfont}
\newcommand\TableColHeadFont{\fontsize{10}{12}\bfseries\selectfont}
\newcommand\TableTitleFont{\fontsize{10}{12}\selectfont}
\newcommand\TableNumberFont{\fontsize{11}{13}\bfseries\selectfont}
\newcommand\TableBodyFont{\reset@font\fontsize{9}{11}\selectfont}
\newcommand\TableSubheadFont{\reset@font\fontsize{9}{11}\selectfont}
\newcommand\TableFootnoteFont{\reset@font\fontsize{8}{10}\selectfont}
\newcommand\CAPlusOneFont{\fontsize{10}{12}\bfseries\selectfont}
\newcommand\CAAPlusOneFont{\fontsize{10}{12}\itshape\selectfont}
\newcommand\tocfont{\fontsize{10}{12}\selectfont}
\newcommand\extraFont{\fontsize{24}{28}\selectfont}
\newcommand\fontpart{\fontsize{30}{34}\selectfont}
\newcommand\VfFont{\fontsize{10}{12}\selectfont}
\newcommand\HUGE{\@setfontsize\Huge{38}{47}}
\newcommand\HHUGE{\@setfontsize\HHUGE{58}{67}}
\newcommand\peque{\@setfontsize\peque{8}{9}}
%%%%%%%%%%%%%%%%%%%%%%% clores%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\definecolor{ocre}{RGB}{243,102,25}
\newcommand\BoxColor{ocre!60}
\definecolor{mygreen}{rgb}{0.61,0.73,0.35}
\definecolor{miblue}{RGB}{0,163,243}
\definecolor{captionbgcolor}{RGB}{103,143,150}
\definecolor{paper}{RGB}{239,227,157}
\definecolor{titlebgdark}{RGB}{0,163,243}
\definecolor{titlebglight}{RGB}{191,233,251}
\definecolor{secnum}{RGB}{13,151,225}
\definecolor{ptcbackground}{RGB}{212,237,252}
\definecolor{ptctitle}{RGB}{0,177,235}
\definecolor{myred}{RGB}{0,163,243}
\definecolor{myyellow}{RGB}{0,177,235}
\definecolor{zanahoria}{RGB}{235,59,0}
\definecolor{problemblue}{RGB}{100,134,158}
\definecolor{idiomsgreen}{RGB}{0,162,0}
\definecolor{exercisebgblue}{RGB}{192,232,252}
\definecolor{mygray}{RGB}{215,215,215}
\definecolor{myblue}{RGB}{17,94,140}
\definecolor{gray97}{gray}{.97}
\definecolor{mauve}{rgb}{0.58,0,0.82}
\definecolor{dkgreen}{rgb}{0,0.6,0}
%
%\def\chaptername{ Cap\'{\i}tulo}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Definiciones en espa\~nol %%%%%%%%%%%%%%%
\def\indexname{\'Indice}
\def\contentsname{ CONTENIDO}
\def\listfigurename{Tabla de figuras}
\def\bibname{Bibliograf\'{\i}a}
\def\tablename{Tabla}
\def\proofname{Demostraci\'on}
\def\appendixname{Ap\'endice}
\def\chaptername{ Cap\'{\i}tulo}
\def\figurename{Figura}
%%%%%%%%%%%%%%%%%%%%%%%%%%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\endinput
%% final del archivo `libro-calculo.cls'.
