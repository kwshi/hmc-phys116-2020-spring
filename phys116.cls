\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{phys116}[2020/01/21 Physics 116: Quantum Mechanics]

\LoadClass{article}
\PassOptionsToClass{article}{10pt}

\RequirePackage{geometry}
\geometry{
  left=1in,
  right=1in,
  top=.25in,
  bottom=.5in,
  includeheadfoot,
}

\RequirePackage{titling}
\RequirePackage{lastpage}
\RequirePackage{fancyhdr}
\renewcommand{\title}[1]{\newcommand{\mytitle}{#1}} % titlesec conflict
\fancypagestyle{homework}{
  \fancyhf{}
  \renewcommand{\headrulewidth}{0pt}
  \chead{\textbf{\mytitle}\\Physics 116: Quantum Mechanics --- Spring 2020}
  \lhead{\leavevmode{\footnotesize\thedate}\\}
  \rhead{\leavevmode{\footnotesize\theauthor}\\}
  \cfoot{\footnotesize\thepage{} OF \pageref{LastPage}}
}
\pagestyle{homework}

\RequirePackage{titlesec}
\titleformat{\section}[hang]{\large\bfseries}{\thepset.\thesection}{1em/2}{}

\RequirePackage{microtype}
\RequirePackage[T1]{fontenc}
\RequirePackage[ascii]{inputenc}

\RequirePackage{lmodern}
\renewcommand{\familydefault}{\sfdefault}

\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{amssymb}
\RequirePackage{mathtools}
\RequirePackage{thmtools}
%\RequirePackage{mathrsfs}
\RequirePackage{wasysym}
\RequirePackage{esint}
\RequirePackage{textcomp}

\RequirePackage{isomath}
\RequirePackage{centernot}
\RequirePackage{cancel}

\RequirePackage{qcircuit}

\RequirePackage{parskip}

\RequirePackage{hyperref}

\RequirePackage{mdframed}

\mdfdefinestyle{exercise}{
  skipabove=\parskip,
  linecolor=gray,
  topline=false,
  leftline=false,
  rightline=false,
  innerleftmargin=0pt,
  innerrightmargin=0pt,
  innertopmargin=0pt,
  innerbottommargin=\parskip,
}

%\declaretheoremstyle[
%  numbered=no,
%  mdframed={style=exercise},
%]{exercise}
%
%\declaretheorem[style=exercise]{exercise}
\newenvironment{exercise}[1][]{\paragraph{#1}\begin{mdframed}[style=exercise]}{\end{mdframed}}

\mdfdefinestyle{solution}{
  skipabove=\parskip,
  hidealllines=true,
  innerleftmargin=0pt,
  innerrightmargin=0pt,
  endcode=\newpage,
}
\newmdenv[style=solution]{solution}

\mdfdefinestyle{book}{
  skipabove=\parskip,
  linecolor=gray,
  hidealllines=true,
  leftline=true,
  linewidth=.25em,
  backgroundcolor=lightgray!25,
}
\newmdenv[style=book]{book}

\mdfdefinestyle{aside}{
  skipabove=\parskip,
  linecolor=gray,
  hidealllines=true,
  leftline=true,
  linewidth=.25em,
}
\renewmdenv[style=aside]{aside}

\RequirePackage[inline]{enumitem}
\newlist{problems}{enumerate}{3}
\setlist[problems, 1]{label=(\alph*)}
\setlist[problems, 2]{label=(\roman*)}

\RequirePackage{siunitx}
\AtBeginDocument{
  \sisetup{
    math-rm=\mathrm,
  }
}

%
\newcommand{\QQ}{\mathbb Q}
\newcommand{\DD}{\mathbb D}
\newcommand{\RR}{\mathbb R}
\newcommand{\NN}{\mathbb N}
\newcommand{\FF}{\mathbb F}
\newcommand{\CC}{\mathbb C}
\newcommand{\TT}{\mathbb T}
\newcommand{\ZZ}{\mathbb Z}

\newcommand{\dif}{\mathop{}\!\mathrm d}
\newcommand{\pdif}{\mathop{}\!\partial}
\newcommand{\drv}[3][]{\frac{\dif^{#1} #2}{\dif #3^{#1}}}
\newcommand{\pdrv}[3][]{\frac{\pdif^{#1} #2}{\pdif #3^{#1}}}

\DeclareMathOperator{\diam}{diam}
\let\Re\relax
\let\Im\relax
\DeclareMathOperator{\Re}{Re}
\DeclareMathOperator{\Im}{Im}

\DeclarePairedDelimiter{\ket}{\lvert}{\rangle}
\DeclarePairedDelimiter{\bra}{\langle}{\rvert}
\DeclarePairedDelimiterX{\braket}[2]{\langle}{\rangle}{{#1} \delimsize\vert {#2}}

\DeclarePairedDelimiter{\cbr}{\{}{\}}
\DeclarePairedDelimiter{\set}{\{}{\}}
\DeclarePairedDelimiter{\sbr}{[}{]}
\DeclarePairedDelimiter{\abr}{\langle}{\rangle}
\DeclarePairedDelimiter{\inner}{\langle}{\rangle}
\DeclarePairedDelimiter{\abs}{\lvert}{\rvert}
\DeclarePairedDelimiter{\norm}{\lVert}{\rVert}
\DeclarePairedDelimiter{\prn}{(}{)}
\DeclarePairedDelimiter{\floor}{\lfloor}{\rfloor}
\DeclarePairedDelimiter{\ceil}{\lceil}{\rceil}

\renewcommand{\vec}{\mathbfit}
\newcommand{\mat}{\mathbf}

\RequirePackage{tikz}
\RequirePackage{tikz-3dplot}
\RequirePackage{pgfplots}

\usetikzlibrary{arrows.meta}
\usetikzlibrary{calc}
\usetikzlibrary{angles}
\usetikzlibrary{3d}
\usetikzlibrary{positioning}

\pgfplotsset{compat=1.16}
\usepgfplotslibrary{patchplots}

\tikzset{
  vector/.style={
    arrows={-Stealth[length=1em/2]},
    thick,
  },
  annotation/.style={
    opacity=1/2,
  },
  guide/.style={
    annotation,
    densely dotted,
  },
}
