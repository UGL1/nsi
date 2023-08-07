\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{nsi}[2023/06/21 nsi]
\RequirePackage{iftex}

% class handling : cours, exos, eval
\newcommand{\parentclass}{book}
\DeclareOption{cours}{\newcommand{\classiscours}{}\renewcommand{\parentclass}{book}}
\DeclareOption{exos}{\newcommand{\classisexos}{}\renewcommand{\parentclass}{article}}
\DeclareOption{eval}{\newcommand{\classiseval}{}\renewcommand{\parentclass}{article}}
\DeclareOption{article}{\newcommand{\classisarticle}{}\renewcommand{\parentclass}{article}}

% Parent class calling
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\parentclass}}
\ProcessOptions\relax
\LoadClass{\parentclass}


% Specific compilation options
\ifluatex{}
    \newcommand\compiler{LuaLaTeX}
    \input{nsilualatex.tex}
    \else
    \ifpdftex{}
    \newcommand\compiler{pdfLaTeX}
    \input{nsipdflatex.tex}
        \else
            \errmessage{This class must be compiled with LuaLaTeX (final) or pdfLaTeX (draft).}
            \def~{~~}~
    \fi
\fi

% common to all 
\input{nsicolors.tex}
\input{nsitikz.tex}
\RequirePackage{titlesec}
\RequirePackage{geometry}
% specific class codes

\ifcsname classiscours\endcsname%
    \newcommand\myresult{cours}
    \renewcommand{\thechapter}{\arabic{chapter}}
    \renewcommand{\thesection}{\arabic{section}}
    \renewcommand{\thesubsection}{
        {\color{UGLiOrange!25!white}\arabic{section}.}\arabic{subsection}.
    }

    \titleformat{\part}[block]
    {\Huge\titlefont\color{UGLiBlue}\exhyphenpenalty=10000} % Format for section title
    {\LARGE Partie \thepart\\} % Label
    {0em} % Separation between label and title
    {} % Code preceding the title

    \titleformat{\chapter}[block]
    {\bigtitlefont\scriptsize\color{UGLiBlue}} % Format for section title
    {\Large\titlefont Chapitre \thechapter \\} % Label
    {0em} % Separation between label and title
    {} % Code preceding the title

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
    \newcommand{\titre}{\title}
    \newcommand{\classe}[1]{}

\else%
    \ifcsname classisexos\endcsname%
        \geometry{margin=2cm}
        \newcommand\myresult{exos}
        \titleformat{\section}
        {\Large\titlefont\color{UGLiBlue}} % Format for section title
        {\thesection} % Label
        {0em} % Separation between label and title
        {} % Code preceding the title
        
        \titleformat{\section}
        {\titlefont\color{UGLiBlue}} % Format for section title
        {\Large Exercice \thesection} % Label
        {.3ex} % Separation between label and title
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
    \else
        \ifcsname classiseval\endcsname%
            \geometry{margin=2cm}
            \newcommand\myresult{eval}
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
        \else
            \geometry{margin=2cm}
            \newcommand\myresult{article}


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
        
        \fi
    \fi
\fi%


% common to all - rest

\input{nsicommon.tex}
\input{nsidivision.tex}
