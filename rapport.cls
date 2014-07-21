%Classe réalisée par AT016

%On définit une nouvelle classe définie à partir de book
\ProvidesClass{rapport}
\LoadClassWithOptions{book}

%La base (mettre english si rapport de stage en anglais)
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage[francais]{babel}

%On rectifie les marges pour centrer le document
\usepackage{geometry}
\geometry{bindingoffset=1.5cm}
\geometry{top=3.5cm, bottom=3cm, left=1.2cm , right=2.5cm}

%Pour remplir de bullshit
\usepackage{lipsum}

%Pour pouvoir mettre des images
\usepackage{graphicx}

%Pour pouvoir modifier les énumérations
\frenchbsetup{StandardLists=true}
\usepackage{enumitem}
\usepackage[ampersand]{easylist}

%Pour mettre des liens dans le fichier
\usepackage[xetex,colorlinks=true,pdfmenubar=false,pdfpagemode=UseNone,urlcolor=black,linkcolor=black,citecolor=black,filecolor=black,pdfstartview=FitH]{hyperref}

%Pour plus de maths et de chimie
\usepackage{amsmath,amsfonts,amsthm}
\usepackage[version=3]{mhchem} %Chimie
\usepackage{siunitx}  %Utilisation des unités SI

%Si vous avez besoin de mettre du code source par exemple:
% \begin{lstlisting}
% Put your code here.
% \end{lstlisting}
% Ou:
% \lstinputlisting[language=Python]{source_filename.py}
\usepackage{listings}

%Pour la bibliographie
% \usepackage{bibtex}

%Pour les tableaux
\usepackage{array} %Centrer les tableaux
\usepackage{multirow} %multiligne et multicolonne
\usepackage{arydshln} %ligne en pointillé
\usepackage[hang, small,labelfont=bf,up,textfont=it,up]{caption} %Nom des tables personnalisés
\usepackage{booktabs} %Tables avec des lignes marquées

%On redéfinit des headers propres
\usepackage{fancyhdr}
\setlength{\headheight}{15.2pt}
\pagestyle{fancy}
\lhead{}
\chead{\textit{ \nouppercase{\leftmark}}}
\rhead{}

%Footers
\lfoot{}
\cfoot{}
\rfoot{}
\fancyfoot[LE,RO]{\thepage}

%On overwrite la fonction pour les début de chapitres
\fancypagestyle{plain}{%
  \fancyhf{}\fancyfoot[LE,RO]{\thepage}%
  \renewcommand{\headrulewidth}{0pt}}
  
%Un poil plus pratique
\newcommand\institute[1]{\large \textbf{#1}}

%Pour que les caractères sous l'accolade soient en taille normale
\newcommand\displayUB[2]{\underbrace{#1}_{\displaystyle #2}}

%On définit l'envirronnement propre au théorème
\newtheorem{thm}{Théorème}
\newtheorem{lem}[thm]{Lemme}
\newtheorem{prop}{Proposition}[section]

%Raccourcis utile
\newcommand\RR{\mathbb{R}}         %R de l'ensemble des réels
\newcommand\ZZ{\mathbb{Z}}         %Z de l'ensemble des relatifs
\newcommand\bs[1]{\boldsymbol{#1}} %Symbole en gras dans une formule mathématique

%On rédéfinit les chapitres
\usepackage{titlesec}
\titleformat{\chapter}[display]
  {\normalfont\Large\bfseries}
  {}{0pt}{\Huge}
\titleformat{\section}
  {\normalfont\large\bfseries}
  {\thesection}{1em}{}
\titleformat{\subsection}
  {\normalfont\bfseries}
  {\thesubsection}{1em}{}
\titlespacing*{\thechapter}{0pt}{0pt}{0pt}
