		%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% msc-matua.cls
%%% 
%%%
%%% By Antalcides Olivo (antalcides@gmail.com)
%%% Version of February 2014
%%%
%%% This template is based on templates universities
%%%     of Pernambuco and Polit\'enica de Catalunya
%%%
%%% BUGS and SUGGETSIONS: please send email to "antalcides@gmail.com"
%%%     or sumit a ticket in the the project web page at
%%%     http:www.matua.com.co/
%%%
%%% CONTRIBUTERS are welcome. Please contact "antalcides@gmail.com"
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{msc-matua}[2014/02/03]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% OPTIONS 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% == Languages ===
\DeclareOption{es}{%
  \let\@language=0%
  \PassOptionsToPackage{spanish,english}{babel}}

\DeclareOption{en}{%
  \let\@language=1%
  \PassOptionsToPackage{spanish,english}{babel}}

% == Printing ===
\DeclareOption{oneside}{%
  \PassOptionsToClass{oneside}{book}}

\DeclareOption{twoside}{%
  \PassOptionsToClass{twoside}{book}}

% == Paper type/format (dfault letter) ===
\PassOptionsToClass{letter}{book} % Default paper format

\DeclareOption{a4}{%
	\PassOptionsToClass{a4paper}{book}}

\DeclareOption{a4paper}{%
	\PassOptionsToClass{a4paper}{book}}

\DeclareOption{letter}{%
	\PassOptionsToClass{letterpaper}{book}}

\DeclareOption{letterpaper}{%
	\PassOptionsToClass{letterpaper}{book}}


% == Font Size ===
\PassOptionsToClass{11pt}{book} % Default point size

\DeclareOption{11pt}{%
	\PassOptionsToClass{11pt}{book}}

\DeclareOption{12pt}{%
	\PassOptionsToClass{12pt}{book}}


% == Text Encoding ===
\let\@utf=1
\DeclareOption{latin1}{\let\@utf=0}
\DeclareOption{utf8}{\let\@utf=1}
\DeclareOption{utf8x}{\let\@utf=2}

% == Type of Document ===
% \@degreetype=0	BSc report
% \@degreetype=1	MSc preliminary report
% \@degreetype=2	MSc dissertation
% \@degreetype=3	PhD proposal
% \@degreetype=4	PhD preliminary report
% \@degreetype=5	PhD thesis
\let\@degreetype=9
\DeclareOption{bsc}{
	\let\@degreetype=0
	\def\@degree{\@bachelordegree}
	\def\@dissertationtype{\@bscdissertationtstr}
}
\DeclareOption{prepmsc}{
	\let\@degreetype=1
	\def\@degree{\@mastersdegree}
	\def\@dissertationtype{\@prepmscdissertationtstr}
}
\DeclareOption{msc}{
	\let\@degreetype=2
	\def\@degree{\@mastersdegree}
	\def\@dissertationtype{\@mscdissertationtstr}
}
\DeclareOption{propphd}{
	\let\@degreetype=3
	\def\@degree{\@pdhdegree}
	\def\@dissertationtype{\@propphhdissertationtstr}
}
\DeclareOption{prepphd}{
	\let\@degreetype=4
	\def\@degree{\@pdhdegree}
	\def\@dissertationtype{\@prepphhdissertationtstr}
}
\DeclareOption{phd}{
	\let\@degreetype=5
	\def\@degree{\@pdhdegree}
	\def\@dissertationtype{\@phhdissertationtstr}
}

% == bibbychapter ===
%\let\@bibbychapter=0
%\DeclareOption{bibbychapter}{
%	\let\@bibbychapter=1	
%}


% == Default Options ===
\ExecuteOptions{11pt,msc}
\ProcessOptions

\LoadClass{book}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% PACKAGES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Latin1
\if\@utf0
\RequirePackage[latin1]{inputenc}
% UTF8
\else\if\@utf1
\RequirePackage[utf8]{inputenc}
\fi\fi



\RequirePackage[T1]{fontenc}
\RequirePackage{amsmath,amsfonts,amssymb,amsthm}

%\RequirePackage{csquotes}
\RequirePackage{babel}

\RequirePackage[toc]{appendix}

 \RequirePackage{tabularx}

\RequirePackage{ifthen}

\RequirePackage{titlesec}           % To format the headings
\RequirePackage{fancyhdr}           % Headings configuration

% Set inter-line spacing
\RequirePackage{setspace}           % One-and-half spacing
\onehalfspacing

%\RequirePackage{mathptmx}
\RequirePackage[scaled]{helvet}
\RequirePackage{courier}
\RequirePackage{palatino}
\RequirePackage{color}
%\RequirePackage[,dvipsnames]{xcolor}
\usepackage{ifpdf}		% This is now the recommended way for checking for PDFLaTeX:
\ifpdf
\RequirePackage[pdftex]{graphicx}
\DeclareGraphicsExtensions{.pdf, .png, .jpg, .tif}
\RequirePackage[pdftex,svgnames,x11names,x11names,HTML,usenames]{xcolor}
\definecolor{ptcbackground}{RGB}{212,237,252}
%\definecolor{ptctitle}{RGB}{0,177,235}
\definecolor{ptctitle}{cmyk}{1,0.25,0,0.08}
\definecolor{mydarkblue}{rgb}{0.0,0.08,0.45}
\RequirePackage[pdftex,breaklinks,colorlinks,pdfdisplaydoctitle,citecolor=mydarkblue,linkcolor=mydarkblue,urlcolor=mydarkblue]{hyperref}
\else
\RequirePackage{graphicx}
\DeclareGraphicsExtensions{.eps}
\RequirePackage[dvips,vgnames,x11names,x11names,HTML,usenames]{xcolor}
\definecolor{mydarkblue}{rgb}{0.0,0.08,0.45}
\RequirePackage[breaklinks,colorlinks,pdfdisplaydoctitle,citecolor=mydarkblue,
linkcolor=mydarkblue,urlcolor=mydarkblue]{hyperref}
\fi

% \definecolor{myblue}{rgb}{0.39,0.69,1}
% \definecolor{myyellow}{rgb}{0.95,0.93,0.78}

\RequirePackage{geometry} %[top=3cm,bottom=3cm,inner=3.5cm,outer=2.5cm]
% \setlength{\marginparwidth}{2cm}


% AAdd an image to the backgroung
\RequirePackage{eso-pic}
\newcommand{\BackgroundPic}[1]{
\put(0,0){
\parbox[b][\paperheight]{\paperwidth}{%
\vfill
\centering
\includegraphics[width=\paperwidth,height=\paperheight,
keepaspectratio]{#1}%
\vfill
}}}


\RequirePackage{ctable}%caption en las tablas

%\RequirePackage[%
%	sorting=nyt,%
%	style=alphabetic,%
%% labelyear=false,%
%	defernumbers=true,%
%	maxnames=20,%
%	firstinits=true,%
%	uniquename=init,%
%% dashed=false,%
%% sortcites=true,
%	]{biblatex}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% GENERAL PURPOSE MACROS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% \let\origcleardoublepage=\cleardoublepage
% \def\cleardoublepage{%
%   \newpage{\pagestyle{empty}\origcleardoublepage}
% }

%%
% For use with the pseudocode package
% \def\@lopcchapterspace{\relax}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% LABELS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Some relevant strings

\gdef\@singlemadviserstr{Orientador}
\gdef\@singlefadviserstr{Orientadora}
\gdef\@manymadviserstr{Orientadores}
\gdef\@manyfadviserstr{Orientadoras}
\gdef\@singlemcoadviserstr{Co-orientador}
\gdef\@singlefcoadviserstr{Co-orientadora}
\gdef\@manymcoadviserstr{Co-orientadores}
\gdef\@manyfcoadviserstr{Co-orientadoras}

\gdef\@mbachelordegreestr{Licenciado}
\gdef\@fbachelordegreestr{Licenciada}
\gdef\@mmastersdegreestr{Master}
\gdef\@fmastersdegreestr{Mestro}
\gdef\@mphddegreestr{Doctor}
\gdef\@fphddegreestr{Doctora}

% \gdef\doutor{Dr.\ }
% \gdef\doutora{Drª.\ }
% \gdef\profdoutor{Prof.\ Dr.\ }
% \gdef\profdoutora{Profª.\ Drª.\ }

\gdef\@bachelordissertationstr{Trabajo de Grado}
\gdef\@mastersdissertationstr{Tesis de Maestr\'ia}
\gdef\@mastersqualifyingstr{Tesis de Especializaci\'on}
\gdef\@phdqualifyingstr{Preparaci\'on de Tesis}
\gdef\@phdproposalstr{Propuesta de Tesis }
\gdef\@phdthesisstr{Tesis de Doctorado}

\gdef\@jurystr{Jurado}

\gdef\@bscdissertationtstr{Relatorio para la obtenci\'on de Grado 
de\@degree em\\\@majorfield}
\gdef\@prepmscdissertationtstr{Relatorio intermedio para la obtenci\'on de Grado 
de\@degree em\\\@majorfield}
\gdef\@mscdissertationtstr{Disertaci\'on para obtenci\'on de Grado 
de\@degree em\\\@majorfield}
\gdef\@propphhdissertationtstr{Propuesta de tesis para la obtenci\'on de Grado 
de \@degree em\\\@majorfield}
\gdef\@prepphhdissertationtstr{Relatorio intermedio para obtenci\'on de Grado de\@degree em\\\@majorfield}
\gdef\@phhdissertationtstr{Disertação para obtenci\'on de Grado 
de\@degree em\\\@majorfield}

\gdef\@presentationtext{\@dissertationtype}

\gdef\thecopyrightstr{%
\noindent
Copyright \copyright\ \@author, \@faculty, \@university

\bigskip
\noindent
La \@facultad \ y \@universitaria \ tienen los  derechos perpetuos y sin límites geográficos de archivar y publicar esta tesis a través de copias impresas reproducidas en papel o en formato digital o por cualquier otro medio conocido o por inventar y a través de la promoción de los repositorios científicos y de  admitir su copia y distribuici\'on con fines educativos o de investigación, no comercial, siempre y cuando se dé crédito al autor y el editor.}

%% Language dependent

\gdef\@abstrnamePT{Resumen}
\gdef\@abstrnameEN{Abstract}

\gdef\@keywordsnamePT{Palavras-claves}
\gdef\@keywordsnameEN{Keywords}


%% Language Dependent

% Espa\~nol
\if\@language0
  \gdef\@notdefined{NO DEFINIDO}
  \gdef\acknowledgementsname{Agradecimentos}
  \def\lstlistlistingname{Listagens}
% English
\else\if\@language1
  \gdef\@notdefined{UNDEFINED}
  \gdef\acknowledgementsname{Acknowledgements}
\fi\fi


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% IDENTIFICATION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newlength{\thesisWidth}
\setlength{\thesisWidth}{200mm}
\newlength{\thesisHeight}
\setlength{\thesisHeight}{240mm}

%%%%%%%%%%%%%%%%%%%%
%%% Paper layout  Tama\~no de hoja y margenes %%%
%%%%%%%%%%%%%%%%%%%%
\RequirePackage{emptypage}%pagina en blanco al final de capitulo
%\usepackage{geometry}
           % A4 size (first submission)
\newcommand{\setpagelayout}{%
  \geometry{paperwidth=\thesisWidth,%
            paperheight=\thesisHeight,%
            truedimen,twoside,%   a4paper,
            pdftex,includemp=false,marginparwidth=0cm,% reversemarginpar,
            hmargin={2cm,1cm},%   hmargin={3cm,2cm},%
            vmargin={2cm,1.75cm}% vmargin={2.5cm,3cm}%
  }%geometry
}%setpagelayout
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%% incluir p\'aginas de pdf 
\RequirePackage{pdfpages}

\includepdfset{frame=false,pagecommand={\thispagestyle{fancyplain}}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  
%%%%%%%%%%%% fuentes extendidas
%\usepackage[T1]{fontenc} % setting extended font encoding (accents and so on)
\RequirePackage{textcomp} % including some extra symbols, such as the Euro one
\RequirePackage{pifont}   % accessing to Symbol and Zapf Dingbats fonts

\RequirePackage{charter} % roman family and formulas are set to BitStream-Charter
\RequirePackage{helvet}  % sans-serif family set to Helvetica
\RequirePackage{euler}   % math font
\RequirePackage{courier}  % typewriter family set to Courier
%%%%%%%%%%%% estilos de letras %%%%%%%%%%%%%%%%%%%%
\newcommand{\avantgarsmall}{\sffamily\mdseries\small}
\newcommand{\avantgar}{\sffamily}
\newcommand{\avantgarlarge}{\sffamily\mdseries\large}
\newcommand{\avantgarLarge}{\sffamily\mdseries\Large}
\newcommand{\avantgarhuge}{\sffamily\mdseries\huge}
\newcommand{\avantgarHuge}{\sffamily\mdseries\Huge}
\newcommand{\avantgarboldsmall}{\sffamily\bfseries\small}
\newcommand{\avantgarbold}{\sffamily\bfseries\normalsize}
\newcommand{\avantgarboldlarge}{\sffamily\bfseries\large}
\newcommand{\avantgarboldLarge}{\sffamily\bfseries\Large}
\newcommand{\avantgarboldhuge}{\sffamily\bfseries\huge}
\newcommand{\avantgarboldHuge}{\sffamily\bfseries\Huge}
\newcommand{\avantgaritalicsmall}{\sffamily\bfseries\small}
\newcommand{\avantgaritalic}{\sffamily\bfseries\normalsize}
\newcommand{\avantgaritalicbold}{\sffamily\bfseries\normalsize}
\newcommand{\avantgaritaliclarge}{\sffamily\bfseries\large}
\newcommand{\avantgaritaliclargebold}{\sffamily\bfseries\large}
\newcommand{\avantgaritalicLarge}{\sffamily\bfseries\Large}
\newcommand{\avantgaritalichuge}{\sffamily\bfseries\huge}
\newcommand{\avantgaritalicHuge}{\sffamily\bfseries\Huge}
%%%%%%%%%%%%%% referencias %%%%%%%%%%%%%%%%%
%\RequirePackage{chapterbib}
%\RequirePackage[round,colon,authoryear,sectionbib]{natbib}
    % Natural Sciences Citations: author-year and numerical citations
    %
    % Some Package Options:
    %
    %  round -> round parentheses () (default option)
    % square -> square parentheses []
    %  curly -> curly braces {}
    %  angle -> for angle brackets <>
    %
    %  colon -> to separate multiple citations with colons (default)
    %  comma -> use commas as separaters
    %
    % authoryear -> author-year citations (default)
    %    numbers -> numerical citations
    %      super -> for subscripted numerical citations, as in Nature


%\renewcommand{\bibfont}{\small} % To get less bibliography pages
                              % when having lots of references


%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand\@pnumwidth{1.9em}
% encabezados de cap\'itulo %%%%%%%%%%%%%%%%%%%%
\RequirePackage[Lenny]{fncychap}
\renewcommand{\ChNameVar}{\fontsize{14}{16}\usefont{OT1}{phv}{m}{n}\selectfont}
\renewcommand{\ChNumVar}{\fontsize{60}{62}\usefont{OT1}{ptm}{m}{n}\selectfont}
\ChTitleVar{\fontsize{20}{16}\sffamily}

\def\@makechapterhead#1{%
\color{ptctitle}
  \vspace*{50\p@}%
  {\parindent \z@ \raggedright \normalfont
    \ifnum \c@secnumdepth >\m@ne
      \if@mainmatter%%%%% Fix for frontmatter, mainmatter, and backmatter 040920
        \DOCH
      \fi
    \fi
    \interlinepenalty\@M
    \DOTI{#1}
  }
\color{black}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% redefinir el formato del numero de seccion
\renewcommand\@seccntformat[1]{
\fontsize{18}{16}\sffamily
%\fbox{
\csname the#1\endcsname
%fbox}
\hspace{0.5em}}

% redefinir el formato del titulo de una seccion
\let\LaTeX@startsection\@startsection
\renewcommand{\@startsection}[6]{\LaTeX@startsection%
{#1}{#2}{#3}{#4}{#5}{\raggedright #6}}

%seccion generica
\renewcommand\section{\@startsection{section}{1}%
{0pt}{-\baselineskip}{\baselineskip}%
{\raggedright
\medskip\fontsize{18}{16}\sffamily}}

% bloque red
\newcommand\sectionred{\@startsection{section}{1}%
{0pt}{-\baselineskip}{\baselineskip}%
{\color{ptctitle}\raggedright
\textcolor{ptctitle}{\rule{3mm}{0.75cm}}\textcolor{brown}{\rule{3mm}{0.75cm}}
\medskip\fontsize{18}{16}\sffamily}}

% bloque skyblue
\newcommand\sectionblue{\@startsection{section}{1}%
{0pt}{-\baselineskip}{\baselineskip}%
{\color{ptctitle}\raggedright
\textcolor{ptctitle}{\rule{3mm}{0.75cm}}\textcolor{verylightskyblue}{\rule{3mm}{0.75cm}}
\medskip\fontsize{18}{16}\sffamily}}

% bloque naranja
\newcommand\sectionorange{\@startsection{section}{1}%
{0pt}{-\baselineskip}{\baselineskip}%
{\color{ptctitle}\raggedright
\textcolor{ptctitle}{\rule{3mm}{0.75cm}}\textcolor{lightorange}{\rule{3mm}{0.75cm}}
\medskip\fontsize{18}{16}\sffamily}}

% bloque verde
\newcommand\sectiongreen{\@startsection{section}{1}%
{0pt}{-\baselineskip}{\baselineskip}%
{\color{ptctitle}\raggedright
\textcolor{ptctitle}{\rule{3mm}{0.75cm}}\textcolor{limegreen}{\rule{3mm}{0.75cm}}
\medskip\fontsize{18}{16}\sffamily}}

%subseccion
\renewcommand\subsection{\@startsection{subsection}{1}%
{0pt}{-\baselineskip}{\baselineskip}%
{\raggedright
\medskip\fontsize{14}{16}\sffamily}}

\newcommand\subsectionblue[1]{\subsection*{\textcolor{blue}{#1}}}

%subsubseccion
\renewcommand\subsubsection{\@startsection{subsubsection}{1}%
{0pt}{-\baselineskip}{\baselineskip}%
{\raggedright
\medskip\fontsize{12}{16}\sffamily}}

\newcommand\subsubsectionblue[1]{\subsubsection*{\textcolor{blue}{#1}}}

% PART FORMAT Formato de las  secciones partes
\newcommand\partred{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \thispagestyle{empty}%
  \if@twocolumn
    \onecolumn
    \@tempswatrue
  \else
    \@tempswafalse
  \fi
  \null\vfil
  %\textcolor{blue}{\rule{10mm}{0.75cm}}
  \textcolor{brown}{\rule{20mm}{0.75cm}}
  \secdef\@part\@spart}

\newcommand\partblue{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \thispagestyle{empty}%
  \if@twocolumn
    \onecolumn
    \@tempswatrue
  \else
    \@tempswafalse
  \fi
  \null\vfil
  %\textcolor{blue}{\rule{10mm}{0.75cm}}
  \textcolor{verylightskyblue}{\rule{20mm}{0.75cm}}
  \secdef\@part\@spart}

\newcommand\partorange{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \thispagestyle{empty}%
  \if@twocolumn
    \onecolumn
    \@tempswatrue
  \else
    \@tempswafalse
  \fi
  \null\vfil
  %\textcolor{blue}{\rule{10mm}{0.75cm}}
  \textcolor{lightorange}{\rule{20mm}{0.75cm}}
  \secdef\@part\@spart}

\newcommand\partgreen{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \thispagestyle{empty}%
  \if@twocolumn
    \onecolumn
    \@tempswatrue
  \else
    \@tempswafalse
  \fi
  \null\vfil
  %\textcolor{blue}{\rule{10mm}{0.75cm}}
  \textcolor{limegreen}{\rule{20mm}{0.75cm}}
  \secdef\@part\@spart}

\def\@part[#1]#2{%
    \ifnum \c@secnumdepth >-2\relax
      \refstepcounter{part}%
      \addcontentsline{toc}{part}{\thepart\hspace{1em}#1}%
    \else
      \addcontentsline{toc}{part}{#1}%
    \fi
    \markboth{}{}%
    {\centering
     \interlinepenalty \@M
     \normalfont
     \ifnum \c@secnumdepth >-2\relax
       \fontsize{30}{16}\sffamily
       %\huge
       {\bfseries \textcolor{blue}{\MakeUppercase{\partname~\thepart}}}
       \par
       \vskip 20\p@
     \fi
     %\Huge %\bfseries
     \textcolor{blue}{#2}\par}%
    \@endpart}
\def\@spart#1{%
    {\centering
     \interlinepenalty \@M
     %\normalfont
     %\Huge %\bfseries
     #1\par}%
    \@endpart}
\def\@endpart{\vfil\newpage
              \if@twoside
                \null
                \thispagestyle{empty}%
                \newpage
              \fi
              \if@tempswa
                \twocolumn
              \fi}

% This is to create a fake chapter (like the acknowledgments).  It doesn't
% get ennumerated, but it does get added to the Table of Contents (ToC),
% and since the \chapter* doesn't define the markright or markboth
% commands, we force it here to do so.
%%%%%%%%%% formato de los cap\'itulos que no se enumeran %%%%%%%%%%%
\newcommand{\nochapter}[2][blabla]{%
  \chapter*{\textcolor{ptctitle}{#2}}%
  \ifthenelse{\equal{#1}{blabla}}%
             {%\addcontentsline{toc}{chapter}{\protect\numberline{}{#2}}%
              \addstarredchapter{#2}
              \mtcaddchapter{#2}
              \markboth{\MakeUppercase { #2 }}{\MakeUppercase{ #2 }}%
              }% one param
             {%\addcontentsline{toc}{chapter}{\protect\numberline{}{#1}}%
              \addstarredchapter{#1}
              \mtcaddchapter{#1}
              \markboth{\MakeUppercase { #1 }}{\MakeUppercase{ #1 }}%
              }% two param
%    \markboth{\MakeUppercase { #1 } }{\MakeUppercase { #1 } }%
}%nochapter
\newcommand{\noappendix}[2][blabla]{%
  \chapter*{\textcolor{ptctitle}{#2}}%
  \stepcounter{chapter}%
  \ifthenelse{\equal{#1}{blabla}}%
             {%\addcontentsline{toc}{chapter}{\protect\numberline{\Alph{chapter}}{#2}}%
              \addstarredchapter{#2}
              \markboth{\textsc{Appendix}\space\Alph{chapter}.\space\space\MakeUppercase{#2}}%
                       {\textsc{Appendix}\space\Alph{chapter}.\space\space\MakeUppercase{#2}}%
              }% one param
             {%\addcontentsline{toc}{chapter}{\protect\numberline{\Alph{chapter}}{#1}}%
              \addstarredchapter{#1}
              \markboth{\textsc{Appendix}\space\Alph{chapter}.\space\space\MakeUppercase{#1}}%
                       {\textsc{Appendix}\space\Alph{chapter}.\space\space\MakeUppercase{#1}}%
              }% two param
%    \markboth{\MakeUppercase { #1 } }{\MakeUppercase { #1 } }%
}%noappendix

\newcommand{\addappendix}[1]{%
  \stepcounter{chapter}%
  %\addcontentsline{toc}{chapter}{\protect\numberline{\Alph{chapter}}{#1}} % Add References to TOC
  \addstarredchapter{#1}
  \markboth{\textsc{Appendix}\space\Alph{chapter}.\space\space\MakeUppercase{#1}}%
           {\textsc{Appendix}\space\Alph{chapter}.\space\space\MakeUppercase{#1}}%
}%addappendix
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%REDEFINIR caption names (fig & table x.x)
\def\fnum@table{\textcolor{ptctitle}{\small\bfseries\sffamily\tablename\nobreakspace\thetable}}
\def\fnum@figure{\textcolor{ptctitle}{\small\bfseries\sffamily\figurename\nobreakspace\thefigure}}
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{#1 #2}%
  \ifdim \wd\@tempboxa >\hsize
    #1 #2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}

% redefinir los captions (Pep)
%draftbox
\newcommand{\mycaption}[4]{
  \vskip 0.5ex

    \begin{minipage}[c]{0.95\linewidth}%
      {\caption[#2]{\small\label{#1}\textbf{\sffamily #3} #4}}
    \end{minipage}
   %}%
  %}%
}%mycaption
%5%%%%%%%inserta c\'odigo %%%%%%%%%%%
\RequirePackage{algorithmic}
\RequirePackage{algorithm}
%%%% ALGORITHMS
\newcommand{\hlinea}[1]{\textcolor{blue}{\textbf{#1}}}
\renewcommand{\algorithmicrequire}{\hlinea{Pre $\equiv$}}
\renewcommand{\algorithmicensure}{\hlinea{Post $\equiv$}}
\renewcommand{\algorithmiccomment}[1]{(* #1 *)}
\renewcommand{\algorithmicend}{\hlinea{end}}
\renewcommand{\algorithmicif}{\hlinea{if}}
\renewcommand{\algorithmicthen}{\hlinea{then}}
\renewcommand{\algorithmicelse}{\hlinea{else}}
\renewcommand{\algorithmicfor}{\hlinea{for}}
\renewcommand{\algorithmicforall}{\hlinea{foreach}}
\renewcommand{\algorithmicdo}{\hlinea{do}}
\renewcommand{\algorithmicwhile}{\hlinea{while}}
\renewcommand{\algorithmicloop}{\hlinea{loop}}
\renewcommand{\algorithmicrepeat}{\hlinea{repeat}}
\renewcommand{\algorithmicuntil}{\hlinea{until}}
%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%encabezados y pies de p\'aginas

%\usepackage{fancyhdr} % To produce nice headings

\pagestyle{fancyplain}

% Better than plain style 'cos we control headings in all pages
% Even (verso) page and odd (recto) page cells are defined separately

\renewcommand{\chaptermark}[1]{\markboth{Cap\'itulo \thechapter. #1}{}}
\renewcommand{\sectionmark}[1]{\markright{\thesection.\ #1}}

\lhead[\fancyplain{}{\sffamily\thepage}]{\fancyplain{}{\sffamily\rightmark}}
\chead{}
\rhead[\fancyplain{}{\sffamily\leftmark}]{\fancyplain{}{\sffamily\thepage}}
\lfoot{}
\cfoot[\fancyplain{\thepage}{}]{\fancyplain{\thepage}{}}
\rfoot{}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Tables-related packages %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{multirow}
\RequirePackage{multicol}
\RequirePackage{array,colortbl}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Title and related features %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%\newcommand{\rl}[1][0ex]{{\avantgarboldHuge\rule[#1]{0pt}{1.75ex}}}
% \newcommand{\myacute}{\hspace{-1.1ex}\raisebox{1.075ex}{\rotatebox{87.5}{\scalebox{0.6}{$\prime$}}}\hspace{0.5ex}}
\def\thytitle{ }%
\def\mytitle{}%mytitle
\def\thyadvisor{}%Director de tesis
\def\thyadvisordue{}%codirector
\def\thyauthor{Nombre Apellido}
\def\thyauthorshort{}% autor
\def\thyauthorshort2{}% autor 2
\def\thyauthorshort3{}% autor 3
\newcommand{\thydate}{%
  \ifcase\month\or Enero\or Febrero\or Marzo\or Abril\or Mayo\or Junio%
               \or Julio\or Agosto\or Septiembre\or Octubre%
               \or Noviembre\or Diciembre\fi \space \number\year%
}%thydate {Month YEAR}
\def\Year{\expandafter\YEAR\the\year}
\def\YEAR#1#2#3#4{#1#2#3#4}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Compute current time using 24Hr. notation %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

{\count1=\time \divide\count1 by 60 \multiply\count1 by 60 %
 \count2=\time \advance\count2 by -\count1 %
 \divide\count1 by 60 %
 \xdef\currenttime{\the\count1:\ifnum\count2<10 0\fi\the\count2}}

\newcommand{\tstamp}{\textbf{\today\ --\ \currenttime}}

\RequirePackage{fancyvrb}
    % This package provides very sophisticated facilities for reading and
    % writing verbatim TeX code. Users can perform common tasks like changing
    % font family and size, numbering lines, framing code examples, colouring
    % text and conditionally processing text.
\RequirePackage{comment} % Anything within a comment environment is not shown
\RequirePackage{rotating} %

\usepackage[spanish,english]{babel}
           %% the last language is the one babel uses by default
%\addto\captionsspanish{
%NAMES ALWAYS AFTER BABEL:
%\def\chaptername{\textbf{C}ap\'itulo}
%\def\contentsname{\textcolor{blue}{\textbf{C}ontenido}}
%\def\listtablename{\textcolor{blue}{\textbf{L}ista de Tablas}}
%\def\listfigurename{\textcolor{blue}{\textbf{L}ista de Figuras}}
%}
\addto\captionsenglish{%
  \def\prefacename{\bf\color{ptctitle}Prefacio}%
  \def\refname{\bf\color{ptctitle}Referencias}%
  \def\abstractname{\bf\color{ptctitle}Resumen}%
  \global\def\bibname{\bf\color{ptctitle}Bibliograf\'{\i}a}%
  \global\def\chaptername{Cap\'{\i}tulo}%
  \def\appendixname{\bf\color{ptctitle}Ap\'endice}%
  \def\contentsname{\bf Contenido}%
  \def\listfigurename{\bf\color{ptctitle}Lista de Figuras}%
  \def\listtablename{\bf\color{ptctitle}Lista de Tablas}%
  \def\indexname{\bf\color{ptctitle}\'Indice}%
  \def\figurename{Figura}%
  \def\tablename{Tabla}%
  \def\partname{Parte}%
  \def\enclname{Adjunto}%
  \def\ccname{Copia a}%
  \def\headtoname{A}%
  \def\pagename{P\'agina}%
  \def\seename{v\'ease}%
  \def\alsoname{v\'ease tambi\'en}%
  \def\proofname{Demostraci\'on}%
  }%
  \addto\captionsspanish{%
  \def\prefacename{\bf\color{ptctitle}Prefacio}%
  \def\refname{\bf\color{ptctitle}Referencias}%
  \def\abstractname{\bf\color{ptctitle}Resumen}%
  \global\def\bibname{\bf\color{ptctitle}Bibliograf\'{\i}a}%
  \def\chaptername{Cap\'{\i}tulo}%
  \def\appendixname{\bf\color{ptctitle}Ap\'endice}%
  \def\contentsname{\bf\color{ptctitle}Contenido}%
  \def\listfigurename{\bf\color{ptctitle}Lista de Figuras}%
  \def\listtablename{\bf\color{ptctitle}Lista de Tablas}%
  \def\indexname{\bf\color{ptctitle}\'Indice}%
  \def\figurename{Figura}%
  \def\tablename{Tabla}%
  \def\partname{Parte}%
  \def\enclname{Adjunto}%
  \def\ccname{Copia a}%
  \def\headtoname{A}%
  \def\pagename{P\'agina}%
  \def\seename{v\'ease}%
  \def\alsoname{v\'ease tambi\'en}%
  \def\proofname{Demostraci\'on}%
  }%
%\usepackage{graphicx}
%\usepackage{color}

\RequirePackage{fancybox}

\setcounter{totalnumber}{1} % setting the maximum number of floats that
                            % may appear on any page regardless of position

%\newcommand{\draftbox}[1]{%
%  \ifthenelse{\boolean{LAYOUTflg}}%
%             {{\setlength{\fboxsep}{0pt}\fbox{#1}}}%
%             {#1}%
%}%draftbox
\newcommand{\draftbox}[1]{#1}


\newcommand{\incgraph}[2]{%
\draftbox{\includegraphics[#1]%
{#2}}}

\newcommand{\inclogos}[3]{%
             \draftbox{\includegraphics[height=#2cm]{logo/#3}}
}%inclogos


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



\RequirePackage{makeidx} % To make a subject index

% Enter URLs like this: \url{http://genome.imim.es/}

%\RequirePackage[pdftex,%
%setpagesize=true,%
%colorlinks=true,%
%pdfhighlight=/P,%
%linktocpage=true,%
%plainpages=false,%
%breaklinks=true]{hyperref}
%\hypersetup{linkcolor=blue,%
%anchorcolor=yellow,%
%citecolor=green,%
%menucolor=cyan,%
%pagecolor=red,%
%urlcolor=magenta}
\RequirePackage{url}

%%% WARNING: Ensure that there are not a single comment ('%') within any
%%%          of the fields of glossary items, specially within 'description'.
%%%          The glossary package concatenates all the strings witin those
%%%          fields, therefore you may end up commenting from where the '%'
%%%          is to the end without noticing it and obtaining partial glossary
%%%          items in the final document.
\RequirePackage[style=altlist,header=none,%
            border=none,number=none,%
            toc=false,hyper=false]{glossary} % To make a glossary
\makeglossary

\newglossarytype{weblink}{wlt}{wln}
\makeweblink

%%% WARNING: Take care with the length of the string within the description
%%%          field for webitems and webitemslink, which is limited by default
%%%          to 1024 characters.
%%%          One workaround is to make new defs outside the item
%%%          and protect them within it, for instance:
%%%           \def\bla{......}
%%%           \weblink{name=...,description={... \protect\bla ...}
%%
\newcommand{\webitem}[4][blabla]{%
  {#2}%
  \weblink{name={#3},%
           description={{#4}\protect\mbox{}\protect\newline%
                        \protect\vskip -0.25ex%
                        \protect\centerline{\protect\small{}#2}%
                        \protect\vskip 1.8ex},%
           sort={\protect\ifthenelse{\protect\equal{#1}{blabla}}{#3}{#1}}}%
               %{\protect\srtby}%
}%webitem
\newcommand{\webitemlink}[5][blabla]{%
  see Web Glossary, page~\pageref{#5}%
  \weblink{name={#3},%
           description={{\protect\label{#5}#4}\protect\mbox{}\protect\newline%
                        \protect\vskip -0.25ex%
                        \protect\centerline{\protect\small{}#2}%
                        \protect\vskip 1.8ex},%
           sort={\protect\ifthenelse{\protect\equal{#1}{blabla}}{#3}{#1}}}%
               %{\protect\srtby}%
}%webitem

\setpagelayout % this command is defined in the formatting files...

\setlength{\parskip}{1ex plus0.2ex minus0.2ex}

\date{} % Keep it empty

\setlength{\footnotesep}{2ex} % Vertical spacing between footnotes

\renewcommand{\footnoterule}{\noindent\rule{5cm}{.1ex}\vspace{1.5ex}}
             % Rule height, width and space

\RequirePackage{nextpage}
\newcommand{\clearemptydoublepage}{%
    \cleartooddpage[\thispagestyle{empty}]
    %
    %{\newpage{\thispagestyle{empty}\clearpage}}% Not working with biblio/index
    %
    %%%\ifthenelse{\isodd{\value{page}}}% Not working as page is set just now
    %%%{\newpage{\thispagestyle{empty}\clearpage}}%
    %%%{\clearpage}%
}%clearemptydoublepage

%%% Marking things to do or to upate with red bolded text.

\newcommand{\makebgpage}[2]{%
  \protect\thispagestyle{empty}%
  \protect\enlargethispage{10cm}%
  \ \vskip -2.75cm%
  \hspace{-#2cm}%
  \begin{tabular}[t]{@{}c@{}}%
    \colorbox{ptctitle}{%
     \begin{minipage}[b][\thesisHeight][c]{\thesisWidth}%
      \color{white}%
      \input #1%
     \end{minipage}%
    }%colorbox
  \end{tabular}%
}%makebgpage

\newcommand{\bb}[1]{\textbf{#1}} % shorther command for boldface
\newcommand{\ver}{\textsc}

%% DARKGREEN  : #008080 -> Red 0 : Green 128 : Blue 128
% \definecolor{darkgreen} {rgb}{0.00000,0.50196,0.50196}
%% LIGHTGREEN : #009F9F -> Red 0 : Green 159 : Blue 159
% \definecolor{lightgreen}{rgb}{0.00000,0.62353,0.62353}

% \definecolor{covergreen}{cmyk}{1.0,0.8,0.0,0.0}
\definecolor{BLUE}   {cmyk}{1,1,1,1}
\definecolor{covergreen}  {rgb} {0,0,0}
\definecolor{coverwhite}  {cmyk}{0.0,0.0,0.0,0.0}
\definecolor{paperwhite}  {cmyk}{0.0,0.0,0.0,0.0}
\definecolor{darkgreen}   {rgb} {0.00000,0.50196,0.50196}
\definecolor{brightyellow}{cmyk}{0.0,0.0,0.25,0.0}

%%%%%%%%%%%%%%%%%%%
%%% Definitions %%%
%%%%%%%%%%%%%%%%%%%


\providecommand{\BiBTeX}{B\kern-.05em{\scshape i\kern-.025emb}\kern-.08em\TeX}

\newcommand{\units}[2]{\mbox{{#1}\hspace{0.25ex}#2}}%
\newcommand{\kda}[1]{\units{#1}{kDa}}
\newcommand{\bp} [1]{\units{#1}{bp}}
\newcommand{\kbp}[1]{\units{#1}{kb}}
\newcommand{\mbp}[1]{\units{#1}{Mb}}
\newcommand{\gbp}[1]{\units{#1}{Gb}}
\newcommand{\prm}[1]{${#1}^{\prime}$}
%
\newcommand{\U}[1]{\textsc{\sffamily U#1}}
% \def\Uii{\textsc{\sffamily U2}}
% \def\Uxii{\textsc{\sffamily U12}}
%
\newcommand{\gene}[1]{\textsl{\textsf{#1}}}
\def\genefont{slanted sans-serif font}
\newcommand{\prot}[1]{\textsf{#1}}
\def\protfont{upright sans-serif font}
\newcommand{\seq}[1]{\textsc{\sffamily #1}}

\newcommand{\prog}[1]{\texttt{#1}} %\protect\index{#1}}
\def\progfont{monospaced serif font}
\newcommand{\db}[1]{\textsc{\textsf{#1}}} %\protect\index{#1}}
\def\dbfont{SmallCaps sans-serif font}
\newcommand{\spc}[1]{\textit{#1}}
\newcommand{\journal}[1]{\textit{#1}}
%
%\def\spcfont{italic shape}
%
\def\etal{\textit{et~al}\/}
%
\def\gff{\prog{GFF}}
\def\ps{\textsc{PostScript}}
\def\bash{\prog{bash}}
\def\awk{\prog{awk}}
\def\gawk{\prog{gawk}}
\def\make{\prog{make}}
\def\perl{\prog{perl}}
\def\google{\prog{Google}}
\def\rmask{\prog{RepeatMasker}}
\def\geneid{\prog{geneid}}
\def\genscan{\prog{genscan}}
\def\sgp{\prog{SGP1}}
\def\SGP{\prog{SGP2}}
\def\TWINSCAN{\prog{Twinscan}}
\def\SLAM{\prog{SLAM}}
\def\gps{\prog{gff2ps}}
\def\aps{\prog{gff2aplot}}
\def\compi{\prog{compi}}

\def\abinitio{``\textit{ab initio}''}
\def\Abinitio{``\textit{Ab initio}''}
\def\embl{\db{EMBL}}
\def\genbank{\db{GenBank}}
\def\refseq{\db{RefSeq}}
\def\ensembl{\db{Ensembl}}
\def\ensmart{\db{EnsMart}}
\def\gp{\db{Golden Path}}
\def\ucscgb{\db{UCSC Genome Browser}}
\def\ncbimv{\db{NCBI Map Viewer}}
\def\homologene{\db{HomoloGene}}
\def\go{\db{Gene Ontology}}
\def\dbsnp{\db{dbSNP}}

% Species
\def\Hsap{\spc{Homo sapiens}} %\protect\index{Homo sapiens}}
\def\hsap{\spc{H. sapiens}} %\protect\index{Homo sapiens}}

\def\Mmus{\spc{Mus musculus}} %\protect\index{Mus musculus}}
\def\mmus{\spc{M. musculus}} %\protect\index{Mus musculus}}

\def\Rnor{\spc{Rattus norvegicus}} %\protect\index{Rattus norvegicus}}
\def\rnor{\spc{R. norvegicus}} %\protect\index{Rattus norvegicus}}

\def\Ggal{\spc{Gallus gallus}} %\protect\index{Gallus gallus}}
\def\ggal{\spc{G. gallus}} %\protect\index{Gallus gallus}}

\def\Dmel{\spc{Drosophila melanogaster}} %\protect\index{Drosophila melanogaster}}
\def\dmel{\spc{D. melanogaster}} %\protect\index{Drosophila melanogaster}}

\def\Agam{\spc{Anopheles gambiae}} %\protect\index{Anopheles gambiae}}
\def\agam{\spc{A. gambiae}} %\protect\index{Anopheles gambiae}}

\def\Cele{\spc{Caenorhabditis elegans}} %\protect\index{Caenorhabditis elegans}}
\def\cele{\spc{C. elegans}} %\protect\index{Caenorhabditis elegans}}

\def\Scer{\spc{Saccharomyces cerevisiae}} %\protect\index{Saccharomyces cerevisiae}}
\def\scer{\spc{S. cerevisiae}} %\protect\index{Saccharomyces cerevisiae}}

\def\Atha{\spc{Arabidopsis thaliana}} %\protect\index{Arabidopsis thaliana}}
\def\atha{\spc{A. thaliana}} %\protect\index{Arabidopsis thaliana}}

\def\Tnig{\spc{Tetraodon nigroviridis}} %\protect\index{Tetraodon nigroviridis}}
\def\tnig{\spc{T. nigroviridis}} %\protect\index{Tetraodon nigroviridis}}

\def\Trub{\spc{Takifugu rubripes}} %\protect\index{Takifugu rubripes}}
\def\trub{\spc{T. rubripes}} %\protect\index{Takifugu rubripes}}

%%%%%%%%%%%%%%%%%%%
%%% Hyphenation %%%
%%%%%%%%%%%%%%%%%%%

\hyphenation{bio-in-for-ma-tics ge-no-me ge-no-mic cgi-cmd taf-fi-le re-gu-la-to-ry boun-da-ries trans-la-ta-ble me-thod me-thods ca-pa-bi-li-ty ca-pa-bi-li-ties dis-cri-mi-nant mo-di-fy cons-ti-tu-ted co-ding spe-ci-fi-ca-lly e-va-lu-a-ted e-va-lu-a-tion re-cog-ni-ze re-cog-ni-zed com-pa-ra-ti-ve}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% To process only desired chapters %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%\includeonly{Introduction/introduction,Objectives/objectives,
%Results/results,Methods/methods,Discussion/discussion,Conclusions/conclusions}

\sloppy % word spacings are allowed to stretch more generously than usual
        % so that paragraphs are broken up into lines with fewer word divisions.

% black+grey+white
\definecolor{black}              {cmyk}{0.00,0.00,0.00,1.00}
\definecolor{verydarkgrey}       {cmyk}{0.00,0.00,0.00,0.80}
\definecolor{darkgrey}           {cmyk}{0.00,0.00,0.00,0.60}
\definecolor{grey}               {cmyk}{0.00,0.00,0.00,0.40}
\definecolor{lightgrey}          {cmyk}{0.00,0.00,0.00,0.20}
\definecolor{verylightgrey}      {cmyk}{0.00,0.00,0.00,0.10}
\definecolor{white}              {cmyk}{0.00,0.00,0.00,0.00}
% magenta
\definecolor{verydarkmagenta}    {cmyk}{0.00,1.00,0.00,0.30}
\definecolor{darkmagenta}        {cmyk}{0.00,0.80,0.00,0.05}
\definecolor{magenta}            {cmyk}{0.00,0.60,0.00,0.00}
\definecolor{lightmagenta}       {cmyk}{0.00,0.40,0.00,0.00}
\definecolor{verylightmagenta}   {cmyk}{0.00,0.20,0.00,0.00}
% violet
\definecolor{verydarkviolet}     {cmyk}{0.45,0.85,0.00,0.00}
\definecolor{darkviolet}         {cmyk}{0.37,0.75,0.00,0.00}
\definecolor{violet}             {cmyk}{0.30,0.65,0.00,0.00}
\definecolor{lightviolet}        {cmyk}{0.22,0.55,0.00,0.00}
\definecolor{verylightviolet}    {cmyk}{0.15,0.45,0.00,0.00}
% blue
\definecolor{verydarkblue}       {cmyk}{1.00,1.00,0.00,0.15}
\definecolor{darkblue}           {cmyk}{0.90,0.90,0.00,0.00}
\definecolor{blue}               {cmyk}{0.75,0.75,0.00,0.00}
\definecolor{lightblue}          {cmyk}{0.50,0.50,0.00,0.00}
\definecolor{verylightblue}      {cmyk}{0.30,0.30,0.00,0.00}
% skyblue
\definecolor{verydarkskyblue}    {cmyk}{0.90,0.50,0.00,0.10}
\definecolor{darkskyblue}        {cmyk}{0.75,0.45,0.00,0.00}
\definecolor{skyblue}            {cmyk}{0.60,0.38,0.00,0.00}
\definecolor{lightskyblue}       {cmyk}{0.45,0.25,0.00,0.00}
\definecolor{verylightskyblue}   {cmyk}{0.30,0.15,0.00,0.00}
% cyan
\definecolor{verydarkcyan}       {cmyk}{1.00,0.00,0.00,0.00}
\definecolor{darkcyan}           {cmyk}{0.80,0.00,0.00,0.00}
\definecolor{cyan}               {cmyk}{0.60,0.00,0.00,0.00}
\definecolor{lightcyan}          {cmyk}{0.40,0.00,0.00,0.00}
\definecolor{verylightcyan}      {cmyk}{0.20,0.00,0.00,0.00}
% seagreen
\definecolor{verydarkseagreen}   {cmyk}{1.00,0.00,0.60,0.10}
\definecolor{darkseagreen}       {cmyk}{0.90,0.00,0.54,0.00}
\definecolor{seagreen}           {cmyk}{0.75,0.00,0.45,0.00}
\definecolor{lightseagreen}      {cmyk}{0.50,0.00,0.30,0.00}
\definecolor{verylightseagreen}  {cmyk}{0.25,0.00,0.15,0.00}
% green
\definecolor{verydarkgreen}      {cmyk}{1.00,0.00,1.00,0.00}
\definecolor{darkgreen}          {cmyk}{0.80,0.00,0.80,0.00}
\definecolor{green}              {cmyk}{0.60,0.00,0.60,0.00}
\definecolor{lightgreen}         {cmyk}{0.40,0.00,0.40,0.00}
\definecolor{verylightgreen}     {cmyk}{0.20,0.00,0.20,0.00}
% limegreen
\definecolor{verydarklimegreen}  {cmyk}{0.50,0.00,1.00,0.10}
\definecolor{darklimegreen}      {cmyk}{0.40,0.00,0.95,0.00}
\definecolor{limegreen}          {cmyk}{0.30,0.00,0.80,0.00}
\definecolor{lightlimegreen}     {cmyk}{0.20,0.00,0.65,0.00}
\definecolor{verylightlimegreen} {cmyk}{0.10,0.00,0.50,0.00}
% yellow
\definecolor{verydarkyellow}     {cmyk}{0.00,0.00,1.00,0.25}
\definecolor{darkyellow}         {cmyk}{0.00,0.00,1.00,0.10}
\definecolor{yellow}             {cmyk}{0.00,0.00,1.00,0.00}
\definecolor{lightyellow}        {cmyk}{0.00,0.00,0.50,0.00}
\definecolor{verylightyellow}    {cmyk}{0.00,0.00,0.25,0.00}
% orange
\definecolor{verydarkorange}     {cmyk}{0.00,0.55,0.65,0.20}
\definecolor{darkorange}         {cmyk}{0.00,0.50,0.70,0.00}
\definecolor{orange}             {cmyk}{0.00,0.40,0.75,0.00}
\definecolor{lightorange}        {cmyk}{0.00,0.30,0.80,0.00}
\definecolor{verylightorange}    {cmyk}{0.00,0.20,0.85,0.00}
% red
\definecolor{verydarkred}        {cmyk}{0.00,1.00,1.00,0.10}
\definecolor{darkred}            {cmyk}{0.00,0.80,0.80,0.00}
\definecolor{red}                {cmyk}{0.00,0.60,0.60,0.00}
\definecolor{lightred}           {cmyk}{0.00,0.40,0.40,0.00}
\definecolor{verylightred}       {cmyk}{0.00,0.20,0.20,0.00}
% brown
\definecolor{verydarkbrown}      {cmyk}{0.00,0.85,1.00,0.70}
\definecolor{darkbrown}          {cmyk}{0.00,0.75,1.00,0.50}
\definecolor{brown}              {cmyk}{0.00,0.70,1.00,0.30}
\definecolor{lightbrown}         {cmyk}{0.30,0.60,0.70,0.00}
\definecolor{verylightbrown}     {cmyk}{0.15,0.45,0.55,0.00}

\RequirePackage[undotted]{minitoc}
\renewcommand{\mtctitle}{}

\RequirePackage{lettrine}

% ITEMIZES

\newenvironment{mitemize}{\begin{dinglist}{"F5}}{\end{dinglist}}
\newenvironment{menumerate}{\begin{dingautolist}{'254}}{\end{dingautolist}}
\def\maketitle{%
\begin{center}
\begin{minipage}[c][0.965\textheight][c]{0.8\textwidth}
%\centering
 \includegraphics[scale=0.8]{logo-ua-le} 
  \vfill
\textbf{\@title}
\\[3cm]
\@author
\vfill
\@date
\end{minipage}
\end{center}
}
\def\@namebib{\color{blue}Bibliograf\'ia}
\newdimen\bibindent
\setlength\bibindent{1.5em}
\renewenvironment{thebibliography}[1]
     {\chapter*{\@namebib}%
      \@mkboth{\MakeUppercase\@namebib}{\MakeUppercase\@namebib}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
	  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \newcommand{\DOCHS}{%
    \settoheight{\myhi}{\CTV\FmTi{Test}}
    \setlength{\py}{\baselineskip}
    \addtolength{\py}{\RW}
    \addtolength{\py}{\myhi}
    \setlength{\pyy}{\py}
    \addtolength{\pyy}{-1\RW}
     \raggedright
    \CNV\FmN{\@chapapp}\space\CNoV\thechapter
    \hskip 3pt\mghrulefill{\RW}\rule[-1\pyy]{2\RW}{\py}\par\nobreak}
     \newcommand{\DOTT}[1]{%
    \addtolength{\pyy}{-4pt}
    \settoheight{\myhi}{\CTV\FmTi{#1}}
    \addtolength{\myhi}{\py}
    \addtolength{\myhi}{-1\RW}
    \vskip -1\pyy
    \rule{2\RW}{\myhi}\mghrulefill{\RW}\hskip 2pt
    \raggedleft\CTV\FmTi{#1}\par\nobreak
    \vskip 80\p@}
\newlength{\backskip}
  \newcommand{\DOTTS}[1]{%
    \setlength{\py}{25pt}  % eller vad man vill
    \setlength{\pyy}{\py}
    \setlength{\backskip}{\py}
    \addtolength{\backskip}{2pt}
    \addtolength{\pyy}{\RW}
    \setlength{\myhi}{\baselineskip}
    \addtolength{\myhi}{\pyy}
    \mghrulefill{\RW}\rule[-1\py]{2\RW}{\pyy}\par\nobreak
    \vskip -1\backskip
    \rule{2\RW}{\myhi}\mghrulefill{\RW}\hskip 3pt %
    \raggedleft\CTV\FmTi{#1}\par\nobreak
    \vskip 40\p@}  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\@makeschapterhead#1{%

  \vspace*{50\p@}%
  {\parindent \z@ \raggedright
  \color{ptctitle}
    \normalfont
    \interlinepenalty\@M
    %\DOTIS{#1}
            \DOTTS{#1}
    \vskip 40\p@
    %%%%%%%%%%%%%%%%%%%%%%%%%%%
   \color{black}

  }}
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




