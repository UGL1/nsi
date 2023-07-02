\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{nsiarticle}[2023/06/03 nsiarticle]

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
{\Large\titlefont\color{UGLiBlue}} % Format for section title
{\thesection} % Label
{0em} % Separation between label and title
{.~} % Code preceding the title

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
    \color{UGLiBlue}{\Huge\titlefont\Titre}\hfill\Classe\medskip
\hrule}\ \\[1em]
}
