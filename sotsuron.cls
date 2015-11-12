%
%  This class file is used for making manuscript style.
%    Ver 1.00  1997.05.18
%    Ver 1.01  1997.05.22
%    Ver 1.02  1997.06.04
%    Ver 1.03  1999.05.27
%   by hagihira@masui.med.osaka-u.ac.jp
%      Department of Anesthesiology and Surgical Center
%      Osaka Prefectural Habikino Hospital,
%      3-7-1 Habikino, Habikino City, Osaka Japan 583-8588.
%
%
%  Modified by Minoura
%
\ProvidesClass{sotsuron}[2008/01/17]
\LoadClassWithOptions{jarticle}
\usepackage{uline--}
%
%  double space setting
%
\def\baselinestretch{1.2}
\setlength{\paperwidth}{210mm}
\setlength{\paperheight}{297mm}
\setlength{\oddsidemargin}{0mm}
\setlength{\evensidemargin}{0mm}
\setlength{\topmargin}{0mm}
\setlength{\headheight}{0mm}
\setlength{\headsep}{0mm}
\setlength{\footskip}{13mm}
\setlength{\textheight}{247.6mm}
\setlength{\textwidth}{159.2mm}

\def\@maketitle{\newpage
  \null
  \thispagestyle{empty}
  \vspace{10mm}
  \begin{center}
    \scalebox{3}{特　別　研　究　論　文 \par}
  \end{center}
  \vspace{10mm}
  {\LARGE 標題 \par}
  {\centering{\LARGE \uline{\@title} \par}}
  {\LARGE 欧文標題 \par}
  {\centering{\LARGE \uline{\@etitle} \par}}
  \vspace{25mm}
  \begin{center}
    {\LARGE
      \begin{tabular}{ll}
        研究者氏名 & \uline{\@author} \\
        指導教員   & \uline{\@teacher}
      \end{tabular} \par}
    \vspace{40mm}
    {\Large
      提出日　\@date \par
      鈴鹿工業高等専門学校 \par
      \@affiliation \par
    }
  \end{center}
  \newpage
  \setcounter{page}{1}
  \pagestyle{plain}
  \gdef\@affiliation{}
  \gdef\@title{}
  \gdef\@author{}
  \gdef\@affiliation{}
  \gdef\@etitle{}
  \gdef\@teacher{}
  \gdef\@date{}
}
\long\def\affiliation#1{\long\gdef\@affiliation{#1}}
\long\def\title#1{\long\gdef\@title{#1}}
\long\def\author#1{\long\gdef\@author{#1}}
\long\def\affiliation#1{\long\gdef\@affiliation{#1}}
\long\def\etitle#1{\long\gdef\@etitle{#1}}
\long\def\teacher#1{\long\gdef\@teacher{#1}}
\long\def\date#1{\long\gdef\@date{#1}}

%
%  omit_number = 0
%
%  citation_form = 4
%
%  biblio_heading = 4
%
%    symbol definition
%
\newcommand{\degree}{$^{\circ}$}
\newcommand{\degC}{{$^{\circ}$C}}
\newcommand{\degF}{{$^{\circ}$F}}
\newcommand{\Rmark}{\raisebox{1ex}{\textregistered}}

\makeatletter

\renewcommand\abstractname{Abstract}
\renewenvironment{abstract}{%
  \normalsize
  \thispagestyle{empty}
  \@beginparpenalty\@lowpenalty
  {\Large \bfseries \abstractname}%
  \vspace{1em}\\%
    \@endparpenalty\@M
}%
{\clearpage\setcounter{page}{0}}

\renewcommand\theparagraph{}
\renewcommand{\paragraph}{%
  \@startsection{paragraph}% #1 見出し
   {1}% #2 見出しのレベル
%   {\z@}% #3 横組みの場合，見出し左の空き(インデント量)
   {-1em}
%   {1.5\Cvs \@plus.5\Cdp \@minus.2\Cdp}% #4 見出し上の空き
   {1em}% #4 見出し上の空き
%   {.5\Cvs \@plus.3\Cdp}% #5 見出し下の空き (負の値なら見出し後の空き)
   {-1em}
%  {\reset@font\Large\bfseries}% #6 見出しの属性
%  {\centering\reset@font\Large\bfseries}% 中央揃え
%  {\raggedleft\reset@font\Large\bfseries}% 右揃え
   {\reset@font\normalsize\bf}
}%

\makeatother

%
% end of suzuka.cls -----------------------------------------------
