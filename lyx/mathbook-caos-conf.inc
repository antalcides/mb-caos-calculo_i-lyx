# Standard textclass definition file for mathbook-caos. Taken from initial LyX source code
# Author : Antalcides Olivo <antalcides@gmail.com>
# 

# This include files contains all layouts that handle the structure of
# a document, like abstract, bibliography and also other environments such as:.
# - Theorem
# - Corollary
# - Lemma
# - Axiom
# - Conjecture
# - Definition
# - demostration
# - Example
# - Problem
# - Solution
# - Exercise
# - Remark
# - Property
# - método
# - correction
# - Multicols

#----
format 66
#----

#-----
OutlinerName thm "Definitions & Theorems"
Counter theorem
End
#-----

#-------
Counter		theorem
End
Style Theorem
	Category	Reasoning
	Margin		First_Dynamic
	LatexType	Environment
	LatexName	theorem
	NextNoIndent	1
	AddToToc              thm
	IsTocCaption          1
	Argument 1
	  LabelString	"Name/Title"
	  Tooltip	"Alternative optional name or title"
	  IsTocCaption      1
	EndArgument
	LabelSep	xx
	ParIndent	MMM
	ParSkip		0.4
	ItemSep		0.2
	TopSep		0.7
	BottomSep	0.7
	ParSep		0.3
	Align		Block
	AlignPossible	Left
	LabelType	Static
	LabelCounter	theorem
	LabelString	"Theorem \thechapter.\thetheorem."
	Font
	  Shape		Italic
	  Size		Normal
	EndFont
	LabelFont
	  Shape		Up
	  Series	Bold
	EndFont
	LangPreamble
	  \providecommand{\theoremname}{_(Theorem)}
	EndLangPreamble
	BabelPreamble
	  \addto\captions$$lang{\renewcommand{\theoremname}{_(Theorem)}}
	EndBabelPreamble
End
#------

Counter		corollary
End
Style Corollary
	CopyStyle	Theorem
	LabelCounter	corollary
	LatexName	corolario
	LabelString	"Corollary \thechapter.\thecorollary."
	LangPreamble
	  \providecommand{\corollaryname}{_(Corollary)}
	EndLangPreamble
	BabelPreamble
	  \addto\captions$$lang{\renewcommand{\corollaryname}{_(Corollary)}}
	EndBabelPreamble
End
#-----

Counter		lemma
End
Style Lemma
	CopyStyle	Theorem
	LabelCounter	lemma
	LatexName	lemma
	LabelString	"Lemma \thechapter.\thelemma."
	LangPreamble
	  \providecommand{\lemmaname}{_(Lemma)}
	EndLangPreamble
	BabelPreamble
	  \addto\captions$$lang{\renewcommand{\lemmaname}{_(Lemma)}}
	EndBabelPreamble
End
#-----

Counter		proposition
End
Style Proposition
	CopyStyle	Theorem
	LabelCounter	proposition
	LatexName	proposition
	LabelString	"Proposition \thechapter.\theproposition."
	LangPreamble
	  \providecommand{\propositionname}{_(Proposition)}
	EndLangPreamble
	BabelPreamble
	  \addto\captions$$lang{\renewcommand{\propositionname}{_(Proposition)}}
	EndBabelPreamble
End
#-----

Counter		axi
End
Style Axioma
	CopyStyle	Theorem
	LabelCounter	axi
	LatexName	axioma
	LabelString	"Axioma. \thechapter.\theaxi."
	Font
	  Shape		Up
	EndFont
	LabelFont
	  Series	Medium
	EndFont
End
#------
Counter		pos
End
Style Postulado
	CopyStyle	Theorem
	LabelCounter	pos
	LatexName	axioma
	LabelString	"Postulado. \thechapter.\thepos."
	Font
	  Shape		Up
	EndFont
	LabelFont
	  Series	Medium
	EndFont
End
#-----
Counter		enun
End


Style Enunciado
	CopyStyle	Theorem
	LabelCounter	enun
	LatexName	enunciado
	LabelString	"Enunciado. \thechapter.\theenun."
	Font
	  Shape		Up
	EndFont
	LabelFont
	  Series	Medium
	EndFont
End


Counter		ley
End

Style Ley
	CopyStyle	Theorem
	LabelCounter	ley
	LatexName	ley
	LabelString	"Ley. \thechapter.\theley."
	Font
	  Shape		Up
	EndFont
	LabelFont
	  Series	Medium
	EndFont
End


Counter		conjecture
End

Style Conjecture
	CopyStyle	Theorem
	LabelCounter	conjecture
	LatexName	conjecture
	LabelString	"Conjecture \thechapter.\theconjecture."
	Font
	  Shape		Up
	EndFont
	LabelFont
	  Series	Medium
	  Shape		Italic
	EndFont
	LangPreamble
	  \providecommand{\conjecturename}{_(Conjecture)}
	EndLangPreamble
	BabelPreamble
	  \addto\captions$$lang{\renewcommand{\conjecturename}{_(Conjecture)}}
	EndBabelPreamble
End


Counter		fact
End
Style Fact
	CopyStyle	Theorem
	LabelCounter	fact
	LatexName	fact
	LabelString	"Fact \thechapter.\thefact."
	LangPreamble
	  \providecommand{\factname}{_(Fact)}
	EndLangPreamble
	BabelPreamble
	  \addto\captions$$lang{\renewcommand{\factname}{_(Fact)}}
	EndBabelPreamble
End

#-----
Counter		definition
End
Style Definition
	CopyStyle	Theorem
	LabelCounter	definition
	LatexName	definition
	LabelString	"Definition \thechapter.\thedefinition."
	RefPrefix	def
	Font
	  Shape		Up
	EndFont
	LabelFont
	  Shape		Up
	  Series	Bold
	EndFont
	LangPreamble
	  \providecommand{\definitionname}{_(Definition)}
	EndLangPreamble
	BabelPreamble
	  \addto\captions$$lang{\renewcommand{\definitionname}{_(Definition)}}
	EndBabelPreamble
End
#------


Style Claim
	CopyStyle             Theorem
	DependsOn             Theorem
	LatexName             claim
	LabelString           "Afirmación \thechapter.\thetheorem."
	Font
	  Shape               Up
	  Size                Normal
	EndFont
	LabelFont
	  Series              Medium
	  Shape               Italic
	EndFont
	LangPreamble
	  \providecommand{\claimname}{_(Claim)}
	EndLangPreamble
	BabelPreamble
	  \addto\captions$$lang{\renewcommand{\claimname}{_(Claim)}}
	EndBabelPreamble
End



Counter		case
End

Style Case
	CopyStyle	Claim
	LabelCounter	case
	LatexName	case
	LabelString	"Case \thechapter.\thecase."
	RefPrefix	case
	LangPreamble
	  \providecommand{\casename}{_(Case)}
	EndLangPreamble
	BabelPreamble
	  \addto\captions$$lang{\renewcommand{\casename}{_(Case)}}
	EndBabelPreamble
End


#------
Counter		property
End

Style Property
	CopyStyle	Claim
	LabelCounter	property
	LatexName	property
	LabelString	"Property \thechapter.\theproperty."
	RefPrefix	prop
	LangPreamble
	  \providecommand{\propertyname}{_(Property)}
	EndLangPreamble
	BabelPreamble
	  \addto\captions$$lang{\renewcommand{\propertyname}{_(Property)}}
	EndBabelPreamble
End
#------

## Ejercicios ----------------


#-----
Counter		example
End
Style Example
	CopyStyle	Conjecture
    Category	Exercise
	LabelCounter	example
	LatexName	example
	LabelString	"Example \thechapter.\theexample."
	RefPrefix	exa
	LangPreamble
	  \providecommand{\examplename}{_(Example)}
	EndLangPreamble
	BabelPreamble
	  \addto\captions$$lang{\renewcommand{\examplename}{_(Example)}}
	EndBabelPreamble
End
#-----

Counter		problem
End
Style Problem
	CopyStyle	Definition
	Category	Exercise
	LabelCounter	problem
	LatexName	problem
	LabelString	"Problem \thechapter.\theproblem."
	RefPrefix	prob
	LangPreamble
	  \providecommand{\problemname}{_(Problem)}
	EndLangPreamble
	BabelPreamble
	  \addto\captions$$lang{\renewcommand{\problemname}{_(Problem)}}
	EndBabelPreamble
End
#-----


Counter		exercise
End

Style Exercise
	CopyStyle	Problem
    Category	Exercise
	LabelCounter	exercise
	LatexName	exercise
	LabelString	"Exercise \thechapter.\theexercise."
	RefPrefix	exer
	LangPreamble
	  \providecommand{\exercisename}{_(Exercise)}
	EndLangPreamble
	BabelPreamble
	  \addto\captions$$lang{\renewcommand{\exercisename}{_(Exercise)}}
	EndBabelPreamble
End
#-----
Counter		prob
#  Within	chapter
End
# Prob does not copy a style to avoid preamble code
Style Programming
	Category	Exercise
	LatexType	Environment
	LatexName	programming
	Margin		First_Dynamic
	LabelType	Static
	LabelCounter	prob
	LabelString	"Ejercicio para programar. \thechapter.\theprob"
	NextNoIndent	1
	ResetArgs       1
	LabelSep	xx
	ParIndent	MMM
	ParSkip		0.4
	ItemSep		0.2
	TopSep		0.7
	BottomSep	0.7
	ParSep		0.3
	Align		Block
	AlignPossible	Left
	LabelFont
	  Series	Bold
	EndFont
	AddToToc	thm
	IsTocCaption	true
End


## Soluciones y demostraciones -------------
#-----
Counter		solution
End
Style Solution
	CopyStyle	Problem
           Category	Solución
	LabelCounter	solution
	LatexName	solution
	LabelString	"Solución"
	RefPrefix	solu
	LangPreamble
	  \providecommand{\solutionname}{_(Solution)}
	EndLangPreamble
	BabelPreamble
	  \addto\captions$$lang{\renewcommand{\solutionname}{_(Solution)}}
	EndBabelPreamble
End
#-----

Style Proof
	CopyStyle	Problem
           Category	Solución
	LatexName	proof
	LabelType	Static
	#LabelString	"# [number of Proof]"
          LabelString	"Proof"
	Argument 1
	  Mandatory	1
	  LabelString	"Label of proof"
	  Tooltip	"Label of the corresponding proof"
	  IsTocCaption true
	EndArgument
End




## InFlex --------------------


InsetLayout Flex:Portada
        LyxType	custom
       LabelString	"Portada"
       Decoration	classic
       BgColor	buttonbg
       Font
        Color	black
        Family	Typewriter
      EndFont
      LabelFont
       Color	blue
        Family	Sans
        Size	Small
     EndFont
    MultiPar	false
    LatexType	command
    LatexName	tbook
    Argument 1
        Mandatory	          1	
         LabelString	"Options"
         MenuString	"cajas|s"
        Tooltip	"See the Lipsum manual for possible          options"
   EndArgument
   Argument 2
        Mandatory	          1	
         LabelString	"Options"
         MenuString	"cajas|s"
        Tooltip	"See the Lipsum manual for possible          options"
   EndArgument
   Argument 3
        Mandatory	          1	
         LabelString	"Options"
         MenuString	"cajas|s"
        Tooltip	"See the Lipsum manual for possible          options"
   EndArgument
   Argument 4
        Mandatory	          1	
         LabelString	"Options"
         MenuString	"cajas|s"
        Tooltip	"See the Lipsum manual for possible          options"
   EndArgument
   Argument 5
        Mandatory	          1	
         LabelString	"Options"
         MenuString	"cajas|s"
        Tooltip	"See the Lipsum manual for possible          options"
   EndArgument
   Argument 6
        Mandatory	          1	
         LabelString	"Options"
         MenuString	"cajas|s"
        Tooltip	"See the Lipsum manual for possible          options"
   EndArgument
   Argument 7
        Mandatory	          1	
         LabelString	"Options"
         MenuString	"cajas|s"
        Tooltip	"See the Lipsum manual for possible          options"
   EndArgument
   Argument 8
        Mandatory	          1	
         LabelString	"Options"
         MenuString	"cajas|s"
        Tooltip	"See the Lipsum manual for possible          options"
   EndArgument
   	ResetsFont true
End



InsetLayout Flex:Chapter~Image
       LyxType	custom
       LabelString	"Imagen del capítulo"
       Decoration	classic
       BgColor	buttonbg
       Font
        Color	black
        Family	Typewriter
      EndFont
      LabelFont
       Color	blue
        Family	Sans
        Size	Small
     EndFont
    MultiPar	false
    LatexType	command
    LatexName	chapterimage
    Argument 1
        Mandatory	          0	
         LabelString	"Options"
         MenuString	"cajas|s"
        Tooltip	"See the Lipsum manual for possible          options"
   EndArgument
End


InsetLayout Flex:Portada~Imagen
       LyxType	custom
       LabelString	"Imagen de la portada"
       Decoration	classic
       BgColor	buttonbg
       Font
        Color	black
        Family	Typewriter
      EndFont
      LabelFont
       Color	blue
        Family	Sans
        Size	Small
     EndFont
    MultiPar	false
    LatexType	command
    LatexName	portadaimage
    Argument 1
        Mandatory	          0	
         LabelString	"Options"
         MenuString	"cajas|s"
        Tooltip	"See the Lipsum manual for possible          options"
   EndArgument
End


InsetLayout Flex:Sugerencia
       LyxType	custom
       LabelString	"Sugerencia"
       Decoration	classic
       BgColor	gray #buttonbg
       Font
        Color	black
        Family	Typewriter
      EndFont
      LabelFont
       Color	blue
        Family	Sans
        Size	Small
     EndFont
    MultiPar	true
    LatexType	Environment
    LatexName	sugerencia
    Argument 1
        Mandatory	          0	
         LabelString	"Options"
         MenuString	"cajas|s"
        Tooltip	"See the Lipsum manual for possible          options"
   EndArgument
End


InsetLayout Flex:Observación
       LyxType	custom
       LabelString	"Observación"
       Decoration	classic
       BgColor	gray #buttonbg
       Font
        Color	black
        Family	Typewriter
      EndFont
      LabelFont
       Color	blue
        Family	Sans
        Size	Small
     EndFont
    MultiPar	true
    LatexType	Environment
    LatexName	observacion
    Argument 1
        Mandatory	          0	
         LabelString	"Options"
         MenuString	"cajas|s"
        Tooltip	"See the Lipsum manual for possible          options"
   EndArgument
End



InsetLayout Flex:Interrogante
       LyxType	custom
       LabelString	"Interrogante"
       Decoration	classic
       BgColor	gray #buttonbg
       Font
        Color	black
        Family	Typewriter
      EndFont
      LabelFont
       Color	blue
        Family	Sans
        Size	Small
     EndFont
    MultiPar	true
    LatexType	Environment
    LatexName	pregunta
    Argument 1
        Mandatory	          0	
         LabelString	"Options"
         MenuString	"cajas|s"
        Tooltip	"See the Lipsum manual for possible          options"
   EndArgument
End


InsetLayout Flex:Nota
       LyxType	custom
       LabelString	"Nota"
       Decoration	classic
       BgColor	gray #buttonbg
       Font
        Color	black
        Family	Typewriter
      EndFont
      LabelFont
       Color	blue
        Family	Sans
        Size	Small
     EndFont
    MultiPar	true
    LatexType	Environment
    LatexName	nota
    Argument 1
        Mandatory	          0	
         LabelString	"Options"
         MenuString	"cajas|s"
        Tooltip	"See the Lipsum manual for possible          options"
   EndArgument
End
