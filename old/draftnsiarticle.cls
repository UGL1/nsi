\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{draftnsiarticle}[2023/06/03 draftnsiarticle]

% Parent class:
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}
\RequirePackage[margin=2cm]{geometry}

% Common stuff


\input{colors.tex}
\input{tikz.tex}
\input{draftcommon.tex}

% Title and section formatting
\renewcommand{\thesection}{\arabic{section}}
\renewcommand{\thesubsection}{{\color{UGLiOrange!25!white}\arabic{section}.}\arabic{subsection}.}

\RequirePackage{titlesec}

\titleformat{\section}
{\Large\color{UGLiBlue}} % Format for section title
{\thesection} % Label
{0em} % Separation between label and title
{.~} % Code preceding the title

\titleformat{\subsection}
{\large\color{UGLiOrange}} % Format for section title
{\thesubsection} % Label
{0em} % Separation between label and title
{} % Code preceding the title

\titleformat{\subsubsection}
{\color{UGLiGreen}} % Format for section title
{\thesubsubsection} % Label
{0em} % Separation between label and title
{} % Code preceding the title

\newcommand{\Classe}{classe}
\newcommand{\classe}[1]{\renewcommand{\Classe}{#1}}

\newcommand{\Titre}{titre}
\newcommand{\titre}[1]{\renewcommand{\Titre}{#1}}

\renewcommand{\maketitle}{{
    \color{UGLiBlue}{\Huge\Titre}\hfill\Classe\medskip
\hrule}\ \\[1em]
}
