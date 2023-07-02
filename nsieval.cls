\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{nsieval}[2023/06/03 nsieval]

% Parent class:
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}
\RequirePackage[margin=2cm]{geometry}



% Common stuff
\input{fonts.tex}
\input{colors.tex}
\input{tikz.tex}
\input{common.tex}

% Title and section formatting
\renewcommand{\thesection}{\arabic{section}}
\renewcommand{\thesubsection}{{\color{UGLiOrange!25!white}\arabic{section}.}\arabic{subsection}.}

\RequirePackage{titlesec}

\titleformat{\section}
{\titlefont\color{UGLiBlue}} % Format for section title
{\Large Exercice \thesection} % Label
{.3ex} % Separation between label and title
{} % Code preceding the title

\titleformat{\subsection}
{\large\titlefont\color{UGLiOrange}} % Format for section title
{\thesubsection} % Label
{0em} % Separation between label and title
{} % Code preceding the title

\titleformat{\subsubsection}
{\titlefont\color{UGLiGreen}} % Format for section title
{\thesubsubsection} % Label
{0em} % Separation between label and title
{} % Code preceding the title

\newcommand{\Classe}{classe}
\newcommand{\classe}[1]{\renewcommand{\Classe}{#1}}

\newcommand{\Titre}{titre}
\newcommand{\titre}[1]{\renewcommand{\Titre}{#1}}

\renewcommand{\maketitle}{{
    \color{UGLiBlue}
    NOM, Prénom : \\[1em]
    {\Huge\titlefont\Titre}\hfill\Classe\bigskip
}
\begin{tikzpicture}
    \draw[color=UGLiBlue](0, 0)rectangle (\linewidth,3);
\end{tikzpicture}
}

% Specific 
\newcommand{\bareme}[1]{{\scriptsize\hfill\color{gray}\ldots~/ #1}}


