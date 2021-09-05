\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{juso-antrag}[2021/09/03 Template für Anträge zur Juso MV]
\LoadClass{article}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{graphicx}
\RequirePackage{lineno}
\RequirePackage{geometry}
\renewcommand*{\date}[1]{\gdef\@date{#1}%
}
\renewcommand*{\@date}{dd.mm.yyyy}
\renewcommand*{\title}[1]{\gdef\@title{#1}%
}
\renewcommand*{\@title}{Titel des Antrags}
\newcommand*{\sendto}[1]{\gdef\@sendto{#1}%
}
\newcommand*{\@sendto}{LDK}
\newcommand*{\jusoverband}[1]{\gdef\@jusoverband{#1}%
}
\newcommand*{\@jusoverband}{Musterstadt}
\makeatletter
\def\@maketitle{
    \begin{minipage}[t]{0.25\textwidth}
        \includegraphics[height = 30mm]{jusos-logo}
    \end{minipage}
    \begin{minipage}[t]{0.75\textwidth}
        \begin{flushright}
            \vspace*{-25mm}
            {\Large Jusos \@jusoverband}\\[2ex]
            {\Large Mitgliederversammlung am \@date}\\[2ex]
        \end{flushright}
    \end{minipage}\\[1ex]
    \begin{center}
    {\Huge \bfseries \@title }\\[4ex]
    {\Large \@sendto}\\[2ex]
    \end{center}
}
\pagenumbering{gobble}
\renewcommand{\familydefault}{\sfdefault}
\geometry{margin=1in}
\makeatother
\endinput