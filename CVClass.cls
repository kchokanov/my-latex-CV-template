 % Thanks to Jan Vorisek (jan@vorisek.me) and Vel from latextemlates.com for the basis for this class (https://www.latextemplates.com/template/developer-cv)

\NeedsTeXFormat{LaTeX2e}			% Required version of LaTeX
\ProvidesClass{CVClass}				% Class name
\LoadClass{article}					% Base class to build on top of

\usepackage[hidelinks]{hyperref}	% Required for links but hide the default boxes around links
\usepackage{moresize} 				% Provides more font size commands (\HUGE and \ssmall)
\usepackage{fontawesome}			% Required for FontAwesome icons
\usepackage{geometry}				% Required for adjusting page dimensions and margins
\usepackage[utf8]{inputenc}			% Required for inputting international characters
\usepackage[T1]{fontenc}			% Output font encoding for international characters
\usepackage[default]{raleway}		% Font package
\usepackage{xcolor}					% For changing text color
\usepackage{lipsum}					% For adding filler text
\usepackage{ifthen}					% For if statements
\usepackage{tikz}					% Required for creating squares in the background

\setlength{\parindent}{0mm} 		% Suppress paragraph indentation
\pagestyle{empty}					% No headers or footers
\usetikzlibrary{shapes, backgrounds}
\tikzset{x=1cm, y=1cm}				% Default tikz units
\geometry{
	paper=a4paper,	% Paper size, change to letterpaper for US letter size
	top=0.5cm,		% Top margin
	bottom=0.5cm,	% Bottom margin
	left=0.75cm,	% Left margin
	right=0.75cm,	% Right margin
	%showframe,		% Uncomment to show how the type block is set on the page
}


% desc: Command to vertically centre adjacent content
% args: Content to be aligned
\newcommand{\vcenteredhbox}[1]{
	\begingroup%
		\setbox0=\hbox{#1}\parbox{\wd0}{\box0}%
	\endgroup%
}


% desc: creates title of CV
% args: #1 []optional title for applicant
% args: #2 Name of applicant
\renewcommand{\title}[2][]{	
	\mbox{}
	\vfill
	\bfseries
	\HUGE	% change to smaller size if text wraps
	\underline{#2}
	\newline
	\huge	% change to smaller size if text wraps
	\normalfont#1
	\vspace{15mm}
}

% desc: creates icon with surrounding black box and text with an optional link
% args: #1 []optional link for text
% args: #2 FontAwesome Icon name, IDs can be found in package README.pdf
% args: #3 text accompanying the icon
\newcommand{\info}[3][]{
	\vcenteredhbox{
		\colorbox{black}{
			\makebox(6, 10){	%TODO - round edges of boxes
				\textcolor{white}{
					\large\csname #2\endcsname
				}
			}
		}
	}
	\hskip1mm
	\vcenteredhbox{\href{#1}{\small#3}}
	\vspace{1mm}
	\newline
}