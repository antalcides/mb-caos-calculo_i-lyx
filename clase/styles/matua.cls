%%mar 02 jul 2013 08:37:23 COT --+%%
%% This is file `matua.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% classes.dtx  (with options: `matua')
%% 
%% This is a generated file.
%% 
%% Copyright 1993 1994 1995 1996 1997 1998 1999 2000 2001
%% The LaTeX3 Project and any individual authors listed elsewhere
%% in this file.
%% 
%% This file was generated from file(s) of the LaTeX base system.
%% --------------------------------------------------------------
%% 
%% It may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.2
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%    http://www.latex-project.org/lppl.txt
%% and version 1.2 or later is part of all distributions of LaTeX
%% version 1999/12/01 or later.
%% 
%% This file may only be distributed together with a copy of the LaTeX
%% base system. You may however distribute the LaTeX base system without
%% such generated files.
%% 
%% The list of all files belonging to the LaTeX base distribution is
%% given in the file `manifest.txt'. See also `legal.txt' for additional
%% information.
%% 
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
\ProvidesClass{matua}
              [
03/07/2013 v0.1 the matua LaTeX class:^^J
^^J%
****************************************************^^J%
Antalcides Olivo,^^J%
****************************************************^^J%
]
\newcommand\@ptsize{}
\newif\if@matuamake@frame \@matuamake@framefalse
\newif\if@restonecol
\newif\if@titlepage
\newif\if@authorinfo \@authorinfofalse
\newif\if@multilabels \@multilabelsfalse
\newif\if@multiauthors \@multiauthorsfalse
\newif\if@toc \@tocfalse
\newif\if@resumenes \@resumenesfalse
\newif\if@noticias \@noticiasfalse
\newif\if@problemas \@problemasfalse
\@titlepagetrue
\newif\if@openright
\newif\if@mainmatter \@mainmattertrue
\if@compatibility\else
\DeclareOption{a4paper}
   {\setlength\paperheight {297mm}%
    \setlength\paperwidth  {210mm}}
\DeclareOption{a5paper}
   {\setlength\paperheight {210mm}%
    \setlength\paperwidth  {148mm}}
\DeclareOption{b5paper}
   {\setlength\paperheight {250mm}%
    \setlength\paperwidth  {176mm}}
\DeclareOption{letterpaper}
   {\setlength\paperheight {11in}%
    \setlength\paperwidth  {8.5in}}
\DeclareOption{legalpaper}
   {\setlength\paperheight {14in}%
    \setlength\paperwidth  {8.5in}}
\DeclareOption{executivepaper}
   {\setlength\paperheight {10.5in}%
    \setlength\paperwidth  {7.25in}}
\DeclareOption{landscape}
   {\setlength\@tempdima   {\paperheight}%
    \setlength\paperheight {\paperwidth}%
    \setlength\paperwidth  {\@tempdima}}
\fi
\if@compatibility
  \renewcommand\@ptsize{0}
\else
\DeclareOption{10pt}{\renewcommand\@ptsize{0}}
\fi
\DeclareOption{11pt}{\renewcommand\@ptsize{1}}
\DeclareOption{12pt}{\renewcommand\@ptsize{2}}
\if@compatibility\else
\DeclareOption{oneside}{\@twosidefalse \@mparswitchfalse}
\fi
\DeclareOption{twoside}{\@twosidetrue  \@mparswitchtrue}
\DeclareOption{draft}{%
              \setlength\overfullrule{5pt}%
               \def\eu@logo{{\sf Proyecciones Matem\'{a}ticas Del Caribe}}}
\if@compatibility\else
\DeclareOption{final}{%
              \def\doeulogo{\usepackage{va}%
                   \def\enne{\setbox0=\hbox{\vafont n}\hbox to0pt{$\bf\tilde{\hphantom{\vafont i}}$}\box0}}
               \def\eu@logo{{\sf Proyecciones Matem\'{a}ticas Del Caribe}}
               \def\matua@prefix{matua\csname thechapter\endcsname}
               \@multilabelstrue
               \setlength\overfullrule{0pt}}
\fi
\DeclareOption{makeframe}{\@matuamake@frametrue}
\DeclareOption{titlepage}{\@titlepagetrue}
\if@compatibility\else
\DeclareOption{notitlepage}{\@titlepagefalse}
\fi
\if@compatibility
\@openrighttrue
\else
\DeclareOption{openright}{\@openrighttrue}
%\DeclareOption{openany}{\@openrightfalse}
\fi
\if@compatibility\else
\DeclareOption{onecolumn}{\@twocolumnfalse}
\fi
\DeclareOption{twocolumn}{\@twocolumntrue}
\DeclareOption{leqno}{\input{leqno.clo}}
\DeclareOption{nomultilabels}{%
                            \def\matua@prefix{}
                             \@multilabelsfalse}
\DeclareOption{multilabels}{%
                            \def\matua@prefix{matua\csname thechapter\endcsname}
                    \@multilabelstrue}
\DeclareOption{fleqn}{\input{fleqn.clo}}
\DeclareOption{openbib}{%
  \AtEndOfPackage{%
   \renewcommand\@openbib@code{%
      \advance\leftmargin\bibindent
      \itemindent -\bibindent
      \listparindent \itemindent
      \parsep \z@
      }%
   \renewcommand\newblock{\par}}%
}
\ExecuteOptions{letterpaper,11pt,twoside,onecolumn,draft,openright,notitlepage,nomultilabels}
\ProcessOptions
\input{bk1\@ptsize.clo}
\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}
\renewcommand\baselinestretch{}
\setlength\parskip{0\p@ \@plus \p@}
%
\newcount\chapterpageno%
\chapterpageno=-1 %\count0 is the page number
%
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301
\setcounter{topnumber}{2}
\renewcommand\topfraction{.7}
\setcounter{bottomnumber}{1}
\renewcommand\bottomfraction{.3}
\setcounter{totalnumber}{3}
\renewcommand\textfraction{.2}
\renewcommand\floatpagefraction{.5}
\setcounter{dbltopnumber}{2}
\renewcommand\dbltopfraction{.7}
\renewcommand\dblfloatpagefraction{.5}
\def\ps@headings{%
      \let\@oddfoot\@empty\let\@evenfoot\@empty
      \def\@evenheadtext{\ifnum\thepage=\chapterpageno\cap@logo%
         \else\thepage\hfil\leftmark\hfil\fi}
      \def\@oddheadtext{\ifnum\thepage=\chapterpageno\cap@logo%
        \else{\hfill\rightmark\hfill\thepage}\fi}
      \def\@evenhead{\@evenheadtext}%
      \def\@oddhead{\@oddheadtext}%%
      % make the chapter foot empty:
      %\def\@oddfoot{\ifnum\thepage=\chapterpageno\centerline{\thepage}\fi}
      \def\@oddfoot{}
      \def\@evenfoot{}
      \let\@mkboth\markboth
      \def\chaptmatuaark##1{%
        \markboth{{\tenpointsize\noexpand\@markauthor}}{{\tenpointsize ##1}}}
    \def\sectionmark##1{}}
\def\ps@myheadings{%
    \let\@oddfoot\@empty\let\@evenfoot\@empty
    \def\@evenhead{\thepage\hfil\slshape\leftmark}%
    \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
    \let\@mkboth\@gobbletwo
    \let\chaptmatuaark\@gobble
    \let\sectionmark\@gobble
    }
\newcommand\maketitle{%
  \def\@donothing##1{\relax}
  \let\thanks\@donothing
  \let\@thanks\@empty
  \setcounter{footnote}{0}%
  \chapter{\@contentstitle}%
  \@multiauthorsfalse 
  \begingroup 
  \def\address##1{\global\@authorinfotrue\ignorespaces} \def\mail##1{\global\@authorinfotrue\ignorespaces}
  \def\institute##1{\global\@authorinfotrue {\fontspecialpage ##1}\ignorespaces}
  \DeclareRobustCommand\\{%
  \let \reserved@e \relax
  \let \reserved@f \relax
  \@ifstar{\let \reserved@e \vadjust \let \reserved@f \nobreak
             \@xnewline}%
          \@xnewline}
  \def\and{%                  % \begin{tabular}
     \end{tabular}%
     \global\@multiauthorstrue 
     \hskip 1em \@plus.17fil%
     \begin{tabular}[t]{c}}%   % \end{tabular}
    \global\def\@authorinfotitle{\if@multiauthors\par{\noindent\em \@multiauthortitle}%
         \else\par{\noindent\em \@singleauthortitle}\fi}
    \global\let\@authorinfo=\matua@authorinfo
    \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
    \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
    \long\def\@makefntext##1{\parindent 1em\noindent
            \hb@xt@1.8em{%
                \hss\@textsuperscript{\normalfont\@thefnmark}}##1}%
    \if@twocolumn
      \ifnum \col@number=\@ne
        \@maketitle
      \else
        \twocolumn[\@maketitle]%
      \fi
    \else
      \newpage
      \global\@topnum\z@   % Prevents figures from going at top of page.
      \@maketitle
    \fi
    \@thanks
  \endgroup
  \def\@communicated{\relax}
  \setcounter{footnote}{0}%
  %\global\def\thanks##1{\relax}
  %\global\let\maketitle\relax
  %\global\let\@maketitle\relax
  %\global\let\@thanks\@empty
  %\global\let\@author\@author
  %\global\let\@date\@empty
  %\global\let\@title\@title
  %\global\let\title\relax
  %\global\let\author\relax
  %\global\let\date\relax
  %\global\let\and\relax
}
\def\@maketitle{%
  \newpage
  \null
  \vspace{0em plus.5em}% Change: \vspace{1em plus.5em}
  \begin{center}%
  %\vskip -2.5em
  %\let \footnote \thanks
   \let \thanks \footnote 
    {\bf\large\@title \par}%
    \vskip 1.0em
    {\bf\large\@titulo \par}%
    \vskip 1.0em%
    {%\large
      \lineskip .5em%
      \begin{tabular}[t]{c}%
        \@author
      \end{tabular}\par}%
    \ifx\@communicated\relax\else{\vskip 0em%
      {\@communicated}}\fi
     \lineskip .7em%
      \vskip 0.3ex%
    {\begin{tabular}[t]{lr}%
        \fontspecialpage\small \matua@receivedsname\ \matua@received \kern.4em & \kern.4em
        \fontspecialpage\small \matua@revisedsname\ \matua@revised
      \end{tabular}}%
  \end{center}%
  \hrule width \hsize height 2pt \vspace{2pt} \hrule width \hsize \kern 1mm 
  \par 
  \vskip 1.0em}
\newcommand*\chaptmatuaark[1]{}
\setcounter{secnumdepth}{2}
\newcounter {part}
\newcounter {chapter}
\newcounter {section}[chapter]
\newcounter {subsection}
\newcounter {subsubsection}
\newcounter {paragraph}
\newcounter {subparagraph}
\renewcommand \thepart {\@Roman\c@part}
\renewcommand \thechapter {\@arabic\c@chapter}
\renewcommand\thesection{\@arabic\c@section}
\renewcommand\thesubsection   {\thesection.\@arabic\c@subsection}
\renewcommand\thesubsubsection{\thesubsection.\@arabic\c@subparagraph}
\renewcommand\theparagraph    {\thesubsubsection.\@arabic\c@subparagraph}
\renewcommand\thesubparagraph {\thesubparagraph.\@arabic\c@subparagraph}
\newcommand\@chapapp{\chaptername}
\newcommand\frontmatter{%
    \cleardoublepage
  \@mainmatterfalse
  \pagenumbering{roman}}
\newcommand\mainmatter{%
    \cleardoublepage
  \@mainmattertrue
  \pagenumbering{arabic}}
\newcommand\backmatter{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \@mainmatterfalse}
\newcommand\part{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \thispagestyle{plain}%
  \if@twocolumn
    \onecolumn
    \@tempswatrue
  \else
    \@tempswafalse
  \fi
  \null\vfil
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
       \huge\bfseries \partname\nobreakspace\thepart
       \par
       \vskip 20\p@
     \fi
     \Huge \bfseries #2\par}%
    \@endpart}
\def\@spart#1{%
    {\centering
     \interlinepenalty \@M
     \normalfont
     \Huge \bfseries #1\par}%
    \@endpart}
\def\@endpart{\vfil\newpage
              \if@twoside
               \if@openright
                \null
                \thispagestyle{empty}%
                \newpage
               \fi
              \fi
              \if@tempswa
                \twocolumn
              \fi}
\newcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
                    \global\@topnum\z@
                    \@afterindentfalse
                    \chapterpageno=\thepage%
                    \secdef\@chapter\@schapter}
\let\and=\\
\newif\if@newthema
\def\matuachapter{\@chapter{}}
\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
                       \if@mainmatter
                          \refstepcounter{chapter}%
                          \typeout{Article\space\thechapter.}%
                          \if@newthema{%
                                 \addtocontents{toc}{\vspace{1ex}{\bfseries \sf \string\large{\@themaname}}\par\vspace{.7ex}}%
                              \global\@newthemafalse}
                          \fi
                             \addtocontents{toc}{\noindent\hangafter=0\hangindent=\contents@indent\string\llap{\bf\thepage\kern1em}{\bf \@contentstitle}}%
                             \addtocontents{toc}{\matuanewline {\sl \@contentsauthor}\par}
                       \else
                         \addcontentsline{toc}{chapter}{#1}%
                       \fi
                    \else
                      \addcontentsline{toc}{chapter}{#1}%
                    \fi
		    \pagestyle{headings}
                    \chaptmatuaark{\@marktitle}%
                    \addtocontents{lof}{\protect\addvspace{10\p@}}%
                    \addtocontents{lot}{\protect\addvspace{10\p@}}}
\def\@makechapterhead#1{%
  \vspace*{40\p@}%
  {\parindent \z@ \raggedright \normalfont
    \ifnum \c@secnumdepth >\m@ne
      \if@mainmatter
        %\huge\bfseries \@chapapp\space \thechapter
        %\hbox{\Large\textsc{\thema}}
        %\par\nobreak
        %\vskip 20\p@
      \fi
    \fi
    \interlinepenalty\@M
    \raggedleft\Large\textsc{#1}\par\nobreak   %cambio
    \par\nobreak
    \vskip 20\p@
    \interlinepenalty\@M
    \rule{320pt}{2.5pt}
    \raggedleft\normalsize\uppercase{\@author}\and%
         \if\@from\relax\relax\else{\@from\and}\fi%
         \if\@communicated\relax\relax\else\@communicated\fi\par\nobreak
    \vskip 25\p@
  }}
\def\@schapter#1{\if@twocolumn
                   \@topnewpage[\@makeschapterhead{#1}]%
                 \else
                   \@makeschapterhead{#1}%
                   \@afterheading
                 \fi}
\def\@makeschapterhead#1{%
  \vspace*{50\p@}%
  {\parindent \z@ \raggedright
    \normalfont
    \interlinepenalty\@M
    \Huge \bfseries  #1\par\nobreak
    \vskip 40\p@
  }}
\newcommand\section{\@startsection {section}{1}{\z@}%
                                   {-3.5ex \@plus -1ex \@minus -.2ex}%
                                   {1.0ex \@plus.1ex}%
                                   {\normalfont\bfseries}}
\newcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.0ex \@plus .1ex}%
                                     {\normalfont\bfseries}}
\newcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\normalfont\normalsize\bfseries}}
\newcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                                    {3.25ex \@plus1ex \@minus.2ex}%
                                    {-1em}%
                                    {\normalfont\normalsize\bfseries}}
\newcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
                                       {3.25ex \@plus1ex \@minus .2ex}%
                                       {-1em}%
                                      {\normalfont\normalsize\bfseries}}
\if@twocolumn
  \setlength\leftmargini  {2em}
\else
  \setlength\leftmargini  {2.5em}
\fi
\leftmargin  \leftmargini
\setlength\leftmarginii  {2.2em}
\setlength\leftmarginiii {1.87em}
\setlength\leftmarginiv  {1.7em}
\if@twocolumn
  \setlength\leftmarginv  {.5em}
  \setlength\leftmarginvi {.5em}
\else
  \setlength\leftmarginv  {1em}
  \setlength\leftmarginvi {1em}
\fi
\setlength  \labelsep  {.5em}
\setlength  \labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
\renewcommand\theenumi{\@arabic\c@enumi}
\renewcommand\theenumii{\@alph\c@enumii}
\renewcommand\theenumiii{\@roman\c@enumiii}
\renewcommand\theenumiv{\@Alph\c@enumiv}
\newcommand\labelenumi{\theenumi.}
\newcommand\labelenumii{(\theenumii)}
\newcommand\labelenumiii{\theenumiii.}
\newcommand\labelenumiv{\theenumiv.}
\renewcommand\p@enumii{\theenumi}
\renewcommand\p@enumiii{\theenumi(\theenumii)}
\renewcommand\p@enumiv{\p@enumiii\theenumiii}
\newcommand\labelitemi{\textbullet}
\newcommand\labelitemii{\normalfont\bfseries \textendash}
\newcommand\labelitemiii{\textasteriskcentered}
\newcommand\labelitemiv{\textperiodcentered}
\newenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}}
               {\endlist}
\newcommand*\descriptionlabel[1]{\hspace\labelsep
                                \normalfont\bfseries #1}
\newenvironment{verse}
               {\let\\\@centercr
                \list{}{\itemsep      \z@
                        \itemindent   -1.5em%
                        \listparindent\itemindent
                        \rightmargin  \leftmargin
                        \advance\leftmargin 1.5em}%
                \item\relax}
               {\endlist}
\newenvironment{quotation}
               {\list{}{\listparindent 1.5em%
                        \itemindent    \listparindent
                        \rightmargin   \leftmargin
                        \parsep        \z@ \@plus\p@}%
                \item\relax}
               {\endlist}
\newenvironment{quote}
               {\list{}{\rightmargin\leftmargin}%
                \item\relax}
               {\endlist}
\if@compatibility
\newenvironment{titlepage}
    {%
      \cleardoublepage
      \if@twocolumn
        \@restonecoltrue\onecolumn
      \else
        \@restonecolfalse\newpage
      \fi
      \thispagestyle{empty}%
      \setcounter{page}\z@
    }%
    {\if@restonecol\twocolumn \else \newpage \fi
    }
\else
\newenvironment{titlepage}
    {%
      \cleardoublepage
      \if@twocolumn
        \@restonecoltrue\onecolumn
      \else
        \@restonecolfalse\newpage
      \fi
      \thispagestyle{empty}%
      \setcounter{page}\@ne
    }%
    {\if@restonecol\twocolumn \else \newpage \fi
     \if@twoside\else
        \setcounter{page}\@ne
     \fi
    }
\fi
\newcommand\appendix{\par
  \setcounter{chapter}{0}%
  \setcounter{section}{0}%
  \gdef\@chapapp{\appendixname}%
  \gdef\thechapter{\@Alph\c@chapter}}
\setlength\arraycolsep{5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}
\@addtoreset {equation}{chapter}
% \renewcommand\theequation
%   {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@equation} 
\renewcommand\theequation
  {\@arabic\c@equation} % changed at 6.02.02 matua
\newcounter{figure}[chapter]
\renewcommand \thefigure
     {\@arabic\c@figure}   % changed at 6.02.02 matua
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename\nobreakspace\thefigure}
\newenvironment{figure}
               {\fontspecialpage\@float{figure}}
               {\end@float}
\newenvironment{figure*}
               {\fontspecialpage\@dblfloat{figure}}
               {\end@dblfloat}
\newcounter{table}[chapter]
\renewcommand \thetable
     {\ifnum \c@chapter>\z@ \fi \@arabic\c@table}
     %% original definicion {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename\nobreakspace\thetable}
\newenvironment{table}
               {\fontspecialpage\@float{table}}
               {\end@float}
\newenvironment{table*}
               {\@dblfloat{table}}
               {\end@dblfloat}
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{10\p@}
\setlength\belowcaptionskip{0\p@}
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{#1: #2}%
  \ifdim \wd\@tempboxa >\hsize
    #1: #2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}
\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*\cal{\@fontswitch\relax\mathcal}
\DeclareRobustCommand*\mit{\@fontswitch\relax\mathnormal}
\newcommand\@pnumwidth{1.55em}
\newcommand\@tocrmarg{2.55em}
\newcommand\@dotsep{4.5}
\setcounter{tocdepth}{2}
\def\toc@preamble{%
        \addtocontents{toc}{\string\newpage\parindent0pt\string\fontspecialpage}
        \addtocontents{toc}{\hsize=\hsize@fact\hsize \parskip\contents@parskip%
                \string\enlargethispage\string{2cm\string}}
        \addtocontents{toc}{\string\thispagestyle\string{empty\string}}
        \addtocontents{toc}{\string\contentslogo}
    }
\newcommand\tableofcontents{%
    \if@titlepage\setcounter{page}{-1}\matua@maketitlepage\matua@editboard\fi
    \if@titlepage\else\setcounter{page}{0}\fi
    \pagestyle{plain} 
    \global\def\contentsname{\relax}
    % I must read the toc file before any \addtocontents command in order
    % to allow a second read in at the end of the LaTeX document.
   \IfFileExists{\jobname.toc}{%
    \begingroup
    	\makeatletter \input{\jobname.toc} \makeatother
    \endgroup}{\typeout{No file \jobname.toc}}
	\toc@preamble
    \global\@toctrue
    \global\def\tableofcontents{%
    	\makeatletter
    	\if@titlepage\matua@politica\fi
	\begingroup 
		\@starttoc{toc}
	\endgroup
    	\makeatother
    	}
    }
%
% Create file for the IAA (indice acumulativo de autores) format. 08/11/2007
%
\newcommand\index@ofauthors{%
    \openout3=\jobname.iaa%
    }
\newcommand\showindex[1][\jobname]{%
    \closeout3
    \marktitle{\'Indice acumulativo de autores} 
    \markboth{\'Indice acumulativo de autores}{\'Indice acumulativo de autores}
    \newpage\thispagestyle{empty}
    \vbox{\kern -1em\centerline{\large\sc Indice acumulativo de autores}}
    \vspace{2em}
    \begingroup \parindent0pt \parskip0.5ex
    \makeatletter
    \input{#1.iaa}
    \makeatother
    \endgroup
    }
\newcommand*\l@part[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty{-\@highpenalty}%
    \addvspace{2.25em \@plus\p@}%
    \setlength\@tempdima{3em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      {\leavevmode
       \large \bfseries #1\hfil \hb@xt@\@pnumwidth{\hss #2}}\par
       \nobreak
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}%
    \endgroup
  \fi}
\newcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode 
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}
\newcommand*\l@section{\@dottedtocline{1}{1.5em}{2.3em}}
\newcommand*\l@subsection{\@dottedtocline{2}{3.8em}{3.2em}}
\newcommand*\l@subsubsection{\@dottedtocline{3}{7.0em}{4.1em}}
\newcommand*\l@paragraph{\@dottedtocline{4}{10em}{5em}}
\newcommand*\l@subparagraph{\@dottedtocline{5}{12em}{6em}}
\newcommand\listoffigures{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename}%
      \@mkboth{\MakeUppercase\listfigurename}%
              {\MakeUppercase\listfigurename}%
    \@starttoc{lof}%
    \if@restonecol\twocolumn\fi
    }
\newcommand*\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}
\newcommand\listoftables{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listtablename}%
      \@mkboth{%
          \MakeUppercase\listtablename}%
         {\MakeUppercase\listtablename}%
    \@starttoc{lot}%
    \if@restonecol\twocolumn\fi
    }
\let\l@table\l@figure
\newdimen\bibindent
\setlength\bibindent{1.5em}
\newenvironment{thebibliography}[1]
     {\normalsize \section*{\refname}%
        %\@mkboth{\MakeUppercase\refname}{\MakeUppercase\refname}}%
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
      \endlist \if@authorinfo\@authorinfo\label{article@endpage}\fi
	\matua@addindexentry}
\newcommand\newblock{\hskip .11em\@plus.33em\@minus.07em}
\let\@openbib@code\@empty
\newenvironment{theindex}
               {\if@twocolumn
                  \@restonecolfalse
                \else
                  \@restonecoltrue
                \fi
                \columnseprule \z@
                \columnsep 35\p@
                \twocolumn[\@makeschapterhead{\indexname}]%
                \@mkboth{\MakeUppercase\indexname}%
                        {\MakeUppercase\indexname}%
                \thispagestyle{plain}\parindent\z@
                \parskip\z@ \@plus .3\p@\relax
                \let\item\@idxitem}
               {\if@restonecol\onecolumn\else\clearpage\fi}
\newcommand\@idxitem{\par\hangindent 40\p@}
\newcommand\subitem{\@idxitem \hspace*{20\p@}}
\newcommand\subsubitem{\@idxitem \hspace*{30\p@}}
\newcommand\indexspace{\par \vskip 10\p@ \@plus5\p@ \@minus3\p@\relax}
\renewcommand\footnoterule{%
  \kern-3\p@
  \hrule\@width.4\columnwidth
  \kern2.6\p@}
\@addtoreset{footnote}{chapter}
\newcommand\@makefntext[1]{%
    \parindent 1em%
    \noindent
    \hb@xt@1.8em{\hss\@makefnmark}#1}
\newcommand\contentsname{\vspace{-2ex}}
\newcommand\listfigurename{List of Figures}
\newcommand\listtablename{List of Tables}
\newcommand\bibname{Bibliograf\'\i a}
\newcommand\refname{Referencias}
\newcommand\indexname{Index}
\newcommand\figurename{Figura}
\newcommand\tablename{Tabla}
\newcommand\partname{Part}
\newcommand\chaptername{Chapter}
\newcommand\appendixname{Appendix}
\newcommand\abstractname{Resumen}
\newcommand\keywordsname{Palabras y frases claves:\ }
\newcommand\acknowledgementsname{Agradecimientos}
\newcommand\amsclassificationsname{Clasificaci{\'o}n de la AMS:\ }
\newcommand\matua@receivedsname{Recibido}
\newcommand\matua@revisedsname{Aceptado}
\newcommand\@themaname{Matem\'aticas}
\newcommand\@marktitle{No Title}
\newcommand\@communicated{}
\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}
\def\enero{Enero} \def\febrero{Febrero} \def\marzo{Marzo} \def\abril{Abril}
\def\mayo{Mayo} \def\junio{Junio} \def\julio{Julio} \def\agosto{Agosto}
\def\septiembre{Septiembre} \def\noviembre{Noviembre} \def\diciembre{Diciembre}
\setlength\columnsep{10\p@}
\setlength\columnseprule{0\p@}
\pagestyle{headings}
\pagenumbering{arabic}
\flushbottom
% \if@twoside
% \else
%   \raggedbottom
% \fi
% \if@twocolumn
%   \twocolumn
%   \sloppy
%   \flushbottom
% \else
%   \onecolumn
% \fi
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% Commands for style matua.cls
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\matua@spanish{%
  \renewcommand\keywordsname{Palabras y frases claves:\ }
  \renewcommand\bibname{Bibliograf\'\i a}
  \renewcommand\refname{Referencias}
  \renewcommand\figurename{Figura}
  \renewcommand\tablename{Tabla}
  \renewcommand\abstractname{Resumen}
  \renewcommand\acknowledgementsname{Agradecimientos}
  \renewcommand\amsclassificationsname{Clasificaci{\'o}n de la AMS:\ }
  \renewcommand\matua@receivedsname{Recibido}
  \renewcommand\matua@revisedsname{Aceptado}
  \renewcommand\@singleauthortitle{Direcci\'on del autor}
  \renewcommand\@multiauthortitle{Direcci\'on de los autores}}
\def\matua@english{%
  \renewcommand\keywordsname{Keywords:\ }
  \renewcommand\bibname{Bibliografy}
  \renewcommand\refname{References}
  \renewcommand\figurename{Figure}
  \renewcommand\tablename{Table}
  \renewcommand\abstractname{Abstract}
  \renewcommand\acknowledgementsname{Acknowledgements}
  \renewcommand\amsclassificationsname{AMSC(2000):\ }
  \renewcommand\matua@receivedsname{Received}
  \renewcommand\matua@revisedsname{Accepted}
  \renewcommand\@singleauthortitle{Author's address}
  \renewcommand\@multiauthortitle{Authors' address}}
\def\matuaespanol{\matua@spanish} \def\matuaspanish{\matua@spanish}
\def\matuaingles{\matua@english}   \def\matuaenglish{\matua@english}
\def\hsize@fact{1.0}
\def\contentslinesize#1{%
   \def\hsize@fact{#1}}
\def\contentsparskip#1{%
   \def\contents@parskip{#1}}
\def\contentstopmargin#1{%
   \def\contents@topmargin{#1}}
\def\contents@topmargin{0cm}
\def\contents@parskip{0.125em}
\def\contentsindent#1{%
    \def\contents@indent{#1}}
\def\contents@indent{4em}
%
%----------------------------------------------------------
%
%  matua Names and page's dimensions
%
\def\matua@web/{http:$/\!/$revistamatua.univalle.edu.co}
\def\matua@mail{revismatua@univalle.edu.co}
\def\matuawebaddress#1{%
     \def\matua@web/{#1}}
\def\matuamailaddress#1{%
     \def\matua@mail{#1}}
\def\matuaweb/{\matua@web/}
\def\matuamail/{\matua@mail\relax}
%
\def\matua@priceyear{\$40.000\ }
\def\matua@pricepersonal{\$25.000\ }
\def\matuasuscripcion#1{%
    \def\matua@priceyear{#1}}
\def\matuasuscripcionpersonal#1{%
    \def\matua@pricepersonal{#1}}
%
% change: \matua@textwidth12.1 to \matua@textwidth12.8cm
%         \matua@textheight19.5cm to \matua@textheight21.5cm
\newdimen\matua@textwidth \matua@textwidth13.5cm \newdimen\matua@textheight \matua@textheight20.5cm
\setlength{\hoffset}{0pt}
\setlength{\voffset}{0pt}
\setlength{\textheight}{\matua@textheight}
\setlength{\oddsidemargin}{1cm}
\setlength{\evensidemargin}{1cm}
\setlength{\textwidth}{\matua@textwidth}
\setlength{\topmargin}{28pt}
\setlength{\headheight}{12pt}
\setlength{\headsep}{20pt}
\setlength{\marginparsep}{7pt}
\setlength{\marginparwidth}{71pt}
\setlength{\marginparpush}{5pt}
\setlength{\footskip}{.7cm}% Change: \setlength{\footskip}{1cm}

\def\fontspecialpage{%
  \renewcommand\normalsize{%
   \@setfontsize\normalsize\@xpt\@xiipt%
   \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@%
   \abovedisplayshortskip \z@ \@plus3\p@%
   \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@%
   \belowdisplayskip \abovedisplayskip%
   \let\@listi\@listI}%
\normalsize %
\renewcommand\small{%
   \@setfontsize\small\@ixpt{11}%
   \abovedisplayskip 8.5\p@ \@plus3\p@ \@minus4\p@%
   \abovedisplayshortskip \z@ \@plus2\p@%
   \belowdisplayshortskip 4\p@ \@plus2\p@ \@minus2\p@%
   \def\@listi{\leftmargin\leftmargini%
               \topsep 4\p@ \@plus2\p@ \@minus2\p@%
               \parsep 2\p@ \@plus\p@ \@minus\p@%
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip%
}%
\renewcommand\footnotesize{%
   \@setfontsize\footnotesize\@viiipt{9.5}%
   \abovedisplayskip 6\p@ \@plus2\p@ \@minus4\p@%
   \abovedisplayshortskip \z@ \@plus\p@%
   \belowdisplayshortskip 3\p@ \@plus\p@ \@minus2\p@%
   \def\@listi{\leftmargin\leftmargini%
               \topsep 3\p@ \@plus\p@ \@minus\p@%
               \parsep 2\p@ \@plus\p@ \@minus\p@%
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip%
}%
\renewcommand\scriptsize{\@setfontsize\scriptsize\@viipt\@viiipt}%
\renewcommand\tiny{\@setfontsize\tiny\@vpt\@vipt}%
\renewcommand\large{\@setfontsize\large\@xiipt{14}}%
\renewcommand\Large{\@setfontsize\Large\@xivpt{18}}%
\renewcommand\LARGE{\@setfontsize\LARGE\@xviipt{22}}%
\renewcommand\huge{\@setfontsize\huge\@xxpt{25}}%
\renewcommand\Huge{\@setfontsize\Huge\@xxvpt{30}}}
\def\tenpointsize{\protect\fontspecialpage}

% Resumenes y agradecimientos
%-----------------------------------------------------------------------------
\newcommand{\smalllineskip}{\baselineskip=10pt}
\newenvironment{abstract}[1][spanish]{%
        \fontspecialpage%
        \parindent0pt%
        \if@resumenes\else\expandafter\csname matua@#1\endcsname\small\centerline{\bf\abstractname}%
           \nopagebreak\vspace{0ex}\nopagebreak\smalllineskip\fi%
        \if@resumenes{\noindent \bf Resumen:\ }\fi}{\matua@spanish\vspace{2ex}}
\def\keywords#1{\par\vspace{0.5em}\smalllineskip\textbf{\keywordsname}#1\par}
\def\amssubject#1{\par\vspace{0.5em}\smalllineskip\textbf{\amsclassificationsname}#1\par}
\def\acknowledgements{\paragraph{\acknowledgementsname}}
%
%--------------------------------------------------------------------------------
\def\@sect#1#2#3#4#5#6[#7]#8{%
  \ifnum #2>\c@secnumdepth
    \let\@svsec\@empty
  \else
    \refstepcounter{#1}%
    \protected@edef\@svsec{\@seccntformat{#1}\relax}%
  \fi
  \@tempskipa #5\relax
  \ifdim \@tempskipa>\z@
    \begingroup
      #6{%
        \@hangfrom{\hskip #3\relax\@svsec}%
          \interlinepenalty \@M #8\@@par}%
    \endgroup
    \csname #1mark\endcsname{#7}%
%     \addcontentsline{toc}{#1}{%
%       \ifnum #2>\c@secnumdepth \else
%         \protect\numberline{\csname the#1\endcsname}%
%       \fi
%       #7}%
  \else
    \def\@svsechd{%
      #6{\hskip #3\relax
      \@svsec #8}%
      \csname #1mark\endcsname{#7}}%
  \fi
  \@xsect{#5}}

\def\ref#1{\expandafter\@setref\csname r@\matua@prefix#1\endcsname\@firstoftwo{\matua@prefix#1}}
\def\ref@thepage#1{\expandafter\@setref\csname r@\matua@prefix#1\endcsname\@secondoftwo{\matua@prefix#1}}

\def\label#1{\@bsphack
  \protected@write\@auxout{}%
         {\string\newlabel{\matua@prefix#1}{{\@currentlabel}{\thepage}}}%
  \@esphack}

\def\@lbibitem[#1]#2{\item[\@biblabel{#1}\hfill]\if@filesw
      {\let\protect\noexpand
       \immediate
       \write\@auxout{\string\bibcite{#2}{\matua@prefix#1}}}\fi\ignorespaces}
\def\@bibitem#1{\item\if@filesw \immediate\write\@auxout
       {\string\bibcite{\matua@prefix#1}{\the\value{\@listctr}}}\fi\ignorespaces}

\DeclareRobustCommand\cite{%
  \@ifnextchar [{\@tempswatrue\@citex}{\@tempswafalse\@citex[]}}
\def\@citex[#1]#2{%
  \let\@citea\@empty
  \@cite{\@for\@citeb:=#2\do
    {\@citea\def\@citea{,\penalty\@m\ }%
     \edef\@citeb{\expandafter \matua@prefix\@firstofone\@citeb\@empty}%
     \if@filesw\immediate\write\@auxout{\string\citation{\@citeb}}\fi
     \@ifundefined{b@\@citeb}{\mbox{\reset@font\bfseries ?}%
       \G@refundefinedtrue
       \@latex@warning
         {Citation `\@citeb' on page \thepage \space undefined}}%
       {\hbox{\csname b@\@citeb\endcsname}}}}{#1}}


\def\ps@plain{\let\@mkboth\@gobbletwo
    \def\@oddhead{\centerline{\@marktitle}} \let\@evenhead\@oddhead
    \def\@oddfoot{\centerline{\thepage}} \let\@evenfoot\@oddfoot}

\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
    \hbox{}\thispagestyle{empty}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi}

\DeclareRobustCommand\matuanewline{%
  \let \reserved@e \relax
  \let \reserved@f \relax
  \@ifstar{\let \reserved@e \vadjust \let \reserved@f \nobreak
             \@xnewline}%
          \@xnewline}

\def\@resumeneshead{%
\begingroup \fontspecialpage
\centerline{\large\sc Res\'umenes de Art\'\i culos, Proyectos y Tesis}
\vspace{5ex}
\noindent La revista \meuname/ aspira a dar una vi\-si\'on de la investigaci\'on que se
realiza en Colombia o por colombianos residentes en el exterior, en las \'areas
de las matem\'aticas, su historia y sus problemas educativos. Con este fin se
publicar\'an en esta secci\'on res\'umenes de  art\'\i culos investigativos en
estas \'areas, recientemente publicados o pr\'oximos a publicarse, al igual
que res\'umenes de proyectos de investigaci\'on en marcha y de tesis de grado
escritas en los posgrados existentes en el pa\'{\i}s, que sean presentados a
la Revista.  Utilizaremos la clasificaci\'on de los abstracts de la
American Mathematical Society (AMS).
En el n\'umero de clasificaci\'on de cada resumen, el primer grupo de
d\'{\i}gitos indica el a\~no, el segundo el n\'umero del tema seg\'un la
clasificaci\'on de la AMS y el \'ultimo el n\'umero de recepci\'on del resumen
en la secci\'on correspondiente. Las letras A, P o T al final se refieren a
art\'\i culo, proyecto o tesis.
La expresi\'on \emph{Copias disponibles}, al final de un resumen, indica que
usted puede conseguir copias del art\'{\i}culo o proyecto escribi\'endole al autor.

\vspace{2ex}
\noindent\kern.0625\hsize\vbox{\hrule width .875\hsize}
\endgroup \par  \vspace{5ex}}

\def\@probysolhead{%
\begingroup \small 
\centerline{\large\sc Problemas y Soluciones}
\vspace{7ex}
\noindent En esta secci\'on se publican problemas propuestos por los lectores de la revista. 
Cuando las soluciones sean conocidas se solicita que sean enviadas junto con los problemas. 
Las soluciones ser\'an, en su momento, objeto de publicaci\'on.
Pueden remitir sus problemas a la direcci\'on de la Revista por cualquiera de las 
v\'\i as disponibles o directamente al profesor Yu Takeuchi, e\-di\-tor de la secci\'on 
a la Carrera 30, No.\ 39--31, Apto.\ 203, Bogot\'a, Colombia.

\vspace{2ex}
\noindent\kern.0625\hsize\vbox{\hrule width .875\hsize}
\endgroup\par  \vspace{3ex}}

\def\amscode#1{%
    \DeclareRobustCommand\\{%
      \let \reserved@e \relax
      \let \reserved@f \relax
      \@ifstar{\let \reserved@e \vadjust \let \reserved@f \nobreak
             \@xnewline}%
          \@xnewline}
    \expandafter\csname ams@#1\endcsname}

\def\ams@a#1#2#3#4#5{%
\begingroup \tenpointsize
\noindent\hbox{\bf #1}\\ \hbox{\bf #2 A} \\
\hbox{\bf T\'\i tulo:\ }#3\\
\hbox{\bf Investigador(es):\ }#4\\
\hbox{\bf Instituci\'on:\ }#5\par
\endgroup}

\def\ams@p#1#2#3#4#5#6{%
\begingroup \tenpointsize
\noindent\hbox{\bf #1}\\ \hbox{\bf #2 P} \\
\hbox{\bf T\'\i tulo:\ }#3\\
\hbox{\bf Investigador(es):\ }#4\\
\hbox{\bf Universidad:\ }#5\\
\hbox{\bf Instituci\'on:\ }#6\par
\endgroup}

\def\ams@t#1#2#3#4#5#6#7{%
\begingroup \tenpointsize
\noindent\hbox{\bf #1}\\ \hbox{\bf #2 T} \\
\hbox{\bf T\'\i tulo:\ }#3\\
\hbox{\bf Autor:\ }#4\\
\hbox{\bf Director:\ }#5\\
\hbox{\bf Instituci\'on:\ }#6\\
\hbox{\bf Fecha de aprobaci\'on:\ }#7\par
\endgroup}

\def\matua@No{N\raise1.5pt\hbox{$\underline{\raise .5pt\hbox{\rm o}}$\ }}
\def\No{\matua@No}
\def\matuavolumen#1{\def\matua@vol{#1}}
\def\matuanumero#1{\def\matua@number{#1}}
\def\matuaanno#1{\def\matua@year{#1}}
\def\matuames#1{\def\matua@month{#1}}
\def\matuavolumen#1{\def\matua@vol{#1}}
\def\matuanumber#1{\def\matua@number{#1}}
\def\matuayear#1{\def\matua@year{#1}}
\def\matuamonth#1{\def\matua@month{#1}}
% Default values
\def\matua@vol{XX}
\def\matua@number{1}
\def\matua@year{2007}
\def\matua@month{\junio}
\def\matua@volnumber{Vol.\ \matua@vol,\ \No\ \matua@number,\ \matua@month\ (\matua@year)\ }
%
\def\matuafootnote{{\footnotesize Vol\  \matua@volnumber\ {\sffamily\bfseries%
                  MATEMATICAS:}\ \eu@logo}}
\def\volumen#1{\def\matua@volnumber{#1}}

\def\cap@logo{\setbox0=\vbox{\fontspecialpage\hrule  \kern 1mm \hrule  height 2pt\kern3pt%\hbox{\bf\textsf{\small Matem\'aticas:}}%
                        \hbox{\bf\textsf{\small  Proyecciones Matem\'{a}ticas Del Caribe}}%
                \kern-2pt\hbox{\footnotesize\copyright Programa de Matem\'aticas}%
                        \kern-3pt\hbox{\footnotesize \phantom{\copyright}Universidad del Atl\'antico - Colombia}%
                        \kern2pt\hrule  height 2pt \vspace{2pt} \hrule \kern 1mm}%
        \edef\cap@rightlogo{\copy0\relax}%
    \vbox{\kern-1ex\centerline{\cap@leftlogo\hfill\cap@rightlogo}}}
\def\cap@leftlogo{\vbox to\ht0{\fontspecialpage\footnotesize\hbox{\matua@volnumber}%
      \hbox{\vbox{\hsize .5\hsize\noindent\strut%
      \@themaname: \thepage--\ref@thepage{article@endpage}\strut}}\vfill}}

\def\matua@received{Sept.\ 28, 2006}
\def\matua@revised{Sept.\ 28, 2007}
\def\received#1{\def\matua@received{#1}}
\def\revised#1{\def\matua@revised{#1}}
\def\communicated#1{\def\matua@communicated{\em Comunicado por #1}}

\def\contentstitle#1{%
     \def\@contentstitle{#1}}
\def\title#1{%
      \def\@title{#1}%
      \def@titulo##1{}
      \def\and{} \def\\{} \def\mail##1{} \def\address##1{} \def\institute##1{}
      \def\@contentstitle{#1}
      \def\@marktitle{#1}}
\def\author#1{%
      \def\@author{#1}%
      \def\and{} \def\\{} \def\mail##1{} \def\address##1{} \def\institute##1{}
      \def\@markauthor{#1}
      \def\@contentsauthor{#1}}

\def\contentsauthor#1{\def\@contentsauthor{#1}}
\def\markauthor#1{\def\@markauthor{#1}}
\def\shortauthor#1{\def\@markauthor{#1}}
\def\marktitle#1{\def\@marktitle{#1}}
\def\shorttitle#1{\def\@marktitle{#1}}
%
% Indice acumulativo: se quarda la informacion el en file .iaa.
\def\index@entry{\relax}
\def\addtoindex#1{%
	\edef\start@page{\thepage}
	\def\index@entry{#1, {\em \@contentstitle}, Vol.\ \matua@vol, No.\ \matua@number, p\'ag.\ %
		\start@page--\ref@thepage{article@endpage}.}
	}
\def\matua@addindexentry{%
	\write3{\index@entry ^^J}
	}
%
\def\noauthorinfo{\@authorinfofalse}
\def\address#1{\@authorinfotrue\relax}
\def\mail#1{\@authorinfotrue\relax}
\def\institute#1{\@authorinfotrue\relax}
\def\matua@authorinfo{%
      \begingroup
      \def\and{\newline} \def\address##1{--- ##1} \def\mail##1{\newline e-mail: \texttt{##1}} \def\institute##1{\relax}
      \let\\=\relax 
      \fontspecialpage \@authorinfotitle \newline%
      \@author \endgroup}
\def\authorinfo#1#2#3{%
     \label{article@endpage}%
     \begingroup\fontspecialpage\@authorinfotitle%
      #1 --- #2 e-mail: #3\endgroup\gdef\@authorinfotitle{---\ \ }}
\def\@authorhead#1{\ifnum#1=1\@themaname\else\@markauthor\fi} 
%  
\def\matematicas{Matem\'aticas}
\def\educacion{\historia}
\def\historia{Educaci\'on e Historia}
\def\computacion{Matem\'aticas y Computaci\'on}
\def\notas{Notas}
\def\entrevistas{Entrevistas}
\def\informaciongeneral{Informaci\'on General}
\def\thema#1{\def\@themaname{\csname #1\endcsname}%
        \global\@newthematrue \index@ofauthors \gdef\index@ofauthors{\relax}}
%
\def\endinterview{%
     \label{article@endpage}
     \if@authorinfo\@authorinfo\fi} \let\endnote=\endinterview
\def\@editorial{{\tenpointsize Editorial}}
\def\@noticias{{\tenpointsize Noticias}}
\def\@eventos{{\tenpointsize Eventos}}
\def\@noticiasname{{\tenpointsize Noticias y Eventos}}
\def\@contentsauthor{\@author}
\def\@contentstitle{\@title}
\def\@contentstitulo{\@titulo}
\def\@author{\relax}
\def\@title{\relax}
\def\@from{\relax}
\def\@communicated{\relax}
\def\@singleauthortitle{Direcci\'on del autor}
\def\@multiauthortitle{Direcci\'on de los autores}
%%
% Handschrift
% \def\contentslogo{\setbox0=\hbox{\bf\LARGE\sf Matem\'aticas: {\vafont Proyecciones Matem\'{a}ticas Del Caribe}}
%             \centerline{\vbox{\hrule\kern5pt\hbox to\wd0{\copy0}
%                   \kern7pt \hbox to\wd0{\Large\sf\matua@volnumber}\kern5pt\hrule}}}
%%
\def\contentslogo{{\noindent\LARGE\sf Contenido}\par\vspace{2ex}%
        \gdef\contentslogo{%
          \setbox0=\hbox{\bf\huge\sf Matem\'aticas: {Proyecciones Matem\'{a}ticas Del Caribe}}
          \centerline{\vbox{\kern-1.5\ht0\hrule\kern5pt\hbox to\wd0{\copy0}
                   \kern7pt \hbox to\wd0{\Large\sf Contenido\hfil\matua@volnumber}\kern5pt\hrule}}}
        }
\def\editorial#1{%
	%\setcounter{page}{1}
	\renewcommand{\thepage}{\roman{page}}
        \let\save@title=\title
        \def\title##1{\noindent\textsc{Editorial}\par\vspace{3ex}\section*{##1}}
        \newpage
        \marktitle{} \markboth{\@editorial}{\@editorial} 
        \pagestyle{plain} \setcounter{page}{1}
	\addtocontents{toc}{\setbox0=\hbox{\hbox to0pt{\relax}}} 
        \addtocontents{toc}{\string\null\vspace{\contents@topmargin}}
	%\addtocontents{toc}{\hbox to0pt{\box0{\@editorial}}\par\vspace{-1ex}}
        \addtocontents{toc}{\hbox to0pt{\box0{\bfseries \sf \string\large{Editorial}}}\par\vspace{-1ex}} 
        \par\input{#1}\relax %
	\newpage \renewcommand\thepage{\arabic{page}}
	\setcounter{page}{1}
	\let\title=\save@title %
	}
\def\@resumenesname{{\tenpointsize Res\'umenes de Art\'\i culos, Proyectos y Tesis}}
\def\@probysolname{{\tenpointsize Problemas y Soluciones}}
\def\resumenes#1{%
        \newpage%
        \marktitle{\@resumenesname}
        \markboth{\@resumenesname}{\@resumenesname}
        \thispagestyle{empty} 
	% matua-logo on page top
	\def\cap@leftlogo{\vbox to\ht0{\fontspecialpage\footnotesize\hbox{\matua@volnumber}%
      		\hbox{\vbox{\hsize .5\hsize\noindent\strut%
		\@themaname \strut}}\vfill}} 
	\vbox{\kern-2em\centerline{\cap@logo}}
	%
        \@resumenestrue \addtocounter{chapter}{1}
	\if@newthema{%
             \addtocontents{toc}{\vspace{1ex}{\bfseries \sf \string\large{\@themaname}}\par\vspace{.7ex}}%
             \global\@newthemafalse}
        \fi
        \addtocontents{toc}{\string\nopagebreak\noindent\hangafter=0\hangindent=\contents@indent%
           \string\llap{\bf\thepage\kern1em}{\bf \@resumenesname}\par}
        \vbox{\kern 2em\@resumeneshead}	\input{#1}\relax\newpage}
\def\problemasysoluciones#1{%
        \newpage%
        \marktitle{\@probysolname} \markauthor{\@probysolname}
        \markboth{\@probysolname}{\@probysolname}
        \addtocounter{chapter}{1}
        \thispagestyle{empty}
	% matua-logo on page top, if neither section 'Resumenes y ...' nor 'Noticias y ...'
	\if@resumenes\else\if@noticias\else
	   \def\cap@leftlogo{\vbox to\ht0{\fontspecialpage\footnotesize\hbox{\matua@volnumber}%
      		\hbox{\vbox{\hsize .5\hsize\noindent\strut%
		\@themaname \strut}}\vfill}} 
	   \vbox{\kern-2em\centerline{\cap@logo}}
	\fi\fi
	%
        %\@resumenesfalse
	\@problemastrue
	\if@newthema{%
             \addtocontents{toc}{\vspace{1ex}{\bfseries \sf \string\large{\@themaname}}\par\vspace{.7ex}}%
             \global\@newthemafalse}
        \fi
	\addtocontents{toc}{\string\nopagebreak\noindent\hangafter=0\hangindent=\contents@indent%
           \string\llap{\bf\thepage\kern1em}{\bf \@probysolname}\par}
        \@probysolhead \input{#1}\relax\newpage}
\def\noticiasyeventos#1{%
        \newpage%
        \marktitle{\@noticiasname} 
        %\chaptmatuaark{\thepage}{\@noticiasname}
        \thispagestyle{plain}
	% matua-logo on page top, if neither section 'Resumenes y ...' nor 'Noticias y ...'
	\if@resumenes\else\if@problemas\else
	   \def\cap@leftlogo{\vbox to\ht0{\fontspecialpage\footnotesize\hbox{\matua@volnumber}%
      		\hbox{\vbox{\hsize .5\hsize\noindent\strut%
		\@themaname \strut}}\vfill}} 
	   \vbox{\kern-2em\centerline{\cap@logo}}
	\fi\fi
	%
        %\@resumenesfalse
	\@noticiastrue
	\if@newthema{%
             \addtocontents{toc}{\vspace{1ex}{\bfseries \sf \string\large{\@themaname}}\par\vspace{.7ex}}%
             \global\@newthemafalse}
        \fi
	\addtocontents{toc}{\string\nopagebreak\noindent\hangafter=0\hangindent=\contents@indent%
           \string\llap{\bf\thepage\kern1em}{\bf \@noticiasname}\par}
         \input{#1}\relax \newpage}
\def\noticias{%
       %\newpage
       \markboth{\@noticiasname}{\@noticiasname}
       \thispagestyle{empty}
       \if@resumenes\centerline{\large\sc Noticias y Eventos}\else%
       		\vbox{\kern 1em\centerline{\large\sc Noticias y Eventos}}
       \fi
       \vspace{2ex}
       \rightline{\Large\textsc{\@noticias}} \vspace{0em}}
\def\eventos{%
       \newpage
       \newpage \markboth{\@noticiasname}{\@noticiasname}
       \rightline{\Large\textsc{\@eventos}} \vspace{0em}}
% 
\def\etal{et al.}
\def\matuacomitepage{\matua@editboard}
\def\matuapoliticapage{\matua@politica}
\def\matuaresumenpage{\matua@divulgacionpage}
\def\matuacorresponsalespage{\matua@correspage}
\def\matuaperfilpage{\matua@perfilpage}
\def\matuaconveniopage{\matua@conveniopage}
\def\matuaevaluacionpage{\matua@evalpage}

\def\matua@editboard{%
\newpage \begingroup 
\thispagestyle{empty} \fontspecialpage\small
\centerline{\Large\sffamily{\bfseries \eu@logo}}
\vspace{1em}
\centerline{\sffamily Revista oficial del Convenio Escuela Regional de Matem\'aticas (matua)}
\vskip0.15em
\centerline{\sffamily Resoluci\'on $00116, \ 24$ de Mayo de $1977$, Ministerio  de Gobierno}
\vskip0.15em
\centerline{\sffamily ISSN 0120-6788, 1900-043X (Edici\'on Online)}
\vskip0.50em
\centerline{\sffamily Indexaci{\'o}n en Latindex (Clasificaci\'on B), Zentralblatt, Red ALyC, y DOAJ}
\vskip0.15em
\centerline{\sffamily Informe Acad\'emico (Gale Group)}
%
\vspace{2em}
\centerline{\vbox{\hbox{\textbf{Fundadores} Yu Takeuchi (U.\ Nacional) y Jairo Alv\'arez (U.\ del Valle)}
                  \hbox{\textbf{Director} Jaime Arango (U.\ del Valle) \textbf{Editor} Jaime Arango 
                  (U. del Valle)}}}
%
\vspace{2em}
\begin{center}
\textbf{Comit\'e editorial}\\[1em]
Adriana G\'omez (U. del Valle), Carlos Trujillo (U. del Cauca), \\ 
Pedro Esteban (EAFIT), Peter Zhevandrov (U. de Michoacan, M\'exico), \\
Miklos Farkas (U. de Budapest, Hungr{\'\i}a)
\end{center}
%
\vspace{2em}
%\begin{center}
%\textbf{Editores de secciones}\\[1em]
%{\tabcolsep=1pt
%\begin{tabular}{l@{\kern3em}l}
%\textbf{\sf Matem\'aticas} &  Jos\'e Raul Quintero (U. del Valle)\\
%\textbf{\sf Educaci\'on e Historia} &  Pedro Vicente Esteban (U. EAFIT)\\
%\textbf{\sf Notas} &  Miguel Marmolejo (U. del Valle)\\
%\end{tabular}}
%\end{center}
%
\vspace{2em}
\centerline{\textbf{Comit\'e cient{\'\i}fico}} 
\vspace{1ex}
\noindent{\bfseries\sf Matem\'aticas:\ }Manuel Abellanas (U. Polit\'ecnica de Madrid), 
B. Bhatt (U. of the West Indies), Mario Estrada (U. de la Havana y de Antioquia), Whady Fl\'orez (U. Pontificia Bolivariana), Leonardo Solanilla (U. del Tolima). 
{\bfseries\sf Educaci\'on e Historia:\ }Carlos 
Vasco (U. Javeriana), Luis Moreno (CINVESTAV, M\'{e}xico).
%

\medskip
\leftline{{\bfseries\sf Administraci\'on:\ Patricia D\'avila}}
\medskip
\vfill

\noindent\meuname/ (nueva serie) es editada
por las universidades que se agrupan en el Convenio Escuela Regional de Matem\'aticas (matua) y 
est\'a dirigida a los profesores de matem\'aticas y a todos los interesados en las matem\'aticas.  
Publi\-ca dos n\'umeros al a\~no, con un tiraje de 1000 ejemplares cada uno. El valor de una suscripci\'on 
anual institucional es de \matua@priceyear pesos e incluye costos de env{\'\i}o. El valor
de una suscripci\'on personal anual es de \matua@pricepersonal pesos. Suscripciones de apoyo
o por mayor valor son bienvenidas.
En las p\'aginas interiores se hallar\'a un formulario de suscripci\'on. En el reverso 
de la contracar\'atula expresamos nuestra pol\'{\i}tica editorial y las recomendaciones 
para autores. Su correspondencia puede enviarla a: 
%

\vfill
\bigskip
\begin{center}
Matem\'aticas: Proyecciones Matem\'{a}ticas Del Caribe\\
Departamento de Matem\'aticas \\ Universidad del Atl\'antico \\
 Km 7 Antigua v\'ia Puerto Colombia, Barranquilla - Colombia \\
Tel\'efono:  01 8000 527676 \\ 
P\'agina web: \matua@web/ \\ 
e-mail: \matua@mail
\end{center}
\endgroup}

\def\matua@politica{%
\newpage
\thispagestyle{empty} 
\begingroup  \fontspecialpage \footnotesize \hoffset=-0.05\hsize \hsize=1.0\hsize \parskip1pt 
\centerline{\normalsize\sffamily{\bfseries \eu@logo}}
\vspace{1em}
\centerline{\small\sffamily Revista oficial del Departamento de Matem\'aticas de la Universidad del Atl\'antico (matua)}
\vskip0.15em
%\centerline{\small\sffamily Resoluci\'on $00116, \ 24$ de Mayo de $1977$, Ministerio  de Gobierno}
\vskip0.15em
\centerline{\small\sffamily ISSN 0120-0000, 0000-000X (Edici\'on Online)}
%
\vspace{1em}
%
\centerline{\small\sffamily{Pol\'\i tica Editorial}}

\medskip
\noindent Esta revista es un {\'o}rgano divulgativo e informativo del Convenio Escuela
Regional de Matem{\'a}\-ticas (matua) que aspira a llegar a un amplio c{\'\i}rculo de
estudiantes, profesores universitarios y personas interesadas en las
matem{\'a}ticas y su ense\~{n}anza. El idioma oficial de la publicaci{\'o}n es el
castellano. Sin embargo se considerar{\'a}n art{\'\i}culos  escritos
en ingl{\'e}s.  Las secciones principales de la revista son Matem\'aticas y Educaci\'on e
Historia. En estas secciones se publican art\'\i culos originales de las siguientes 
clases:
\begin{itemize}
\item Investigativos, dirigidos a lectores no necesariamente especializados,
acom\-pa{\~n}a\-dos de una motivaci{\'o}n apropiada y de claridad en la exposici{\'o}n.
\item De reelaboraci{\'o}n creativa que presenten en forma novedosa temas cl{\'a}sicos.
\item  Divulgativos que presenten de manera accesible temas poco conocidos
entre lectores no especializados.
\item Sobre experiencias y problem{\'a}ticas relacionadas con la ense{\~n}anza de las
ma\-te\-m{\'a}\-ti\-cas a nivel universitario.
\item Monogr{\'a}ficos, escritos por reconocidos especialistas, que revisen un
tema y presenten su estado actual.
\end{itemize}
La revista contempla adem\'{a}s otras secciones que ofrecen opciones adicionales para
quienes est\'en interesados en publicar en la revista. Estas secciones son:
Notas, 
Res{\'u}menes de Art{\'\i}culos, Proyectos y Tesis, Problemas y Soluciones, Rese{\~n}as, Noticias y Eventos.

\bigskip
\centerline{\small\sffamily{Instrucciones para autores}}

\medskip
\noindent Los art{\'\i}culos sometidos a consideraci{\'o}n de la revista deben ser originales y 
no haber sido enviados simult{\'a}neamente a otras revistas. Deben  
estar provistos 
de resumen y lista de palabras y frases claves (keywords). El resumen no debe exceder  
una p{\'a}gina, ni tener abreviaturas poco usuales y mantener las f{\'o}rmulas y notaci{\'o}n 
matem{\'a}tica reducidas a un m{\'\i}nimo. El t{\'\i}tulo debe ser breve, descriptivo y apropiado 
para los efectos de clasificaci{\'o}n. Se han de indicar los nombres de los autores y 
las instituciones a que pertenecen. En el cuerpo del art{\'\i}culo se deben definir las 
abreviaturas y s{\'\i}mbolos matem{\'a}ticos poco usuales cuando aparecen por primera vez. 
Las tablas y figuras deben reducirse al m{\'\i}nimo. Cuando aparezcan deben estar 
citadas en el cuerpo principal del texto, estar provistas de leyendas explicativas y 
nu\-me\-ra\-das en forma consecutiva seg{\'u}n su orden de aparici{\'o}n. Los reconocimientos a 
instituciones, agradecimientos y dedicatorias estar{\'a}n al final del cuerpo del art{\'\i}culo.
 Cada referencia bi\-blio\-gr{\'a}\-fica debe tener autor, t{\'\i}tulo, fecha 
de publicaci{\'o}n, nombre de la editorial y lugar de publicaci{\'o}n.
Los art{\'\i}culos deben enviarse por tri\-pli\-cado, escritos en \LaTeX\  o \matuaLaTeX, 
a la direcci{\'o}n que aparece en el reverso de la car{\'a}tula, dirigida preferiblemente 
al editor de la secci{\'o}n en la que aspira sea publicada su colaboraci{\'o}n. Los autores 
en el exterior pueden enviar su contribuci\'on por correo electr{\'o}nico, siempre 
y cuando  el documento pueda ser reproducido por el
equipo t\'ecnico de la revista. En caso contrario 
el autor deber{\'a} remitir las tres copias en papel. Si un art{\'\i}culo es aceptado para 
publicaci{\'o}n deber{\'a} ser preparado por el autor en el  formato de la revista 
\meuname/. Para este efecto la revista ha desarrollado 
el conjunto de comandos \matuaLaTeX\ que est{\'a} a disposici{\'o}n de los autores en 
\matua@web/. All\'\i\ est\'a disponible un manual de autores 
denominado {\sl Gu{\'\i}a para la preparaci{\'o}n de art{\'\i}culos \matuaLaTeX}. Los autores que 
tengan dificultades con la elaboraci{\'o}n de sus art{\'\i}culos en dicho formato 
podr{\'a}n solicitar informaci{\'o}n a la secretaria de la revista (\matua@mail), 
que con gusto  los remitir{\'a}  a personas que puedan asesorarlos en este trabajo. 
El env{\'\i}o inicial del art{\'\i}culo debe incluir una carta de remisi{\'o}n indicando el 
nombre completo de los autores y la direcci{\'o}n del autor designado para recibir la correspondencia. 
Debe incluir, igualmente, una apreciaci{\'o}n de los 
autores sobre la naturaleza de su art{\'\i}culo, el tipo de aporte que hacen 
en {\'e}l, y el nombre de la secci{\'o}n de la revista a la que va dirigida su colaboraci{\'o}n.
\parfillskip0pt\par 
\endgroup}

\def\matua@divulgacionpage{%
\newpage
\thispagestyle{empty}
\begingroup \fontspecialpage\footnotesize\hsize=0.91\hsize
\fbox{\rule{.3cm}{0cm}%
\vbox to\vsize{\vskip.5em
\noindent Informe a la comunidad acad\'emica sobre sus  art\'\i culos y
proyectos de investigaci\'on o sobre su tesis enviando un resumen
a \meuname/.
H\'agalo a trav\'es de alg\'un co\-rres\-pon\-sal de la
revista o env\'\i e directamente sus re\-s\'u\-me\-nes a:
Apartado A\'ereo 25360, Telefax: (2) 3302566, e-mail: \matua@mail.
Tome como modelo la siguiente forma.  

\hbox to \hsize{\hrulefill}
\centerline{RESUMENES DE ARTICULOS O PROYECTOS DE INVESTIGACION}

\vspace{1em}
\noindent TITULO: \hrulefill\ \vspace{4mm}

\hbox to \hsize{\hrulefill}

\vspace{1em}
Art{\'\i}culo \ \vbox{\hrule width .5cm} \hspace{1cm} Proyecto\ \vbox{\hrule width .5cm} \hspace{1cm} 
Tesis\ \vbox{\hrule width .5cm} 

\vspace{1em}
\noindent Clasificaci\'on tem\'atica. Utilice la clasificaci\'on de la American
Mathematical Society, si tiene manera de hacerlo.\vspace{4mm}

\hbox to \hsize{\hrulefill} \vspace{4mm}
\noindent INVESTIGADOR(ES):(nombres y direcci\'on):\hrulefill\ \vspace{4mm}

\hbox to \hsize{\hrulefill} \vspace{4mm}

\hbox to \hsize{\hrulefill} 

\noindent RESUMEN:

\null
\vfill

\noindent En el caso de tesis indique el nombre del Director de tesis y fecha de 
aprobaci\'on,
?`Puede Ud.\ enviar copias del art\'\i culo o documento
a profesores interesados?
\vspace{1em}

\centerline{Si\ \vbox{\hrule width .5cm} \hspace{1cm} No\ \vbox{\hrule width .5cm}}
\rule{0cm}{.2cm}}\rule{.3cm}{0cm}} 
\endgroup}

\def\matuacorresponsales#1{\def\matua@corresponsales{#1}}
\def\matua@corresponsales{%
  U.\ de Nari\~no                 &     \'Alvaro Alfredo Bravo\\
  U.\ del Cauca                   &     Mauricio Maca\\
  U.\ Tec. Pereira                &     Carlos Arturo Mora\\
  U.\ del Quind\'{\i}o            &     Paulo C\'esar Carmona\\
  U.\ de Antioquia                &     Armando Gomez Romero\\
  U.\ Nacional, Manizales         &     Fabian Fernando Serrano S.\\
  U.\ Nacional, Medell\'{\i}n     &     Fernando Puerta\\
  U.\ Nacional, Bogot\'a          &     Lorenzo Acosta Gempeller\\
  U.\ del Norte                   &     Ismael Guti\'errez\\
  U.\ Tec. de los Llanos          &     Yolanda Fonzeca\\
  U.\ de Sucre                    &     Jes\'us Cepeda Coronado\\
  U.\ Javeriana, Bogot\'a         &     Iv\'{a}n Castro Chadid\\
  U.\ Javeriana, Cali             &     Oscar Andr\'es Monta\~no\\
  U.\ Distrital                   &     Carlos Julio Arrieta\\  
  U. Santiago de Cali             &     Jairo Apr\'aez\\   
  U.\ F.\ P.\ S.                  &     Mawency Vergel Ortega\\
  U.\ del Tolima                  &     Pedro Gallego\\
  U.\ de la Amazon\'{\i}a         &     Arnulfo Coronado\\       
  U.\ Surcolombiana               &     Mauro Montealegre\\
  U.\ EAFIT                       &     Pedro Vicente Esteban\\
  U.\ Ind.\ de Santander          &     Gilberto Arenas\\
  U.\ de Cartagena                &     Sandra Guti\'errez\\
  U.\ de Medell\'{\i}n            &     Jos\'e Alberto Rua\\
  U.\ de los Andes                &     Ricardo Arteaga\\
  U.\ Tec.\ del Choco             &     Am\'erico Mosquera Murillo\\
  U.\ Aut\'onoma de Occidente          &     Oswaldo Rodr\'{\i}guez\\
  U.\ del Valle                   &     Jos\'e Ra\'ul Quintero\\
  U.\ Sergio Arboleda             &     Reinaldo Nu\~nez\\
  U.\ Colegio Mayor de Cundinamarca &   Cristo Rafael Figueroa\\
  U.\ Sim\'on Bolivar               &   Albeiro Zabala\\
  Escuela Colombiana de Ingenier\'{\i}a  & Ernesto Acosta Gempeler\\
  U.\ de Cordoba                 &      Abrahan Arenas\\
  U. ICESI                       &      Anibal Sosa
}

\def\matua@correspage{%
\newpage \begingroup \fontspecialpage\sf \hsize=1\hsize
\thispagestyle{empty}
\fbox{\vbox to\textheight{
\vskip1em
\centerline{\bf\sf Corresponsales de la Revista}
\begin{center}                                  
\begin{tabular}{l@{\kern1.4cm}l} 
	\matua@corresponsales
\end{tabular}
%\vfil
%\font \@grande=cmss10 at 70pt {\@grande matua}\\
\vfil

Un compromiso de cooperaci\'on interinstitucional \\ 
para el desarrollo de las 
matem\'aticas en la regi\'on \\ 
de influencia de las universidades del convenio.

\vfil
\end{center}}}
\endgroup}

\def\matua@perfilpage{%
\newpage
\thispagestyle{empty}
\begingroup \fontspecialpage  \hsize .9\hsize
\vbox to.95\textheight{
\vskip1pt
\noindent La revista \meuname/ es un \'orga\-no de expresi\'on 
del profesorado y de todos los interesados en el
desa\-rrollo matem\'atico universitario. Haga conocer sus trabajos y sus puntos 
de vista enviando a la revista 

\begin{center}
\begin{tabular}{cl}
\rule{.1cm}{0cm} & -- art\'\i culos \\
 &  -- notas de clase\\
 & -- glosas sobre libros y art\'\i culos\\
  & -- problemas y soluciones  \\
 & -- noticias, etc.
\end{tabular}
\end{center}

\vspace{3ex}
\noindent Env\'{\i}elos a trav\'es de los corresponsales de \meuname/ o 
directa\-mente a
la siguiente direcci\'on

\vspace{3em} 
\begin{center}
  Proyecciones Matem\'aticas del Caribe\\
  Departamento de Matem\'aticas,\\
  Universidad de Valle\\
  Apartado A\'ereo 25360,\\
  Cali, Colombia.\\
  Tel\'efonos: + 2 330 2566 \ 339 3227 \\
  e-mail: \matua@mail\\
  P\'agina web: \matua@web/
%\vfil
%\font \@grande=cmss10 at 70pt {\@grande matua}\\
\vfil
\centerline{\large Corporaci\'on Escuela Regional de Matem\'aticas}
\vspace{3em}

Un compromiso de cooperaci\'on interinstitucional \\ 
para el desarrollo de las 
matem\'aticas en la regi\'on \\ 
de influencia de las universidades del convenio.
\end{center} \vfil}
\endgroup}
 
\def\matua@conveniopage{%
\newpage \begingroup \fontspecialpage \sf
\thispagestyle{empty}
\begin{center}
{\Large \textsf{Corporaci\'on Escuela Regional de Matem\'aticas}}
\vspace{1.5cm}

Universidades de Nari\~no, del Cauca, del Valle, del Quind\'\i o,
Tecnol\'ogica de Pereira, EAFIT, de Antioquia, Surcolombiana, 
de Medell\'\i n y de la Amazon\'\i a.

\vspace{1.5cm}
\vfill
%%\font \@grande=cmss10 at 70pt {\@grande matua}
\vspace{1.5cm}

Un compromiso de cooperaci\'on interinstitucional \\ 
para el desarrollo de las 
matem\'aticas en la regi\'on \\ 
de influencia de las universidades del convenio.
\vfill
\vspace{1.5cm}

               Revista de Matem\'aticas de la E.R.M.\\
               Departamento de Matem\'aticas, Univalle,\\
               Apartado A\'ereo 25360 Cali.\\
               Tel\'efonos: 2 330-25-66,  2 339-32-27.\\
               FAX: 2 330-25-66.\\
               P\'agina web: \matua@web/ \\
               e-mail: \matua@mail              
\end{center}
\clearpage
\endgroup\addtocounter{page}{-1}}

\def\matua@evalpage{%
\newpage
\thispagestyle{empty}
\begingroup 
\def\cap@leftlogo{\relax}  
\vbox{\kern-2em\centerline{\hfill\cap@logo}}
\fontspecialpage \normalsize 
\kern2ex
\centerline{\normalsize\sffamily{Revisi\'on de Art\'{\i}culos}}
\vspace{2ex}
\meuname/ tiene como pol\'{\i}tica confirmar sin 
demora el recibo de los art\'{\i}culos. Si pasado un tiempo prudencial no 
hay confirmaci\'{o}n de recibo, se ruega un mensaje v\'{\i}a e-mai o 
Telefax (+57) (2) 330 2566 alertando al respecto.
\vspace{1ex}

\bigskip
\centerline{\normalsize\sffamily{Procedimiento de 
arbitraje de art\'{\i}culos}}
%
\begin{enumerate}
\item Los art\'{\i}culos se someten a un control previo ejercido por el 
editor general que verifica si tienen el grado suficiente de elaboraci\'{o}n 
y si cumplen con los requisitos de presentaci\'{o}n. Art\'{\i}culos que hagan 
mal  uso del idioma o que no sigan los lineamientos dados en {\emph las
instrucciones para autores} no se tendr\'{a}n en cuenta para publicaci\'{o}n. 
En tal caso, los documentos se devolver\'an a los autores a condici\'on 
que ellos asuman el porte de correo.
\item Los art\'{\i}culos que aprueban el control previo se env\'{i}an a 
una revisi\'on adelantada por pares acad\'emicos. Normalmente, el 
editor general elige dos pares para el arbitraje de un art\'{\i}culo. 
El proceso de revisi\'on es confidencial, y los informes de los pares se 
usar\'an \'unicamente para decidir si un art\'{\i}culo es o no publicado.
\item Cuando se tengan opiniones divergentes sobre un art\'{\i}culo, 
el editor general elige un arbitro.
\item Para la publicaci\'on de un art\'{\i}culo se requiere al menos una 
opini\'on favorable de los pares acad\'emicos.
\end{enumerate}

La revista transmitir\'a al autor (designado para recibir correspondencia) 
copias de los conceptos de los pares acad\'emicos. Si un art\'{\i}culo es 
rechazado, la revista tiene como pol\'{\i}tica no reconsiderar la decisi\'on.

Los cambios exigidos por los pares acad\'emicos deben acatarse por 
parte de los autores. El editor general se reserva el derecho de 
verificar con los pares acad\'emicos si se han hecho debidamente los 
cambios en cuesti\'on.

La revista har\'a su mejor esfuerzo para tener una decisi\'on sobre la 
publicaci\'on del art\'{\i}culo en los tres meses siguientes a la recepci\'on 
del mismo.\par
\endgroup}

\def\matua@maketitlepage{%
     \begingroup\newpage
     \fontspecialpage 
     \thispagestyle{empty}\null
     \vspace{4em}
     \centerline{
         \vbox{\hbox{\bf\huge\sf Matem\'aticas:}\kern5pt
               \hbox{\bf\huge\sf Proyecciones Matem\'aticas Del Caribe}
               }}
     \vspace{4em}
     %\centerline{\Large (Nueva serie)} 
     \vfill
     \centerline{\Large \matua@volnumber}
     \vskip1em
     \centerline{\Large Revista matua}
     \endgroup
     \addtocounter{page}{-1}
}
\def\maketitlepage{\matua@maketitlepage}
\def\matuaLaTeX{{\protect\AmSfont
  E\kern-.1567em\lower.5ex\hbox{R}\kern-.2215emM}-\LaTeX}
\def\meuname/{{\sffamily\bfseries \eu@logo\ }}

\if@matuamake@frame
  \def\matuamake@frame#1{%
    \vbox to24cm{\hrule \hbox to17cm {\vrule \vbox{\hbox{\kern1.2cm\vbox{#1 \kern0.6cm}}} \vrule}\hrule}} 
\else
  \def\matuamake@frame#1{#1}
\fi
%
\endinput
%%
%% End of file `matua.cls'.
