\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{juso-antrag}[2021/09/03 Template für Anträge zur Juso MV]
\LoadClass[11pt]{scrartcl}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{graphicx}
\RequirePackage{lineno}
\RequirePackage{geometry}
\RequirePackage[ngerman]{babel}
\RequirePackage{lmodern}
\setkomafont{section}{\large}
\setkomafont{subsection}{\large}
\setkomafont{subsubsection}{\large}
\setkomafont{paragraph}{\large}
\setkomafont{subparagraph}{\large}
\setlength{\parindent}{0pt}
\renewcommand*{\date}[1]{\gdef\@date{#1}%
}
\renewcommand*{\@date}{dd.mm.yyyy}
\renewcommand*{\title}[1]{\gdef\@title{#1}%
}
\renewcommand*{\@title}{Titel des Antrags}
\newcommand*{\sendto}[1]{\gdef\@sendto{#1}%
}
\newcommand*{\@sendto}{LDK}
\newcommand*{\verband}[1]{\gdef\@verband{#1}%
}
\newcommand*{\@verband}{Musterstadt}
\newcommand*{\arbeitsgemeinschaft}[1]{\gdef\@arbeitsgemeinschaft{#1}%
}
\newcommand*{\@arbeitsgemeinschaft}{Jusos}
\newcommand*{\versammlungsart}[1]{\gdef\@versammlungsart{#1}%
}
\newcommand*{\@versammlungsart}{Mitgliederversammlung}
\makeatletter
\def\@maketitle{
    \begin{minipage}[t]{0.15\textwidth}
        \vspace*{-15mm}
        \includegraphics[height = 25mm]{juso-logo}
    \end{minipage}
    \begin{minipage}[t]{0.85\textwidth}
        \begin{flushright}
            \vspace*{-10mm}
            {\Large \@arbeitsgemeinschaft \@verband}\\[2ex]
            {\Large \@versammlungsart am \@date}\\[2ex]
        \end{flushright}
    \end{minipage}\\[1ex]
    \begin{center}
    {\LARGE \bfseries \@title }\\[4ex]
    {\large \@sendto}\\[2ex]
    \end{center}
}
\pagenumbering{gobble}
\renewcommand{\familydefault}{\sfdefault}
\geometry{margin=1in}
\makeatother
\endinput
