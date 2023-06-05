\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{nsibook}[2023/06/03 nsibook]
\LoadClass[a4paper,12pt]{book}

% Common
\include{common.tex}

% Title and section formatting
\renewcommand{\thechapter}{\arabic{chapter}}
\renewcommand{\thesection}{
    \arabic{section}.
}
\renewcommand{\thesubsection}{
    {\color{UGLiOrange!25!white}\arabic{section}.}\arabic{subsection}.
}


\RequirePackage{titlesec}
\titleformat{\chapter}[block]
{\bigtitlefont\scriptsize\color{UGLiBlue}} % Format for section title
{\Large\titlefont Chapitre \thechapter \\} % Label
{0em} % Separation between label and title
{} % Code preceding the title

\titleformat{\section}
{\Large\titlefont\color{UGLiBlue}} % Format for section title
{\thesection} % Label
{0em} % Separation between label and title
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




