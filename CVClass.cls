 %Thanks to Vel from latextemlates.com for the basis for this class (https://www.latextemplates.com/template/developer-cv)

\NeedsTeXFormat{LaTeX2e} 			% Required version of LaTeX
\ProvidesClass{CVClass} 			% Class name
\LoadClass{article} 				% Base class to build on top of

\usepackage[hidelinks]{hyperref}	% Required for links but hide the default boxes around links
\usepackage{moresize} 				% Provides more font size commands (\HUGE and \ssmall)
\usepackage{fontawesome} 			% Required for FontAwesome icons
\usepackage{geometry} 				% Required for adjusting page dimensions and margins
\usepackage[utf8]{inputenc} 		% Required for inputting international characters
\usepackage[T1]{fontenc} 			% Output font encoding for international characters
\usepackage[default]{raleway} 		% Font package
\usepackage{xcolor} 				% For changing text color
\usepackage{lipsum}

\geometry{
	paper=a4paper, 	% Paper size, change to letterpaper for US letter size
	top=0.5cm, 		% Top margin
	bottom=0.5cm,	% Bottom margin
	left=0.75cm, 	% Left margin
	right=0.75cm, 	% Right margin
	headheight=0cm, % Header height
	footskip=0cm, 	% Space from the bottom margin to the baseline of the footer
	headsep=0cm, 	% Space from the top margin to the baseline of the header
	showframe, 		% Uncomment to show how the type block is set on the page
}
\pagestyle{empty} 					% No headers or footers
\setlength{\parindent}{0mm} 		% Suppress paragraph indentation

\renewcommand{\title}[2]{	% Name and subtitle
	\mbox{}
	\vfill
	\bfseries
	\HUGE
	\underline{#1}
	\vskip0.2em
	\huge
	\normalfont#2
	\vspace{0.5em}
}