%%
%% This is file `libro-matua.cls',
%% generated with the Texmaker.
%%%% %% 
%% This file is part of the LaTeX2e system.
%% ----------------------------------------
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
\ProvidesClass{libro-matua}
              [2016/01/07 v1.0
 Standard LaTeX document class]
 \DeclareOption{5m}{\xdef\jtype{5}\ExecuteOptions{twocolumn}}
  \def\jtype{0}
 \DeclareOption{2m}{\xdef\jtype{2}}
\DeclareOption{3m}{\xdef\jtype{3}}
\DeclareOption{4m}{\xdef\jtype{4}}
\DeclareOption{5m}{\xdef\jtype{5}}
\DeclareOption{1m}{\xdef\jtype{1}
  \AtBeginDocument{\@twocolumnfalse}}
  \ExecuteOptions{1m,11pt,onecolumn}
  \ProcessOptions
    \LoadClass{book}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%Paquetes%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{xcolor}
\RequirePackage{floatrow}% colocar al principio para evitar errores
\RequirePackage{tikz}
\RequirePackage{titletoc}
\RequirePackage{etoolbox}
\RequirePackage{lmodern,parskip,array,ifthen,calc}
\RequirePackage[many,most]{tcolorbox} % cajas
\RequirePackage{mdframed}% cajas
\RequirePackage{framed}% cajas
\usetikzlibrary{decorations.pathmorphing}
\usetikzlibrary{shadows,calc}
\usetikzlibrary{shadows.blur}
\usetikzlibrary{tikzmark,decorations.pathreplacing}
\tcbuselibrary{breakable,minted}
\usetikzlibrary{shapes.misc}
\usetikzlibrary{decorations.pathmorphing}
\tcbuselibrary{skins,theorems}
\RequirePackage{emptypage}%p\'agina en blanco al terminar cap\'itulo
\RequirePackage[toctitles,newparttoc,explicit]{titlesec}
\RequirePackage{amsmath,amsthm,amssymb,verbatim}
\RequirePackage{varwidth,incgraph}
\RequirePackage{array,tabularx}
%%%%%%%%% error de chngcntr %%%%%%%%%%%%%%%%%%%%%%%%%
\let\counterwithout\relax
\let\counterwithin\relax
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{colortbl}
\RequirePackage{chngcntr}
\RequirePackage{aliascnt}
\RequirePackage{mwe-es}%load graphix,lipsum,...
\RequirePackage{booktabs}
\RequirePackage{fancyhdr}
%\newfloatcommand{capbtabbox}{table}[][\FBwidth]
\RequirePackage{caption}
\RequirePackage{hyperref}
%\hypersetup{
%             linktoc=all,
%             hidelinks,
%             pdfborder={0 0 0},
%            colorlinks=true,
%            linkcolor = ptctitle,
%            backref=true,
%            pagebackref=true,
%            hyperindex=true,
%            breaklinks=true,
%            urlcolor=ocre,
%            citecolor = ocre,
%            bookmarks=true,
%            bookmarksopen=false,
%            pdftitle={Title},
%            pdfauthor={Author}
%                              }
\RequirePackage{cleveref}
%%%%%%%%%%%%%%%%%%%%%%%%% definiendo fuentes%%%%%%%%%%%%%%%%%%%%
\def\helv@scale{.82}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
%%%%%%%%%%%%%% Font Defined %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
%%%%%%%%%%%%%%%%%%%%%%% clores%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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


%\def\chaptername{ Cap\'{\i}tulo}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Definiciones en espa\~nol
\def\indexname{\'Indice}
\def\contentsname{ CONTENIDO}
\def\listfigurename{Tabla de figuras}
\def\bibname{Bibliograf\'{\i}a}
\def\tablename{Tabla}
\def\proofname{Demostraci\'on}
\def\appendixname{Ap\'endice}
\def\chaptername{ Cap\'{\i}tulo}
\def\figurename{Figura}
%%%%%%%%%%%%%%%%%%%%%%%%%%%Requiere titletoc %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\makeatletter

%----------------------------------------------------------------------------------------
%   PART HEADINGS
%----------------------------------------------------------------------------------------

% numbered part in the table of contents
\newcommand{\@mypartnumtocformat}[2]{%
\setlength\fboxsep{0pt}%
\noindent\colorbox{ocre!70}{\strut\parbox[c][.7cm]{\ecart}{\color{ocre!20}\colorbox{ocre!20}\Large\sffamily\bfseries\centering#1}}\hskip\esp\colorbox{ocre!20}{\strut\parbox[c][.7cm]{\linewidth-\ecart-\esp}{\Large\sffamily\centering #2}}}%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% unnumbered part in the table of contents
\newcommand{\@myparttocformat}[1]{%
\setlength\fboxsep{0pt}%
\noindent\colorbox{ocre!40}{\strut\parbox[c][.7cm]{\linewidth}{\Large\sffamily\centering#1}}}%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newlength\esp
\setlength\esp{4pt}
\newlength\ecart
\setlength\ecart{1.2cm-\esp}
\newcommand{\thepartimage}{}%
\newcommand{\partimage}[1]{\renewcommand{\thepartimage}{#1}}%
\def\@part[#1]#2{%
\ifnum \c@secnumdepth >-2\relax%
\refstepcounter{part}%
\addcontentsline{toc}{part}{\texorpdfstring{\protect\@mypartnumtocformat{\thepart}{#1}}{\partname~\thepart\ ---\ #1}}
\else%
\addcontentsline{toc}{part}{\texorpdfstring{\protect\@myparttocformat{#1}}{#1}}%
\fi%
\startcontents%
\markboth{}{}%
{\thispagestyle{empty}%
\begin{tikzpicture}[remember picture,overlay]%
\node at (current page.north west){\begin{tikzpicture}[remember picture,overlay]%   
\fill[ocre!20](0cm,0cm) rectangle (\paperwidth,-\paperheight);
\node[anchor=north] at (4cm,-3.25cm){\color{ocre!40}\fontsize{220}{100}\sffamily\bfseries\@Roman\c@part};
\node[anchor=south east] at (\paperwidth-1cm,-\paperheight+1cm){\parbox[t][][t]{8.5cm}{
\printcontents{l}{0}{\setcounter{tocdepth}{1}}%
}};
\node[anchor=north east] at (\paperwidth-1.5cm,-3.25cm){\parbox[t][][t]{15cm}{\strut\raggedleft\color{ptctitle}\fontsize{30}{30}\sffamily\bfseries#2}};
\end{tikzpicture}};
\end{tikzpicture}}%
\@endpart}
\def\@spart#1{%
\startcontents%
\phantomsection
{\thispagestyle{empty}%
\begin{tikzpicture}[remember picture,overlay]%
\node at (current page.north west){\begin{tikzpicture}[remember picture,overlay]%   
\fill[ocre!20](0cm,0cm) rectangle (\paperwidth,-\paperheight);
\node[anchor=north east] at (\paperwidth-1.5cm,-3.25cm){\parbox[t][][t]{15cm}{\strut\raggedleft\color{white}\fontsize{30}{30}\sffamily\bfseries#1}};
\end{tikzpicture}};
\end{tikzpicture}}
\addcontentsline{toc}{part}{\texorpdfstring{%
\setlength\fboxsep{0pt}%
\noindent\protect\colorbox{ocre!40}{\strut\protect\parbox[c][.7cm]{\linewidth}{\Large\sffamily\protect\centering #1\quad\mbox{}}}}{#1}}%
\@endpart}
\def\@endpart{\vfil\newpage
\if@twoside
\if@openright
\null
\thispagestyle{empty}%
\newpage
\color{black}
\fi
\fi
\if@tempswa
\twocolumn
\fi}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% this is the environment used to typeset the chapter entries in the ToC
% it is a modification of the leftbar environment of the framed package
\renewenvironment{leftbar}
  {\def\FrameCommand{\hspace{6em}%
    {\color{zanahoria}\vrule width 2pt depth 6pt}\hspace{1em}}%
    \MakeFramed{\parshape 1 0cm \dimexpr\textwidth-6em\relax\FrameRestore}\vskip20pt%
  }
 {\endMakeFramed}

% using titletoc we redefine the ToC entries for parts, chapters, sections, and subsections
\titlecontents{part}
  [0em]{\centering}
  {\contentslabel}
  {}{}
\titlecontents{chapter}
  [0em]{\vspace*{2\baselineskip}}
  {\parbox{4.5em}{%
    \hfill\Huge\sffamily\bfseries\color{myred}\thecontentspage}%
   \vspace*{-2.3\baselineskip}\leftbar\textsc{\color{zanahoria}\small\chaptername~\thecontentslabel}\\\color{ptctitle}\sffamily}
  {}{\endleftbar}
\titlecontents{section}
  [8.4em]
  {\color{zanahoria}\sffamily\contentslabel[\thecontentslabel]{1.25cm}\color{ocre}\color{ptctitle}}{}{}
  {\color{zanahoria}\hspace{0.5em}\nobreak\itshape\contentspage\color{zanahoria}}
\titlecontents{subsection}
  [8.4em]
  {\color{zanahoria}\sffamily\contentslabel{3em}\color{ptctitle}}{}{}  
  {\hspace{0.5em}\nobreak\itshape\color{zanahoria}\contentspage}
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%MiniToc%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \newcommand{\PartialToc}{
\hypersetup{linkcolor=white}
\setcounter{tocdepth}{2}
\titlecontents{section}[1.25cm] % Indentation
{\addvspace{3pt}\sffamily\bfseries} % Spacing and font options for sections
{\contentslabel[\thecontentslabel]{1.25cm}} % Section number
{}
{\hfill\thecontentspage} % Page number
[]
\titlecontents{subsection}[1.25cm] % Indentation
{\addvspace{3pt}\sffamily\bfseries} % Spacing and font options for sections
{\contentslabel[\thecontentslabel]{1.25cm}} % Section number
{}
{\hfill\thecontentspage} % Page number
[]
\vspace*{2pc}\textcolor{titlebgdark}\hrule\vspace*{1pc}%
\startcontents[chapters]\vbox{\bf\Large \color{titlebgdark}Contenido Del Cap\'itulo}\vspace*{20pt}
\colorlet{chpnumbercolor}{ptctitle!40!black}
%\printcontents[chapters]{}{1}{}
 \begin{tikzpicture}
    \node[rounded corners,align=left,fill=titlebgdark, blur shadow={shadow blur steps=5}, inner sep=5mm]{%
        \color{white}%
        \begin{minipage}{8cm}%minipage trick
        \printcontents[chapters]{}{1}{}
        \end{minipage}};
    \end{tikzpicture}
\textcolor{titlebgdark}{\vspace*{1pc}\hrule}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5capitulos y secciones%%%%%%%%%%%%%%%%%%%%%
%----------------------------------------------------------------------------------------
%   SECTION NUMBERING IN THE MARGIN
%----------------------------------------------------------------------------------------
%{\normalfont\large\sffamily\bfseries}}
\renewcommand{\subsection}{\@startsection {subsection}{2}{\z@}
{-3ex \@plus -0.1ex \@minus -.4ex}
{0.5ex \@plus.2ex }
{\color{ocre}\normalfont\sffamily\bfseries}}
\renewcommand{\subsubsection}{\@startsection {subsubsection}{3}{\z@}
{-2ex \@plus -0.1ex \@minus -.2ex}
{.2ex \@plus.2ex }
{\color{ptctitle}\normalfont\small\sffamily\bfseries}}
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}
{-2ex \@plus-.2ex \@minus .2ex}
{.1ex}
{\color{ocre}\normalfont\small\sffamily\bfseries}}
\newlength{\chaptertopspacing}
\setlength{\chaptertopspacing}{80pt}
\titleformat{\chapter}[display]
  {\normalfont\huge\bfseries}
  {}
  {-\chaptertopspacing}
  {%
    \begin{tcolorbox}[
      enhanced,
      colback=titlebgdark,
      boxrule=0.25cm,
      colframe=titlebglight,
      arc=0pt,
      outer arc=0pt,
      leftrule=0pt,
      rightrule=0pt,
      fontupper=\color{white}\sffamily\bfseries\huge,
      enlarge left by=-1in-\hoffset-\oddsidemargin, 
      enlarge right by=-\paperwidth+1in+\hoffset+\oddsidemargin+\textwidth,
      width=\paperwidth, 
      left=1in+\hoffset+\oddsidemargin, 
      right=\paperwidth-1in-\hoffset-\oddsidemargin-\textwidth,
      top=0.6cm, 
      bottom=0.6cm,
      overlay={
        \node[
          fill=titlebgdark,
          draw=titlebglight,
          line width=0.15cm,
          inner sep=0pt,
          text width=1.7cm,
          minimum height=1.7cm,
          align=center,
          font=\color{white}\sffamily\bfseries\fontsize{30}{36}\selectfont
        ] 
        (chapname)
        at ([xshift=2cm]frame.north west)
        {\thechapter};
        \node[font=\small,anchor=south,inner sep=2pt] at (chapname.north)
        {\color{titlebgdark}\MakeUppercase\chaptertitlename}; 
        \node at ([xshift=-2.6cm]frame.east) {\includegraphics[scale=0.15]{dchapter-\jtype m}}; 
      } 
    ]
  \hspace*{1cm} \protect #1
    \end{tcolorbox}%
  }
\titleformat{name=\chapter,numberless}[display]
  {\normalfont\huge\bfseries}
  {}
  {-\chaptertopspacing}
  {%
    \begin{tcolorbox}[
      enhanced,
      colback=titlebgdark,
      boxrule=0.25cm,
      colframe=titlebglight,
      arc=0pt,
      outer arc=0pt,
      remember as=title,
      leftrule=0pt,
      rightrule=0pt,
      fontupper=\color{white}\sffamily\bfseries\huge,
      enlarge left by=-1in-\hoffset-\oddsidemargin, 
      enlarge right by=-\paperwidth+1in+\hoffset+\oddsidemargin+\textwidth,
      width=\paperwidth, 
      left=1in+\hoffset+\oddsidemargin, 
      right=\paperwidth-1in-\hoffset-\oddsidemargin-\textwidth,
      top=0.6cm, 
      bottom=0.6cm, overlay={   
        \node at ([xshift=-2.6cm]frame.east) {\includegraphics[scale=0.15]{dchapter-\jtype m}}; 
      }
    ]
  \hspace*{1cm} \protect #1 
    \end{tcolorbox}%
  }
\titlespacing*{\chapter}
  {0pt}{0pt}{40pt}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% secci\'on%%%%%%%%%%%%%%%
\newcommand\ChapterFont{\usefont{T1}{qhv}{b}{n}\selectfont\huge}
\newcommand\SectionFont{\usefont{T1}{qhv}{b}{n}\selectfont\SectionHeadFont}
\titleformat{\section}[block]%
  {\normalfont\small\sffamily\SectionFont\color{titlebgdark}}%
  {\colorbox{titlebgdark}{\parbox[c][17pt][c]{30pt}{%
      \hfil\color{white}\Large\thesection\hfil}}}%
  {0.15cm}%
  {%
   \raisebox{-3pt}{\parbox{\dimexpr\linewidth-30pt-1.5mm-2\fboxrule-2\fboxsep}{\raggedright\color{titlebgdark}\SectionFont\sffamily#1\\[-3.5pt]%
   \color{titlebgdark}\footnotesize\textbf\titleline{\titlerule[1.5pt]}}}%
  }
\titlespacing*{\section}
  {0pt}{3.5ex plus 1ex minus .2ex}{1.3ex plus .2ex}
  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\let\old@dottedcontentsline\@dottedtocline
\def\@dottedtocline#1#2#3#4#5{%
\old@dottedcontentsline{#1}{#2}{#3}{#4}{{\textcolor{ptctitle}{#5}}}}
\makeatother
%%%%%%%%%%%%%%%%%%% cajas para ejemplo %%%%%%%%%%%%
\newcounter{ejemplo}[chapter]
\tcbset{%
  contourskin/.style={%
      enhanced,
      breakable,
      frame hidden,
      parbox=false,
      colback=white,
      attach boxed title to top left={xshift=12pt},%
      boxed title style={enhanced,top=4pt,left=12pt,right=12pt,
          frame hidden,
          interior style={left color=titlebgdark,right color=white},
          overlay={%
              \draw[titlebgdark,line width=2pt]
                  ([xshift=-.5em,yshift=-1pt]frame.north west)--([xshift=.5em,yshift=-1pt]frame.north east);%
          }%
      },
      coltitle=titlebgdark!60!black,
      fonttitle=\bfseries\large,
      before skip=\baselineskip,
      left=12pt,
      top=.8em,
      drop large lifted shadow,
      underlay unbroken={%
          \coordinate (coin) at (title.north-|frame.west); 
          \draw[titlebgdark,line width=1pt] ([yshift=-1pt]title.north east) -- ([xshift=-0.5pt,yshift=-1pt]coin) -- +(0,-1.2cm);
          \draw[titlebgdark,line width=2pt] ([xshift=-0.5pt,yshift=-1pt-1.2cm]coin) -- ([xshift=-0.5pt]frame.south west);
          \draw[titlebgdark,line width=2pt] ([xshift=-0.5pt]frame.south west) -- (frame.south east);%
      },
      underlay first={%
          \coordinate (coin) at (title.north-|frame.west); 
          \draw[titlebgdark,line width=1pt] ([yshift=-1pt]title.north east) -- ([xshift=-0.5pt,yshift=-1pt]coin) -- +(0,-1.2cm);
          \draw[titlebgdark,line width=2pt] ([xshift=-0.5pt,yshift=-1pt-1.2cm]coin) -- ([xshift=-0.5pt]frame.south west);
      },
      underlay middle={%
          \draw[titlebgdark,line width=2pt] ([xshift=-0.5pt]frame.north west) -- ([xshift=-0.5pt]frame.south west);%
      },
      underlay last={%
          \draw[titlebgdark,line width=2pt] ([xshift=-0.5pt]frame.north west) -- ([xshift=-0.5pt]frame.south west);
          \draw[titlebgdark,line width=2pt] ([xshift=-0.5pt]frame.south west) -- (frame.south east);%
      },%
  },
}

\newtcolorbox{mycontourbox}[1][]{contourskin,#1}
\newenvironment{ejemplo}[1][]{\refstepcounter{ejemplo}
\medskip
\begin{mycontourbox}[title={Ejemplo:~\thesection.\theejemplo}]
#1

}{\end{mycontourbox}\medskip}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%Cajas para ejercicio %%%%%%%%%%%%%%%%
\tcbset{mystyle/.style={
  breakable,
  enhanced,
  outer arc=0pt,
  arc=0pt,
  colframe=titlebgdark,
  colback=titlebgdark!20,
  attach boxed title to top left,
  boxed title style={
    colback=titlebgdark,
    outer arc=0pt,
    arc=0pt,
    top=3pt,
    bottom=3pt,
    },
  fonttitle=\sffamily
  }
}

\newtcolorbox[auto counter,number within=section]{example}[1][]{
  mystyle,
  title=Problema~\thetcbcounter,
  overlay unbroken and first={
      \path
        let
        \p1=(title.north east),
        \p2=(frame.north east)
        in
        node[anchor=west,font=\sffamily,color=myblue,text width=\x2-\x1] 
        at (title.east) {#1};
  }
}
\newtcolorbox[auto counter]{assumption}[1][]{
  mystyle,
  colback=white,
  rightrule=0pt,
  toprule=0pt,
  title=Ejercicio.~\thesection.\thetcbcounter,
  overlay unbroken and first={
      \path
        let
        \p1=(title.north east),
        \p2=(frame.north east)
        in
        node[anchor=west,font=\sffamily,color=myblue,text width=\x2-\x1] 
        at (title.east) {#1};
  }
}
%%%%%%%%%%%%%%%%%%%
\newcounter{ejercicio}[chapter]
\newenvironment{ejercicio}[2][1]{\refstepcounter{ejemplo}
\medskip
\begin{assumption}[#1]
#2
}{\end{assumption}\medskip}
%%%%%%%%
\newcounter{problema}[chapter]
\newenvironment{problema}[2][1]{\refstepcounter{problema}
\medskip
\begin{example}[#1]
#2
}{\end{example}\medskip}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Teoremas%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newtcolorbox{idioms}{
  breakable,
  enhanced,
  colback=white,
  colframe=idiomsgreen,
  arc=0pt,
  outer arc=0pt,
  title=Idioms,
  fonttitle=\bfseries\sffamily\large,
  colbacktitle=idiomsgreen,
  attach boxed title to top left={},
  boxed title style={
    enhanced,
    skin=enhancedfirst jigsaw,
    arc=3pt,
    bottom=0pt,
    interior style={fill=idiomsgreen}
  }
}

\newtcolorbox[auto counter,number within=section]{praproblem}{
  breakable,
  enhanced,
  colback=white,
  boxrule=0pt,
  arc=0pt,
  outer arc=0pt,
  title=Practice Problem~\thetcbcounter,
  fonttitle=\bfseries\sffamily\large\strut,
  coltitle=problemblue,
  colbacktitle=problemblue,
  title style={
    left color=orange!60,
    right color=white,
    middle color=white
  },
  overlay={
    \draw[line width=1.5pt,problemblue] (title.north west) -- (title.north east);
  }
}

\newtcolorbox[auto counter,number within=section]{tcbexercise}{
  breakable,
  enhanced,
  colback=white,
  boxrule=0pt,
  arc=0pt,
  outer arc=0pt,
  title=Exercise~\thetcbcounter,
  fonttitle=\bfseries\sffamily\large\strut,
  coltitle=problemblue,
  colbacktitle=problemblue,
  title style={exercisebgblue},
  overlay={
    \draw[line width=1.5pt,problemblue] (frame.south west) -- (frame.south east);
  }
}
%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Caption %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\DeclareCaptionFormat{tcbcaption}{%
  \begin{tcolorbox}[width=0.4\linewidth,
    colback=zanahoria,
    arc=0pt,
    outer arc=0pt,
    boxrule=0pt,
    colupper=white,
    fontupper=\large\sffamily,
    boxsep=0pt
  ]
  \centering#1#2#3
  \end{tcolorbox}%
}
\captionsetup{format=tcbcaption}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% ENTORNOS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Definicion %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\makeatletter
\tcbset{
  mytheorem/.code args={#1#2#3#4}{%
    \refstepcounter{#2}\label{#4}%
    \pgfkeysalso{title={\setbox\z@=\hbox{#1~\csname the#2\endcsname\ }\hangindent\wd\z@\hangafter=1 \mbox{#1~\csname the#2\endcsname\ }~#3}}},%
}

\newcommand{\mtcbmaketheorem}[5]{%
  \newtcolorbox{#1}[3][]{#3,mytheorem={#2}{#4}{##2}{#5:##3},##1}%
}
\makeatother

\newcounter{teorema}
\newcounter{defi}
\newcounter{prop}
\newcounter{corolario}
\newaliascnt{lemm}{defi}
\counterwithin{defi}{chapter}
\counterwithin{lemm}{chapter}
\counterwithin{teorema}{chapter}
\tikzset{coltria/.style={fill=red!15!white}}
\tcbset{
%%%============================================================
thmstyle/.style={
  breakable,
  freelance,
  boxrule=2pt,
  width=\linewidth,
  frame code={%
  \path[fill=myblue,draw=myblue!75!black]
    (frame.north west) -- ([xshift=-8pt]frame.north east) --
    ([yshift=-8pt]frame.north east) -- (frame.north east|-interior.north east) --
   (frame.north west|-interior.north west) -- cycle;
  },
  interior titled code={
  \path[fill=mygray!80,draw=mygray]
    (frame.west|-interior.north west) -- (frame.east|-interior.north east) --   
    ([yshift=8pt]frame.east|-interior.south east) -- 
    ([xshift=-8pt]frame.east|-interior.south east) --
    (frame.west|-interior.south west) -- cycle;
  },
  %%%%%%%%%%%%%%5--------------------------------
 %%code for the first part of a break sequence:
skin first is subskin of={emptyfirst}{%
frame code={%
    \path[fill=myblue,draw=myblue!75!black]
    (frame.north west) -- ([xshift=-8pt]frame.north east) --
    ([yshift=-8pt]frame.north east) -- (frame.north east|-interior.north east) --
   (frame.north west|-interior.north west) -- cycle;
    },%%%%%%%%%%%%%%%
interior titled code={
   \path[fill=mygray!90,draw=mygray]
    (frame.west|-interior.north west) -- (frame.east|-interior.north east) --   
    (frame.east|-interior.south east) -- 
    (frame.east|-interior.south east) --
    (frame.west|-interior.south west) -- cycle;
    },
},%%%%%%%%%%%%%%%%%%%%%
%% code for the middle part of a break sequence:
skin middle is subskin of={emptymiddle}{
frame code={fill=myblue,draw=myblue!75!black] (frame.south west)--(frame.north west)
--(frame.north east)--(frame.south east)--cycle;
\path[coltria] ([xshift=2.5mm,yshift=-1mm]frame.north west) -- +(240:2mm)
-- +(300:2mm) -- cycle;
\path[coltria] ([xshift=2.5mm,yshift=1mm]frame.south west) -- +(120:2mm)
-- +(60:2mm) -- cycle;
},%%
interior code={\path[fill=mygray!90,draw=mygray] (interior.south west|-frame.south)
--(interior.north west|-frame.north)--(interior.north east|-frame.north)
--(interior.south east|-frame.south)--cycle; },
},%%%%%%%%%%%%%%%%%%%%%%%
%&&&&&&&&&&&&&&&&&&&&&&&&&&&
% code for the last part of a break sequence:
skin last is subskin of={emptylast}{%
frame code={fill=myblue,draw=myblue!75!black] (frame.south west)--(frame.north west)
--(frame.north east)--([yshift=5mm]frame.south east)
--([xshift=-5mm]frame.south east)--cycle;
\path[coltria] ([xshift=2.5mm,yshift=-1mm]frame.north west) -- +(240:2mm)
-- +(300:2mm) -- cycle;
},
interior code={\path[fill=mygray!90,draw=mygray]
    (frame.west|-interior.north west) -- (frame.east|-interior.north east) --   
    ([yshift=8pt]frame.east|-interior.south east) -- 
    ([xshift=-8pt]frame.east|-interior.south east) --
    (frame.west|-interior.south west) -- cycle; },
},
%&&&&&&&&&&&&&&&&&&&&&&&&&&
  fonttitle=\bfseries\sffamily
},
%%%%%%%%%%%%%=================================================%%%%%%%%%%%%%%%%%%%%%%
lemstyle/.style={
  breakable,
  freelance,
  boxrule=2pt,
  width=\linewidth,
  frame code={%
  \path[fill=zanahoria,draw=zanahoria!75!black]
    (frame.north west) -- ([xshift=-8pt]frame.north east) --
    ([yshift=-8pt]frame.north east) -- (frame.north east|-interior.north east) --
   (frame.north west|-interior.north west) -- cycle;
  },
  interior titled code={
  \path[fill=mygray!80,draw=mygray]
    (frame.west|-interior.north west) -- (frame.east|-interior.north east) --   
    ([yshift=8pt]frame.east|-interior.south east) -- 
    ([xshift=-8pt]frame.east|-interior.south east) --
    (frame.west|-interior.south west) -- cycle;
  },
  %%%%%%%%%%%%%%5--------------------------------
 %%code for the first part of a break sequence:
skin first is subskin of={emptyfirst}{%
frame code={%
    \path[fill=zanahoria,draw=zanahoria!75!black]
    (frame.north west) -- ([xshift=-8pt]frame.north east) --
    ([yshift=-8pt]frame.north east) -- (frame.north east|-interior.north east) --
   (frame.north west|-interior.north west) -- cycle;
    },%%%%%%%%%%%%%%%
interior titled code={
   \path[fill=mygray!90,draw=mygray]
    (frame.west|-interior.north west) -- (frame.east|-interior.north east) --   
    (frame.east|-interior.south east) -- 
    (frame.east|-interior.south east) --
    (frame.west|-interior.south west) -- cycle;
    },
},%%%%%%%%%%%%%%%%%%%%%
%% code for the middle part of a break sequence:
skin middle is subskin of={emptymiddle}{
frame code={fill=zanahoria,draw=zanahoria!75!black] (frame.south west)--(frame.north west)
--(frame.north east)--(frame.south east)--cycle;
\path[coltria] ([xshift=2.5mm,yshift=-1mm]frame.north west) -- +(240:2mm)
-- +(300:2mm) -- cycle;
\path[coltria] ([xshift=2.5mm,yshift=1mm]frame.south west) -- +(120:2mm)
-- +(60:2mm) -- cycle;
},%%
interior code={\path[fill=mygray!90,draw=mygray] (interior.south west|-frame.south)
--(interior.north west|-frame.north)--(interior.north east|-frame.north)
--(interior.south east|-frame.south)--cycle; },
},%%%%%%%%%%%%%%%%%%%%%%%
%&&&&&&&&&&&&&&&&&&&&&&&&&&&
% code for the last part of a break sequence:
skin last is subskin of={emptylast}{%
frame code={fill=zanahoria,draw=zanahoria!75!black] (frame.south west)--(frame.north west)
--(frame.north east)--([yshift=5mm]frame.south east)
--([xshift=-5mm]frame.south east)--cycle;
\path[coltria] ([xshift=2.5mm,yshift=-1mm]frame.north west) -- +(240:2mm)
-- +(300:2mm) -- cycle;
},
interior code={\path[fill=mygray!90,draw=mygray]
    (frame.west|-interior.north west) -- (frame.east|-interior.north east) --   
    ([yshift=8pt]frame.east|-interior.south east) -- 
    ([xshift=-8pt]frame.east|-interior.south east) --
    (frame.west|-interior.south west) -- cycle; },
},
%&&&&&&&&&&&&&&&&&&&&&&&&&&
  fonttitle=\bfseries\sffamily
},
%%%%%%%%%%%%%%% ==================================== %%%%%%%%%%%%%%%%%%%%%%%%%%
defstyle/.style={
  breakable,
  freelance,
  boxrule=2pt,
  width=\linewidth,
  frame code={%
  \path[top color=myblue!50,bottom color=myblue!50,
    middle color=myblue!50]
    ([xshift=8pt]frame.north west) -- ([xshift=-8pt]frame.north east) --
    ([yshift=-8pt]frame.north east) -- 
    (frame.north east|-interior.north east) --
    (frame.north west|-interior.north west) -- 
    ([yshift=-8pt]frame.north west) -- cycle;
  },
  interior titled code={
  \path[fill=mygray!80]
    (frame.west|-interior.north west) -| 
    ([yshift=8pt]frame.east|-interior.south east) -- 
    ([xshift=-8pt]frame.east|-interior.south east) -- 
    ([xshift=8pt]frame.west|-interior.south west) -- 
    ([yshift=8pt]frame.west|-interior.south west) -- cycle;
  \path[fill=myblue] 
    ([xshift=0.5\pgflinewidth,yshift=1.5pt]frame.west|-interior.north west) 
    rectangle 
    ([xshift=-0.5\pgflinewidth,yshift=-1.5pt]frame.east|-interior.north east);
  },
   %%%%%%%%%%%%%%5--------------------------------
 %%code for the first part of a break sequence:
skin first is subskin of={emptyfirst}{%
frame code={%
    \path[top color=myblue!50,bottom color=myblue!50,
    middle color=myblue!50]
    ([xshift=8pt]frame.north west) -- ([xshift=-8pt]frame.north east) --
    ([yshift=-8pt]frame.north east) -- 
    (frame.north east|-interior.north east) --
    (frame.north west|-interior.north west) -- 
    ([yshift=-8pt]frame.north west) -- cycle;
    \path[fill=myblue] 
    ([xshift=0.5\pgflinewidth,yshift=1.5pt]frame.west|-interior.north west) 
    rectangle 
    ([xshift=-0.5\pgflinewidth,yshift=-1.5pt]frame.east|-interior.north east);
    },%%%%%%%%%%%%%%%
interior titled code={
   \path[fill=mygray!90,draw=mygray]
    (frame.west|-interior.north west) -- (frame.east|-interior.north east) --   
    (frame.east|-interior.south east) -- 
    (frame.east|-interior.south east) --
    (frame.west|-interior.south west) -- cycle;
    },
},%%%%%%%%%%%%%%%%%%%%%
%% code for the middle part of a break sequence:
skin middle is subskin of={emptymiddle}{
frame code={top color=myblue!50,bottom color=myblue!50,
    middle color=myblue!50] (frame.south west)--(frame.north west)
--(frame.north east)--(frame.south east)--cycle;
\path[coltria] ([xshift=2.5mm,yshift=-1mm]frame.north west) -- +(240:2mm)
-- +(300:2mm) -- cycle;
\path[coltria] ([xshift=2.5mm,yshift=1mm]frame.south west) -- +(120:2mm)
-- +(60:2mm) -- cycle;
},%%
interior code={\path[fill=mygray!90,draw=mygray] (interior.south west|-frame.south)
--(interior.north west|-frame.north)--(interior.north east|-frame.north)
--(interior.south east|-frame.south)--cycle; },
},%%%%%%%%%%%%%%%%%%%%%%%
%&&&&&&&&&&&&&&&&&&&&&&&&&&&
% code for the last part of a break sequence:
skin last is subskin of={emptylast}{%
frame code={top color=myblue!50,bottom color=myblue!50,
    middle color=myblue!50] (frame.south west)--(frame.north west)
--(frame.north east)--([yshift=5mm]frame.south east)
--([xshift=-5mm]frame.south east)--cycle;
\path[coltria] ([xshift=2.5mm,yshift=-1mm]frame.north west) -- +(240:2mm)
-- +(300:2mm) -- cycle;
},
interior code={
  \path[fill=mygray!80]
    (frame.west|-interior.north west) -| 
    ([yshift=8pt]frame.east|-interior.south east) -- 
    ([xshift=-8pt]frame.east|-interior.south east) -- 
    ([xshift=8pt]frame.west|-interior.south west) -- 
    ([yshift=8pt]frame.west|-interior.south west) -- cycle;
  },
},
%&&&&&&&&&&&&&&&&&&&&&&&&&&
  fonttitle=\bfseries\sffamily\normalcolor
}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\mtcbmaketheorem{coro}{Corolario}{thmstyle}{corolario}{cor}
\mtcbmaketheorem{defi}{Definici\'on}{defstyle}{defi}{df}
\mtcbmaketheorem{lema}{Lema}{thmstyle}{lemm}{lm}
\mtcbmaketheorem{teo}{Teorema}{lemstyle}{teorema}{th}
\mtcbmaketheorem{proposicion}{Proposici\'on}{defstyle}{prop}{pr}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%notas para recordar algo%%%%%%%%%%%%%%
\newenvironment{notax}[1]{
\begin{tikzpicture}[pencildraw/.style={ %
    decorate,
    decoration={random steps,segment length=2pt,amplitude=1pt}
    } %
]
\node[
preaction={fill=black,opacity=.5,transform canvas={xshift=1mm,yshift=-1mm}},
pencildraw,draw,fill=paper,text width=.8\textwidth,inner sep=5mm] 
{#1};
\end{tikzpicture}
}{\vskip 20pt}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newtcolorbox{nota}{%
    enhanced jigsaw, breakable, % allow page breaks
    frame hidden, % hide the default frame
    overlay={%
        \draw [
            fill=ptcbackground, % fill paper
            draw=zanahoria, % boundary colour
            decorate, % decoration
            decoration={random steps,segment length=2pt,amplitude=1pt},
            drop shadow, % shadow
        ]
        % top line
        (frame.north west)--(frame.north east)--
        % right line
        (frame.north east)--(frame.south east)--
        % bottom line
        (frame.south east)--(frame.south west)--
        % left line
        (frame.south west)--(frame.north west);
    },
    % paragraph skips obeyed within tcolorbox
    parbox=false,
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%Myblock%%%%%%%%%%%%%%%%%%%%%%%
\tcbset{
mybox/.style={
  breakable,
  enhanced standard,
  boxrule=0.4pt,titlerule=-0.2pt,drop fuzzy shadow,
  width=\linewidth,
  title style={top color=zanahoria!30,bottom color=zanahoria!2.5},
  overlay unbroken and first={
    \path[fill=zanahoria]
    ([xshift=5pt,yshift=-\pgflinewidth]frame.north west) to[out=0,in=180] ([xshift=20pt,yshift=-5pt]title.south west) -- ([xshift=-20pt,yshift=-5pt]title.south east) to[out=0,in=180] ([xshift=-5pt,yshift=-\pgflinewidth]frame.north east) -- cycle;
  },
  fonttitle=\Large\bfseries\sffamily,
  fontupper=\sffamily,
  fontlower=\sffamily,
  before=\par\medskip\noindent,
  after=\par\medskip,
  center title,
  toptitle=3pt,
  top=11pt,topsep at break=-5pt,
  colback=white
}}

\newtcolorbox{MyBlock}[2][\linewidth]{mybox,width=#1,title=#2}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%solucion%%%%%%%%%%%%%%%%%%
\newcounter{solucion}[chapter]
%\renewcommand\theexample{\thesection.\arabic{example}}

\tcbset{solucionbox/.style={%
 title={Soluci\'on},
 breakable,
 leftrule=0pt,
 arc=0pt,
 colback=white,
 colframe=titlebgdark,
 enhanced,
 colbacktitle=white,
 coltitle=titlebgdark,
 titlerule=0pt,
 enlarge left by=-4mm,
 width=\linewidth+4mm,
 enlarge top by=2pt,
 overlay unbroken={\draw[titlebgdark,line width=2pt] (frame.north west)++(0,0.25mm) --++(4cm,0pt);
                      \draw[white,line width=10mm] (frame.south west) --++(8cm,0pt) node (P) {};
                      \fill[titlebgdark] (P) rectangle ++(6pt,6pt) ;},%
 overlay first={\draw[titlebgdark,line width=2pt] (frame.north west)++(0,1pt) --++(4cm,0pt);},%
 overlay last={\draw[white,line width=10mm] (frame.south west) --++(8cm,0pt) node (P) {};
                       \fill[titlebgdark] (P) rectangle ++(6pt,6pt) ;},%
 }%
}

\newenvironment{solucion}{%
  \tcolorbox[solucionbox]}%
 {\endtcolorbox}
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 %%%%%%%%%%%%%%%%%%%%%%%%prueba%%%%%%%%%%%%%%%%%%
\newcounter{prueba}[chapter]
%\renewcommand\theexample{\thesection.\arabic{example}}

\tcbset{pruebabox/.style={%
 title={Prueba},
 breakable,
 leftrule=0pt,
 arc=0pt,
 colback=white,
 colframe=cyan,
 enhanced,
 colbacktitle=white,
 coltitle=cyan,
 titlerule=0pt,
 enlarge left by=-4mm,
 width=\linewidth+4mm,
 enlarge top by=2pt,
 overlay unbroken={\draw[cyan,line width=2pt] (frame.north west)++(0,0.25mm) --++(4cm,0pt);
                      \draw[white,line width=10mm] (frame.south west) --++(8cm,0pt) node (P) {};
                      \fill[cyan] (P) rectangle ++(6pt,6pt) ;},%
 overlay first={\draw[cyan,line width=2pt] (frame.north west)++(0,1pt) --++(4cm,0pt);},%
 overlay last={\draw[white,line width=10mm] (frame.south west) --++(8cm,0pt) node (P) {};
                       \fill[cyan] (P) rectangle ++(6pt,6pt) ;},%
 }%
}

\newenvironment{prueba}{%
  \tcolorbox[pruebabox]}%
 {\hfill \textcolor{ptctitle}{$\blacksquare$}(q.e.d)\endtcolorbox}
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 %%%%%%%%%%%%%%%%%%%%%%%%%%%% axiomas y propiedades%%%%%%%%%%%%%%%%%5
 \newcounter{propiedades}[chapter]
 \newcommand{\mytitle}[1]{
    \node[fill=ptctitle,
        rounded corners,
        draw=white,
        line width=2pt,
        drop shadow,
        %text width=0.4\linewidth,
        inner sep=8pt,
       ]
    at (frame.north){\bfseries\textcolor{white}{#1}};
}

\newtcolorbox{propiedades}[2][]{
    enhanced,
    overlay={\mytitle{Propiedades~\refstepcounter{propiedades}\thesection.\thepropiedades~#2}},
    borderline={2pt}{0mm}{ptctitle},
    borderline={.7pt}{1mm}{zanahoria},
    frame hidden,
    arc=3mm,
%    sidebyside,
%    lefthand width=2.5cm,
%    segmentation hidden,
    top=15pt,
    #1
}
%%%%%%%%%%%%%%%%%%%%%

\newtcolorbox{propiedad}[2][]{
    enhanced,
    overlay={\mytitle{Propiedad~\refstepcounter{propiedades}\thesection.\thepropiedades~#2}},
    borderline={2pt}{0mm}{ptctitle},
    borderline={.7pt}{1mm}{ptctitle},
    frame hidden,
    arc=3mm,
%    sidebyside,
%    lefthand width=2.5cm,
%    segmentation hidden,
    top=15pt,
    #1
}
%%%%%%%%%%%%%%% Axioma
\newcounter{axioma}[chapter]
 \newcommand{\axiomatitle}[1]{
    \node[fill=zanahoria,
        rounded corners,
        draw=white,
        line width=2pt,
        drop shadow,
        %text width=0.4\linewidth,
        inner sep=8pt,
       ]
    at (frame.north){\bfseries\textcolor{white}{#1}};
}

\newtcolorbox{axioma}[2][]{
    enhanced,
    overlay={\axiomatitle{Axioma~\refstepcounter{axioma}\thesection.\theaxioma~#2}},
    borderline={2pt}{0mm}{zanahoria},
    borderline={.7pt}{1mm}{ptctitle},
    frame hidden,
    arc=3mm,
    %sidebyside,
    %lefthand width=2.5cm,
    %segmentation hidden,
    top=15pt,
    #1
}
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 %%%%%%%%%%%%%%%%codigo R%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\lstset{
    frame=tb,                        %opciones de bordes
    framerule=0pt,
    aboveskip=3mm,
    belowskip=3mm,
    framextopmargin=3pt,
    framexbottommargin=3pt,
    framexleftmargin=0.2cm,
    framesep=0pt,
    rulesep=.4pt,
    backgroundcolor=\color{gray97},  %opciones de color
    rulesepcolor=\color{black},
    stringstyle=\color{mauve},
    showstringspaces = false,        %opciones de letra y estilo
    basicstyle=\small\ttfamily,
    commentstyle=\color{dkgreen},
    keywordstyle=\color{blue},
    numbers=left,
    numbersep=-6.5pt,
    numberstyle=\tiny\color{gray},
    numberfirstline = false,
    breaklines=true,
    morekeywords={*,...},
    language=R
   }
\newtcblisting[auto counter,number within=section]{rcode}{
  listing engine=minted,
  breakable,
  colback=green,
  colframe=black!70,
  listing only,
  minted style=colorful,
  minted language=R,
  minted options={numbersep=3mm,texcl=true,linenos=true},
  left=5mm,enhanced,
  overlay={\begin{tcbclipinterior}\fill[black!25] (frame.south west)
            rectangle ([xshift=5mm]frame.north west);\end{tcbclipinterior}},
            title={Script~\thetcbcounter },
            colback=ptcbackground!40,colframe=ptctitle
}
\newtcblisting[auto counter,number within=section]{mybox}[2][]{%
listing engine=minted,
  breakable,
colback=zanahoria!5!white,
colframe=zanahoria!90!black,
minted options={numbersep=3mm,texcl=true,linenos=true},
minted style=colorful,
minted language=R,
fonttitle=\bfseries,
title={#2~\thetcbcounter},#1}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%% cajas para remark %%%%%%%%%%%%%%%%%%%%%%%%%%5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\definecolor{boxbg}{RGB}{179,222,255}
\tcbset{
  common/.style={
    before=\vskip2\baselineskip\noindent,
    after=\vskip2\baselineskip,
    enhanced,
    colback=boxbg,
    frame code={},
    fontupper=\normalsize,
  }
}

\newtcolorbox{ideabox}{
common,
interior code={
  \filldraw[ultra thick,densely dashed,fill=boxbg,draw=black,rounded corners=10pt] (interior.north west) rectangle (interior.south east);
  \node at  ([xshift=-30pt,yshift=5pt]interior.north east) {\includegraphics[width=2.5cm]{lightbulb}};
  }
\vspace*{20pt}}
\newtcolorbox{questionbox}{
common,
interior code={
  \filldraw[ultra thick,densely dashed,fill=boxbg,draw=black,rounded corners=10pt] (interior.north west) rectangle (interior.south east);
  \node at  ([xshift=-30pt,yshift=5pt]interior.north east) {\includegraphics[width=1.5cm,angle=-30]{questionmark}};
  }
\vspace*{20pt}}
\newtcolorbox{apunte}{
common,
interior code={
  \filldraw[ultra thick,densely dashed,fill=boxbg,draw=black,rounded corners=10pt] (interior.north west) rectangle (interior.south east);
  \node at  ([xshift=-30pt,yshift=5pt]interior.north east) {\includegraphics[width=1.5cm]{apuntes}};
  }
\vspace*{20pt}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Encabezados y pie de p\'agina %%%%%%%%%%%%%%%%%%%%
\pagestyle{fancy}
\fancyhf{}
%%%%%%%%%%%%%%%%%%%%encabezado%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\fancyhead[LE]{\hspace*{-0.2\headwidth}\colorbox{ptctitle!20}{\makebox[\dimexpr0.2\headwidth-2\fboxsep][r]{\strut\bf\color{ptctitle}\thepage}}%
               \colorbox{zanahoria!60}{\makebox[\dimexpr\headwidth-2\fboxsep][l]{\strut\bf\color{white}\sffamily\itshape\small\protect\nouppercase{\rightmark}}}}
 %%%%%%%%%%%%%%%%%%%%%%%%%%%              
\fancyhead[LO]{\colorbox{zanahoria!60}{\makebox[\dimexpr\headwidth-2\fboxsep][r]{\strut\bf\color{white}\sffamily\itshape\small\protect\nouppercase{\rightmark}}}%
                \colorbox{ptctitle!20}{\makebox[\dimexpr0.2\headwidth-2\fboxsep][r]{\strut\bf\color{ptctitle}\thepage}}}
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% pies de p\'agina %%%%%%%%%%%%%%%%
 \fancyfoot[LE]{\hspace*{-0.2\headwidth}\colorbox{ptctitle!20}{\makebox[\dimexpr 0.6\headwidth-2\fboxsep][r]{\strut\bf\color{ptctitle}Estad\'istica y Probabiliad}}%
               \colorbox{zanahoria!60}{\makebox[\dimexpr 0.6\headwidth-2\fboxsep][l]{\strut\bf\color{white}\sffamily\itshape\small\protect\nouppercase{Autor1\hfill Autor2 \hfill Autor3}}}}               
               %%%%%%%%%%%%%%%%%%%%%%
                \fancyfoot[LO]{\hspace*{-0.2\headwidth}\colorbox{ptctitle!20}{\makebox[\dimexpr0.6\headwidth-2\fboxsep][c]{\strut\bf\color{ptctitle}Estad\'istica y Probabiliad}}%
               \colorbox{zanahoria!60}{\makebox[\dimexpr0.6\headwidth-2\fboxsep][r]{\strut\bf\color{white}\sffamily\itshape\small\protect\nouppercase{Autor1\hfill Autor2 \hfill Autor3}}}}               
%%%%%%%%%%%%%%%%%               
\renewcommand{\headrulewidth}{0pt}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 % Entorno y contador para ejercicios propuestos
        \newcounter{propuesto}
        \def\theejerciciobis{\arabic{propuesto}}
        \newenvironment{ejercicios propuestos}{{\subsection{Ejercicios
        propuestos}}%
        \vspace{-5mm}\tikz \path[draw=orange,line width=3pt] (0,1) -- (10,1) ;\newline\begin{list}{\bfseries{\thepropuesto.}}{}}
        {\end{list}\bigskip}
        \def\propuesto{\refstepcounter{propuesto}\item}

        % Entorno y contador para ejercicios resueltos
        \newcounter{resuelto}
        \def\theejercicio{\arabic{resuelto}}
        \newenvironment{ejercicios resueltos}{{\subsection{Ejercicios
        resueltos}}%
        \vspace{-5mm}\tikz \path[draw=orange, line width=3pt] (0,1) -- (1,1) -- (10,1) ;\newline
        \rule{0mm}{6mm}¡Antes de ver la soluci\'on de un ejercicio debes intentar resolverlo!\newline
       %\indent \psline[linewidth=.75pt](-.5,0)(10,0)\newline
        \begin{list}{{\bfseries Ejercicio resuelto\ {{\theresuelto}}}}{}}
        {\end{list}\bigskip}
        \def\resuelto{\refstepcounter{resuelto}\item}
\endinput
%% final del archivo `libro-matua.cls'.
