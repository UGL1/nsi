 \NeedsTeXFormat{LaTeX2e}
% \ProvidesPackage{nsibeamer}

\ProvidesClass{nsibeamer}[2023/06/21 nsibeamer]

% Parent class calling
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions\relax
\LoadClass{beamer}


\RequirePackage[french]{babel}
\RequirePackage{minted}   
\RequirePackage{hyperref}
\RequirePackage[normalem]{ulem}

%------- number printing
\RequirePackage{numprint}
\newcommand{\np}{\numprint}

%------- colors
\RequirePackage{xcolor}
\RequirePackage{colortbl}
\input{nsicolors.tex}

%------- links
\hypersetup{pdfborder = 0 0 0}
\urlstyle{same}
\newcommand{\link}[2]{\href{#1}{\color{UGLiBlue}#2}}


%------- specific beamer formatting
\usetheme[progressbar=frametitle]{metropolis}
\setbeamertemplate{footline}
{
    \leavevmode
    \hbox{
        \begin{beamercolorbox}[wd=.15\paperwidth,ht=2.25ex,dp=1ex,center]{title in head/foot}
            \usebeamerfont{author in head/foot}\insertshortauthor
        \end{beamercolorbox}
        
        \begin{beamercolorbox}[wd=.7\paperwidth,ht=2.25ex,dp=1ex,center]{author in head/foot}
            \usebeamerfont{author in head/foot}\insertshorttitle
        \end{beamercolorbox}
        
        \begin{beamercolorbox}[wd=.15\paperwidth,ht=2.25ex,dp=1ex,center]{title in head/foot}
            \insertframenumber{} / \inserttotalframenumber
        \end{beamercolorbox}
    }
}
\makeatletter
\setlength{\metropolis@progressinheadfoot@linewidth}{2pt}
\makeatother
\setbeamercolor{progress bar in section page}{use=progress bar,parent=progress bar}
\setbeamertemplate{footline}
{
    \leavevmode
    \hbox{
        \begin{beamercolorbox}[wd=.15\paperwidth,ht=2.25ex,dp=1ex,center]{title in head/foot}
            \usebeamerfont{author in head/foot}\insertshortauthor
        \end{beamercolorbox}
        
        \begin{beamercolorbox}[wd=.7\paperwidth,ht=2.25ex,dp=1ex,center]{author in head/foot}
            \usebeamerfont{author in head/foot}\insertshorttitle
        \end{beamercolorbox}
        
        \begin{beamercolorbox}[wd=.15\paperwidth,ht=2.25ex,dp=1ex,center]{title in head/foot}
            \insertframenumber{} / \inserttotalframenumber
        \end{beamercolorbox}
    }
}
\metroset{block=fill}
\setbeamercolor{normal text}{fg=UGLiDarkBlue!50!black,bg=white}
\setbeamercolor{alerted text}{fg=UGLiRed,bg=white}

\setmonofont{JetBrains Mono Light}[Renderer=Basic,
  BoldFont={JetBrains Mono Regular},
  ItalicFont={JetBrains Mono Light Italic},
  BoldItalicFont={JetBrains Mono Italic}]

\setminted{autogobble=true,breaklines=true,tabsize=4}
  
\newcommand{\tabstyle}[1][]{}
\newcommand{\ccell}{}
\input{nsibase.tex}
\input{nsitikz.tex}