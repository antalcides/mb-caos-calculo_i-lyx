\listfiles
\def\fileversion{1.01}
\def\filedate{2020/05/04}
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{mathbook-main}[%
  \filedate\space v\fileversion\space
  mathbook document class. Antalcides Olivo]
\newif\if@ams
\newif\if@openany
\newif\if@dixpt
\newif\if@onzept
\newif\if@douzept
\newif\if@presentation
\newif\if@latinone
\newif\if@ansinew
\newif\if@applemac
\newif\if@ascii
\newif\if@latinnine
\newif\if@utfheight
\newif\if@lyx
%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Options de classes %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%
% encodage
\DeclareOption{latin1}{\def\inputoption{latin1}}
\DeclareOption{ansinew}{\def\inputoption{ansinew}}
\DeclareOption{applemac}{\def\inputoption{applemac}}
\DeclareOption{ascii}{\def\inputoption{ascii}}
\DeclareOption{latin9}{\def\inputoption{latin9}}
\DeclareOption{utf8}{\def\inputoption{utf8}}
\DeclareOption{utf8x}{\def\inputoption{utf8x}}
%
\DeclareOption{openany}{\@openanytrue}
\DeclareOption{10pt}{\@dixpttrue}
\DeclareOption{11pt}{\@onzepttrue}
\DeclareOption{12pt}{\@douzepttrue}
\DeclareOption{ams}{\@amstrue}
\DeclareOption{presentation}{\@presentationtrue}

\ProcessOptions

\xdef\optionsbook{letterpaper}
\if@openany
	\xdef\optionsbook{\optionsbook,openany}
\fi
\if@dixpt
	\xdef\optionsbook{\optionsbook,10pt}
\else
	\if@onzept
		\xdef\optionsbook{\optionsbook,11pt}
	\else
		\if@douzept
			\xdef\optionsbook{\optionsbook,12pt}
		\fi
	\fi
\fi

\LoadClass[\optionsbook]{book}
%
%%%%%%%%%%%%%%%%%
%%% Packages  %%%
%%%%%%%%%%%%%%%%%
%
\RequirePackage{cellspace}
\RequirePackage[cmyk,table]{xcolor} 
\RequirePackage{titlesec}
\RequirePackage{tikz}
\usetikzlibrary{calc,decorations.pathmorphing,decorations.text,
			   fit,               % added
                positioning,       % not used
                quotes}            % added
\RequirePackage[outline]{contour}
\RequirePackage[tmargin=2cm,bmargin=2.5cm,hmargin=2cm]{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{eso-pic}
\RequirePackage{array}
\RequirePackage{tabularx}
\RequirePackage{longtable}
\RequirePackage{enumitem}
\RequirePackage{graphicx}
\graphicspath{{ps/}{logo/}{image/}{sections/figures/}{figures}{images}}
\RequirePackage{fancyvrb}
\RequirePackage{verbatim}
\RequirePackage{multido}
\RequirePackage{multicol}
\RequirePackage{fp}
\input{lib/colors}
\RequirePackage[colorlinks=true,linkcolor=corref@color]{hyperref}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{longtable}
\usepackage{pifont}
\usepackage{booktabs}
\usepackage{calc}
\usepackage{units}
\usepackage{textcomp}
\usepackage{mathrsfs}
\usepackage{cancel}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%\usepackage{amsthm}
\usepackage{mathdots}
\usepackage{marvosym}
\usepackage{latexsym}
\usepackage{systeme,mathtools}
\if@ams
	\RequirePackage{amsmath,amscd,amsbsy,amsfonts,amssymb,wasysym}
\fi
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\definecolor{dem@line@color}{cmyk}{0.66,0.24,0.74,0.71}  
\usepackage{microtype}
\usepackage{ifxetex}
\ifxetex
\usepackage{fontspec}
\RequirePackage{polyglossia}
\setdefaultlanguage{spanish}
\setotherlanguage{french}
\usepackage[mathrm=sym]{unicode-math}
\setmathfont{Fira Math}
\setsansfont[
    Extension      = .otf,
    UprightFont    = *-Light,
    ItalicFont     = *-LightItalic,
    BoldFont       = *-Regular,
    BoldItalicFont = *-BoldItalic
]{FiraSans}
\setmonofont[
    Extension   = .otf,
    UprightFont = *-Regular,
    BoldFont    = *-Medium
]{FiraMono}
\gappto\captionsspanish{\renewcommand{\contentsname}{Contenido}}
\gappto\captionsspanish{\renewcommand{\chaptername}{Cap\'itulo}}
\newcommand*{\og}{\@empty}
\newcommand*{\fg}{\@empty}
\else
   \RequirePackage[\inputoption]{inputenc}
   \usepackage[T1]{fontenc}
   %\RequirePackage[spanish,french]{babel}
   \RequirePackage[spanish]{babel}
   %\frenchbsetup{StandardLists=true}
   \usepackage{kpfonts}
   \renewcommand*{\contentsname}{Contenido}
\fi
\RequirePackage[autolanguage]{numprint} 
\usepackage{etoolbox}
\renewcommand{\chaptertitlename}{Cap\'itulo}
\def\dia{\number\day \space de \space \ifcase\month\or
      Enero\or Febrero\or Marzo\or Abril\or Mayo\or Junio\or
      Julio\or Augosto\or Septiembre\or Octubre\or Noviembre\or Deciembre\fi
      \space del \space \number\year}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\input{lib/lengths}
\input{lib/fonts}
\input{lib/pagestyles}
\input{lib/sectionstyles}
\input{lib/comandos}
\endinput
