\ProvidesClass{main}[2024/05/20 AIMS Journal Template]
\LoadClass[10pt, twoside]{article}

\usepackage[mono = false]{libertine}
\usepackage{inconsolata}
\usepackage[hidelinks, colorlinks]{hyperref}
\usepackage{authblk}

\usepackage{geometry, lipsum, tikz, mdframed, ragged2e, fancyhdr, float, mathtools, cuted, amsthm}
\definecolor{dcdscblueback}{HTML}{ECF1F4}
\definecolor{dcdscbluetext}{HTML}{4683B6}
\mdfdefinestyle{dcdscsigstyle}{
    backgroundcolor   = dcdscblueback,
    linecolor         = dcdscblueback,
    fontcolor         = black,
    innertopmargin    = 9.3pt,
    innerrightmargin  = 11.4pt,
    innerbottommargin = 12pt,
    innerleftmargin   = 11.4pt,
    linewidth         = 0pt
}


\renewcommand\Authfont{\normalfont}
\renewcommand\Affilfont{\normalfont\small}
\makeatletter
\renewcommand\@alph[1]{\ifcase#1\or a\or b\or c\or d\or e\or f\or g\or h\or i\or j\or k\or l\or m\or n\or o\or p\or q\or r\or s\or t\or u\or v\or w\or x\or y\or z\fi} \makeatother



\renewcommand\thefootnote{\arabic{footnote}} 



\usepackage{titlesec}
\titleformat*\section{\bfseries\sffamily}
\RequirePackage{marginfit}

\makeatletter
% Marginparb definition
\def\marginfit@writeposb#1{%
    \write\@auxout{\string\@newl@bel{label@marginfit}{#1}{0}}%
}
\def\marginparb{%
    \global\advance\c@marginfit@w\@ne%
    \expandafter\marginfit@writeposb\expandafter{\the\c@marginfit@w @m}%
    \@ifnextchar[\marginfit@mpar@ii\marginfit@mpar@i%
}

% cover style
\let\headrule\relax
\fancypagestyle{cover}{
    \vspace*{-4\baselineskip}
    \parbox{\dimeval{\paperwidth - 2in}}{
        \begin{minipage}{.64\linewidth}
          Manuscript submitted to AIMS Journal\par
          \vskip\baselineskip
          \textcolor{blue}{doi:110.3934/xx.xxxxxxx}
        \end{minipage}
        \hspace*{\fill}
        \begin{minipage}{.32\linewidth}
          \raggedleft
          \includegraphics[height = 1cm]{AIMS_Logo}
        \end{minipage}
        \par \vskip.5\baselineskip
        \rule{\linewidth}{2pt}
    }
    \vskip \baselineskip
    
    \parbox{\dimeval{\paperwidth - 3in}}
      {\raggedright \noindent \sffamily \Large \bfseries \@title}
    
    \vskip .75\baselineskip
    \begingroup
    \color{black}\sffamily \footnotesize \@author
    \vskip .5\baselineskip
    %Affiliations are included on p. 10.
    %\vskip .5\baselineskip
    %Communicated by Handling Editor
    \endgroup
    \vskip -2\baselineskip
}

% Define maketitle
\renewcommand\maketitle{
    \thispagestyle{cover}
}


\pagestyle{fancy}
\usepackage{lastpage}
\fancyfoot[OL]{ 
    \sffamily\footnotesize
	\textbf{Discrete and Continuous Dynamical Systems - Series C} 
}
\fancyfoot[EL]{ 
\kern -4em
    \sffamily\footnotesize
	\textbf{Discrete and Continuous Dynamical Systems - Series C}    
}
\lhead{} \rhead{} \cfoot{}





\renewenvironment{abstract}{\begingroup\bfseries\noindent}{\endgroup\par}
\ExplSyntaxOn
\clist_new:N \l__dcdsc_keywords_clist
\cs_new:Npn \keywords #1{
    \vspace{.5\baselineskip}
    \clist_set:Nn \l__dcdsc_keywords_clist {#1}
    \group_begin:
    \color{black} \noindent \sffamily \footnotesize
    \clist_use:Nn \l__dcdsc_keywords_clist {~\textbar{}~}
    \group_end:
    \par\vspace{.75\baselineskip}
}
\ExplSyntaxOff

\theoremstyle{definition}
\newtheorem{theorem}{Theorem}
\newtheorem{lemma}{Lemma}
\newtheorem{remark}{Remark}
\newtheorem{definition}{Definition}
\newtheorem{proposition}{Proposition}
\newtheorem{assumption}{Assumption}
\newtheorem{corollary}{Corollary}
\makeatother