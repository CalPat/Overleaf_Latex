% Intro Options
\ProvidesClass{deedy-resume-openfont}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=2.5cm, vmargin=1.75cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage{hyperref}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage[USenglish]{babel}
\usepackage[USenglish]{isodate}
\numdate %number only date
\usepackage{fontspec,xltxtra,xunicode}

% Color definitions
\definecolor{date}{HTML}{666666} 
\definecolor{primary}{HTML}{2b2b2b} 
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

% Set main fonts
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Color=primary, Path = fonts/lato/]{Lato-Lig}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/raleway/]{Raleway-ExtraLight}
\newcommand{\custombold}[1]{\color{subheadings}\fontspec[Path = 
fonts/lato/]{Lato-Reg}\selectfont #1 \normalfont}


% Date command
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\textblockorigin{0mm}{5mm} % start everyth
\newcommand{\lastupdated}{\begin{textblock}{60}(165,0)
\color{date}\fontspec[Path = fonts/raleway/]{Raleway-ExtraLight}\fontsize{8pt}{10pt}\selectfont 
Updated \today
\end{textblock}}

% Name command
\newcommand{\namesection}[3]{
	\raggedright{
		\sffamily
		\fontspec[Path = fonts/lato/]{Lato-Hai}\fontsize{25}{10cm}\selectfont #1 
		\fontspec[Path = fonts/lato/]{Lato-Lig}\selectfont #2
	} \\
	\vspace{5pt}
	\raggedright{ \color{headings}\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{14pt}\selectfont #3}
	\noindent\makebox[\linewidth]{\rule{\paperwidth}{.125mm}}
	\vspace{-15pt}
}
\titlespacing{\section}{0pt}{0pt}{0pt}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{16pt}{24pt}\selectfont \raggedright\uppercase}{} {0em}{}


% Subeadings command
\titleformat{\subsection}{\color{subheadings}
\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase}{}{0em}{}
\titlespacing{\subsection}{0pt}{\parskip}{-.9\parskip}
\titlespacing{\subsubsection}{0pt}{\parskip}{-.9\parskip}

\newcommand{\runsubsection}[1]{\color{subheadings}
\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase {#1} \normalfont}

% Publication line
\newcommand{\runpublication}[1]{\color{subheadings}
\fontspec[Path = fonts/lato/]{Lato-BolIta}\fontsize{12pt}{12pt}\selectfont\bfseries {#1\\} \normalfont}

% Descriptions command
\newcommand{\descript}[1]{\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}


% Date - Location command
\newcommand{\datelocation}[2]{\color{headings}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{10pt}{13pt}\selectfont {#1 | #2 \\} \normalfont}

% Location command
\newcommand{\location}[1]{\color{headings}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{10pt}{13pt}\selectfont {#1 \\} \normalfont}

%Graduate Assistance Line
\newcommand{\gradassistant}[2]{\color{headings}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{10pt}{13pt}\selectfont {#1 | }\normalfont \custombold {#2 \\} \normalfont}



% Section seperators command
\newcommand{\sectionsep}[0]{\vspace{8pt}}


% % Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
    \vspace{-\topsep}
    \begin{itemize}
        \itemsep10pt 
        \parskip5pt 
        \parsep20pt}
    {\end{itemize}
    \vspace{-\topsep}}

% % Bullet Lists with fewer gaps command
\newenvironment{tightemize2}{
    \vspace{-.75\topsep}
    \begin{itemize}
        \itemsep2pt 
        \parskip0pt 
        \parsep0pt}
    {\end{itemize}
    \vspace{-.5\topsep}}
    
    
% Publications command
% \newcommand{\publications}[3]{
% \color{subheadings}\raggedright\scshape\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}


% % Name command
% \newcommand{\namesection}[3]{
% 	\raggedright{
% 		\sffamily
% 		\fontspec[Path = fonts/lato/]{Lato-Hai}\fontsize{30}{10cm}\selectfont #1 
% 		\fontspec[Path = fonts/lato/]{Lato-Lig}\selectfont #2
% 	} \\
% 	\vspace{5pt}
% 	\raggedright{ \color{headings}\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{14pt}\selectfont #3}
% 	\noindent\makebox[\linewidth]{\rule{\paperwidth}{.25mm}}
% 	\vspace{-15pt}
%}


