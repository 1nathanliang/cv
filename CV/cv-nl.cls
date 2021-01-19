%----------------------------%
%  CLASS OPTIONS + PACKAGES  %
%----------------------------%
\ProvidesClass{cv-nl}[2020/02/20 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

\usepackage[hmargin=1in, vmargin=1in]{geometry}
\usepackage{hyperref}
\usepackage{fontspec}
\usepackage{fontawesome}
\usepackage{academicons}
\usepackage{mathabx}
\usepackage{tabularx}
\usepackage{array}
\usepackage{multirow}
\usepackage{dashrule}
\renewcommand{\arraystretch}{1.2}

%---------%
%  FONTS  %
%---------%

\usepackage{fontspec}
\setmainfont[Path = ../fonts/JosefinSans/,BoldItalicFont=JosefinSans-BoldItalic,BoldFont=JosefinSans-Bold,ItalicFont=JosefinSans-LightItalic]{JosefinSans-Medium} % The primary font for content text; defines bold, italic and bold-italic as well

%----------%
%  IMAGES  %
%----------%

\usepackage{graphicx}
\usepackage{wrapfig}
\graphicspath{ {./images/} }
\usepackage{float}

%----------%
%  COLORS  %
%----------%

\usepackage[usenames,dvipsnames]{xcolor} % Required for custom colors

\definecolor{primary}{HTML}{000000} % The primary document color for content text
\definecolor{headingcolor}{HTML}{0f4d92} % The color of the heading
\definecolor{sectioncolor}{HTML}{393939} % The color of the large sections
\definecolor{subsectioncolor}{HTML}{6c6c6c} % The color of subsections and places worked/studied
\definecolor{date}{HTML}{666666} % The color used for the Last Updated text at the top right


%-------------------%
%  DOCUMENT HEADER  %
%-------------------%
\newcommand{\header}[2]{
    \centering{\color{headingcolor}\fontspec[Path = ../fonts/JosefinSans/]{JosefinSans-Bold}\fontsize{24pt}{28pt}\selectfont #1} \\[5pt]
    \centering{\color{sectioncolor}\fontspec[Path = ../fonts/JosefinSans/]{JosefinSans-Bold}\fontsize{14pt}{16pt}\selectfont #2}
    \vspace{-5pt}
}

%-------------------------------------%
%  SECTION TITLE STYLING AND SPACING  %
%-------------------------------------%
\usepackage{titlesec}

\titlespacing{\section}{0pt}{0pt}{0pt}
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionspace}{\vspace{8pt}}

\titleformat{\section}{\color{sectioncolor}\scshape\fontspec[Path = ../fonts/JosefinSans/]{JosefinSans-Bold}\fontsize{16pt}{24pt}\selectfont\raggedright\uppercase}{}{0em}{}
\titleformat{\subsection}{\color{subsectioncolor}\scshape\fontspec[Path = ../fonts/JosefinSans/]{JosefinSans-Bold}\fontsize{12pt}{14pt}\selectfont\centering\uppercase}{}{0em}{}
%-----------%
%  SYMBOLS  % Defining symbols for legibility in monospace font instead of serif font
%-----------%

\def\Plus{\texttt{+}}
\def\Pound{\texttt{\#}}
\def\Minus{\texttt{-}}
\def\Dollar{\texttt{\$}}

\newenvironment{tightitemize}