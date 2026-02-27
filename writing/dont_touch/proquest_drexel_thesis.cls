%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% DREXEL THESIS LATEX CLASS TEMPLATE
% Prepared by Emil Polyak, Associate Professor of Digital Media, Drexel University (2025)
%
% WHAT IS THIS FILE?
% This is a LaTeX document class (.cls) file that defines the formatting rules
% for a Drexel University thesis. Think of it as a template that automatically
% handles all the formatting requirements (margins, spacing, headers, etc.)
% so you can focus on writing your content.
%
% HOW DOES IT WORK?
% When you use \documentclass{dont_touch/proquest_drexel_thesis} in your main
% .tex file, LaTeX loads this class and applies all these formatting rules.
%
% IMPORTANT: DO NOT MODIFY THIS FILE!
% This file ensures your thesis meets Drexel and ProQuest formatting requirements.
% All your content goes in the main .tex file, not here.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CLASS IDENTIFICATION AND REQUIREMENTS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Tell LaTeX what version we need (LaTeX2e is the current standard)
\NeedsTeXFormat{LaTeX2e}

% Identify this class file with name, date, version, and description
% The date format is YYYY/MM/DD, version is v1.4
\ProvidesClass{dont_touch/proquest_drexel_thesis}[2025/05/19 v1.4 ProQuest/Drexel Thesis Class]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% BASE CLASS LOADING
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Load the standard 'report' class as our foundation
% Options explained:
% - 12pt: Sets the base font size to 12 points (required by Drexel)
% - oneside: Single-sided printing (as opposed to book-style double-sided)
% The 'report' class provides chapters, sections, table of contents, etc.
\LoadClass[12pt,oneside]{report}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PACKAGE LOADING AND CONFIGURATION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% ESSENTIAL FORMATTING PACKAGES
% These packages provide the core functionality needed for thesis formatting
\RequirePackage{float}           % Enables [H] float placement
\RequirePackage{newfloat}        % Allows us to create custom float types (like "List of Software")
\RequirePackage[T1]{fontenc}     % Modern font encoding - ensures special characters display correctly
\RequirePackage{geometry}        % Controls page dimensions, margins, headers, footers
\RequirePackage{setspace}        % Controls line spacing (single, double, etc.)
\RequirePackage{indentfirst}     % Forces first paragraph of each section to be indented (American style)
\RequirePackage{titlesec}        % Customizes how chapter/section titles look and are spaced
\RequirePackage{tocloft}         % Customizes table of contents, list of figures, list of tables
\RequirePackage{fancyhdr}        % Creates custom headers and footers (for page numbers, etc.)

% CONTENT SUPPORT PACKAGES
% These packages help with including various types of content

\RequirePackage{graphicx}        % Enables inclusion of images (PNG, JPG, PDF, etc.)
\RequirePackage{amsmath,amssymb} % Advanced math typesetting and symbols
\RequirePackage[section]{placeins} % Prevents figures/tables from floating past section boundaries
\RequirePackage{svg}             % Allows inclusion of SVG vector graphics

% TABLE AND CAPTION PACKAGES
\RequirePackage{booktabs}        % Creates professional-looking tables with proper spacing
\RequirePackage{caption}         % Customizes how figure and table captions are formatted

% UTILITY PACKAGES
\RequirePackage{etoolbox}        % Provides programming tools for LaTeX (if-then logic, etc.)
\RequirePackage{appendix}        % Handles appendix formatting and numbering
\RequirePackage{mathptmx}        % Sets font to Times New Roman (required by many institutions)

% TEXT PROCESSING PACKAGES
\RequirePackage[hyphens]{url}    % Handles URLs and allows line breaks at hyphens
\RequirePackage{microtype}       % Subtle improvements to text spacing and hyphenation
\RequirePackage[english]{babel}  % Sets hyphenation rules for American English
\RequirePackage[utf8]{inputenc}  % Allows Unicode characters in source files

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% DYNAMIC BIBLIOGRAPHY STYLE SYSTEM
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This section allows users to choose citation styles (APA, numeric, etc.)
% when they load the document class

\RequirePackage{xstring}         % Provides string comparison functions
\newcommand{\@bibstyle}{apa}     % Set APA as the default citation style

% This complex code processes options passed to the document class
% For example: \documentclass[numeric]{dont_touch/proquest_drexel_thesis}
\DeclareOption*{%
  \edef\temp@option{\CurrentOption}%  % Store the current option being processed
  \IfSubStr{\temp@option}{style=}{}{% Check if "style=" is already in the option
    % If the option is exactly "apa", "numeric", or "authoryear", set the style
    \IfStrEq{\temp@option}{apa}{\renewcommand{\@bibstyle}{apa}}{%
    \IfStrEq{\temp@option}{numeric}{\renewcommand{\@bibstyle}{numeric}}{%
    \IfStrEq{\temp@option}{authoryear}{\renewcommand{\@bibstyle}{authoryear}}{%
    % If it's not a recognized style, pass it to other packages
    \PassOptionsToPackage{\temp@option}{biblatex}}}}%
  }%
}
\ProcessOptions\relax  % Process all the options that were passed

% BIBLIOGRAPHY SETUP
\RequirePackage{csquotes}  % Proper quotation handling (required by biblatex)

% Load biblatex with the selected citation style
% Key options explained:
% - style=\@bibstyle: Use the style chosen above (apa, numeric, etc.)
% - backend=biber: Use Biber as the bibliography processor (more powerful than BibTeX)
% - doi=true: Include DOI numbers in references
% - url=true: Include URLs in references
% - eprint=false: Don't include arXiv eprint numbers
\RequirePackage[style=\@bibstyle, backend=biber, doi=true, url=true, eprint=false]{biblatex}

% Special setup for APA style only
% APA has specific language mapping requirements
\IfStrEq{\@bibstyle}{apa}{\DeclareLanguageMapping{american}{american-apa}}{}

% Fine-tune spacing in the bibliography
\setlength{\bibhang}{0.5in}                % No hanging indent for bibliography entries
\setlength{\bibitemsep}{0.5\baselineskip} % Space between bibliography entries
\setlength{\bibnamesep}{0pt}             % Space between author names

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% HYPERLINKS AND PDF METADATA
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Configure hyperref for PDF generation with clickable links
\RequirePackage[
  colorlinks=true,        % Make links colored instead of boxed
  linkcolor=black,        % Internal links (to sections, figures) are black
  citecolor=black,        % Citation links are black  
  filecolor=black,        % Links to files are black
  urlcolor=black,         % Web URLs are black
  pdfborder={0 0 1},      % Thin border around links
  pdfpagelayout=OneColumn, % Single column layout in PDF viewer
  pdfnewwindow=true,      % Open links in new window
  pdfstartview=FitH,      % Fit page width when opening PDF
  bookmarksnumbered=true, % Number bookmarks in PDF viewer
  bookmarksopen=true      % Expand bookmarks panel by default
]{hyperref}

% ADDITIONAL SUPPORT PACKAGES
\RequirePackage{url}         % URL handling (loaded after hyperref for compatibility)
\RequirePackage{xcolor}      % Color support for text and backgrounds
\RequirePackage{enumitem}    % Customizable lists (itemize, enumerate, description)
\RequirePackage{titling}     % Extra control over title page formatting
\RequirePackage{pdfpages}    % Include external PDF files as pages

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PAGE LAYOUT AND MARGINS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Set page dimensions according to Drexel and ProQuest requirements
% All margins must be exactly 1 inch on all sides
\geometry{
  letterpaper,              % Standard US letter size (8.5" x 11")
  top=1in,                  % 1 inch top margin
  bottom=1in,               % 1 inch bottom margin  
  left=1in,                 % 1 inch left margin
  right=1in,                % 1 inch right margin
  headheight=15pt,          % Minimum space for page headers
  headsep=0.25in,           % Space between header and main text
  footskip=0.9in            % Distance from text bottom to page number
}

% Set double-spacing throughout the document
% This applies to the main text; we'll override it for specific elements
\doublespacing

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CUSTOM COMMANDS FOR TITLE PAGE INFORMATION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% These commands allow users to specify thesis information in their main .tex file
% Usage example: \degreename{Master of Science in Computer Science}

\newcommand{\degreename}[1]{\gdef\@degreename{#1}}      % Full degree name
\newcommand{\degreedate}[1]{\gdef\@degreedate{#1}}      % Graduation date
\newcommand{\university}[1]{\gdef\@university{#1}}      % University name
\newcommand{\universitylogo}[1]{\gdef\@universitylogo{#1}} % Logo file path

% Set default values (can be overridden by user)
\university{Drexel University}
\universitylogo{drexel_logo}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TITLE PAGE GENERATION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Override LaTeX's default \maketitle command to create a thesis title page
% This creates a properly formatted title page that meets Drexel requirements
\renewcommand{\maketitle}{%
  \begin{titlepage}%
    \singlespacing                    % Use single spacing on title page
    \begin{center}%
      \vspace*{0.5in}%               % Start 0.5" from top
      {\large\bfseries \@title \par}% % Thesis title in large bold font
      \vspace{0.75in}%               % Space after title
      
      % Standard thesis declaration text required by Drexel
      \centerline{\large A Thesis \par}%
      \vspace{0.1in}%
      {\large Submitted to the Faculty \par}%
      \vspace{0.1in}%
      {\large of \par}%
      \vspace{0.1in}%
      {\large \@university \par}%    % University name (usually "Drexel University")
      \vspace{0.1in}%
      {\large by \par}%
      \vspace{0.1in}%
      {\large \@author \par}%        % Author name from \author{} command
      \vspace{0.1in}%
      {\large in partial fulfillment of the \par}%
      \vspace{0.1in}%
      {\large requirements for the degree \par}%
      \vspace{0.1in}%
      {\large of \par}%
      \vspace{0.1in}%
      {\large \@degreename \par}%    % Degree name from \degreename{} command
      \vspace{0.5in}%
      {\large \@degreedate \par}%    % Date from \degreedate{} command
      \vspace{0.5in}%
      
      % Include university logo if the file exists
      % The logo should be 2 inches wide
      \IfFileExists{\@universitylogo}{\includegraphics[width=2in]{\@universitylogo}}{}%
    \end{center}%
  \end{titlepage}%
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FRONT MATTER ENVIRONMENTS (Abstract, Dedication, Acknowledgments)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% ABSTRACT PAGE
% Creates a properly formatted abstract page with title and author
\renewenvironment{abstract}{%
  \newpage                           % Start on new page
  \thispagestyle{plain}             % Use plain page style (page number only)
  \begin{center}%
    \large\bfseries ABSTRACT\\      % "ABSTRACT" heading in large bold
    \vspace{1em}                    % Space after heading
    \@title\\                       % Thesis title
    \vspace{1em}                    % Space after title
    \@author                        % Author name
  \end{center}%
  \doublespacing                    % Double-space the abstract content
  \vspace{1em}                      % Space before abstract text begins
}{%
  \newpage                          % End on new page
}

% DEDICATION PAGE (Optional)
% Creates a page for dedicating the thesis to someone
\newenvironment{dedication}{%
  \newpage
  \thispagestyle{plain}
  \begin{center}%
    \large\bfseries DEDICATIONS     % "DEDICATIONS" heading
  \end{center}%
  \vspace{1em}
  \doublespacing
}{%
  \newpage
}

% ACKNOWLEDGMENTS PAGE (Optional)
% Creates a page for thanking people who helped with the thesis
\newenvironment{acknowledgments}{%
  \newpage
  \thispagestyle{plain}
  \begin{center}%
    \large\bfseries ACKNOWLEDGMENTS  % "ACKNOWLEDGMENTS" heading
  \end{center}%
  \vspace{1em}
  \doublespacing
}{%
  \newpage
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CHAPTER AND SECTION FORMATTING
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% CHAPTER HEADING FORMAT
% Formats chapter titles according to Drexel requirements
% Example result: "CHAPTER 1: INTRODUCTION"
\titleformat{\chapter}[display]     % 'display' puts number and title on separate lines
  {\normalfont\large\bfseries\centering}  % Font: normal weight, large size, bold, centered
  {\chaptertitlename\ \thechapter:}        % "CHAPTER 1:" part
  {0pt}                                    % No extra space between number and title
  {\large\MakeUppercase}                   % Title in large font, ALL CAPS

% Space before and after chapter titles
\titlespacing*{\chapter}{0pt}{0pt}{40pt}   % No space above, 40pt space below

% SECTION FORMATTING
% Regular sections (like "1.1 Background")
\titleformat{\section}
  {\normalfont\bfseries}            % Bold font
  {\thesection}                     % Section number (e.g., "1.1")
  {1em}                             % Space between number and title
  {}                                % No additional formatting

% Spacing: 3.5ex above (flexible), 2.3ex below
\titlespacing*{\section}{0pt}{3.5ex plus 1ex minus .2ex}{2.3ex plus .2ex}

% SUBSECTION FORMATTING
% Subsections (like "1.1.1 Problem Statement")
\titleformat{\subsection}
  {\normalfont\bfseries}            % Bold font
  {\thesubsection}                  % Subsection number (e.g., "1.1.1")
  {1em}                             % Space between number and title
  {}

\titlespacing*{\subsection}{0pt}{3.25ex plus 1ex minus .2ex}{1.5ex plus .2ex}

% SUBSUBSECTION FORMATTING
% Sub-subsections (like "1.1.1.1 Specific Issue")
\titleformat{\subsubsection}
  {\normalfont\bfseries}            % Bold font
  {\thesubsubsection}               % Subsubsection number
  {1em}                             % Space between number and title
  {}

\titlespacing*{\subsubsection}{0pt}{3.25ex plus 1ex minus .2ex}{1.5ex plus .2ex}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TABLE OF CONTENTS AND LIST FORMATTING
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Customize the names of standard lists
\renewcommand{\contentsname}{TABLE OF CONTENTS}
\renewcommand{\listtablename}{LIST OF TABLES}
\renewcommand{\listfigurename}{LIST OF FIGURES}

% FORMAT CHAPTER ENTRIES IN TABLE OF CONTENTS
\renewcommand{\cftchapfont}{\normalfont}      % Chapter titles in normal font (not bold)
\renewcommand{\cftchappagefont}{\normalfont}  % Page numbers in normal font
\renewcommand{\cftchapdotsep}{\cftdotsep}     % Add dots between title and page number
\setlength{\cftbeforechapskip}{0.4\baselineskip} % Space before each chapter entry

% FORMAT TABLE ENTRIES IN LIST OF TABLES
\renewcommand{\cfttabfont}{\normalfont}       % Table titles in normal font
\renewcommand{\cfttabpagefont}{\normalfont}   % Page numbers in normal font
\renewcommand{\cfttabdotsep}{\cftdotsep}      % Add dots between title and page number

% FORMAT FIGURE ENTRIES IN LIST OF FIGURES
\renewcommand{\cftfigfont}{\normalfont}       % Figure captions in normal font
\renewcommand{\cftfigpagefont}{\normalfont}   % Page numbers in normal font
\renewcommand{\cftfigdotsep}{\cftdotsep}      % Add dots between caption and page number

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FIGURE AND TABLE CAPTION FORMATTING
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Set caption formatting
\captionsetup{font=singlespacing}             % Captions are single-spaced
\DeclareCaptionLabelFormat{caps}{\MakeUppercase{#1} #2}  % "FIGURE 1" instead of "Figure 1"
\captionsetup{labelformat=caps}               % Apply the uppercase format

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% APPENDIX FORMATTING
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Command to start appendices
% This changes chapter numbering from numbers (1, 2, 3) to letters (A, B, C)
\newcommand{\startappendix}{%
  \appendix                                   % Switch to appendix mode
  \renewcommand{\chaptername}{APPENDIX}      % Change "CHAPTER" to "APPENDIX"
  \renewcommand{\thechapter}{\Alph{chapter}} % Use letters instead of numbers
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SPECIAL ENVIRONMENT FORMATTING
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Override double-spacing in specific environments where single-spacing is better

\AtBeginEnvironment{appendix}{\setlist{nosep}}        % Compact lists in appendices
\renewcommand{\bibfont}{\singlespacing}               % Single-space bibliography
\AtBeginEnvironment{quote}{\singlespacing}            % Single-space block quotes
\AtBeginEnvironment{quotation}{\singlespacing}        % Single-space long quotations
\AtBeginEnvironment{figure}{\captionsetup{font=singlespacing}}  % Single-space figure captions
\AtBeginEnvironment{table}{\captionsetup{font=singlespacing}}   % Single-space table captions

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PAGE HEADERS AND FOOTERS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Set up page numbering in the upper right corner
\pagestyle{fancy}                             % Use the fancy page style
\fancyhf{}                                    % Clear all headers and footers
\fancyhead{}                                  % Clear default header content
\fancyhead[R]{\hspace{-0.25in}\thepage}      % Page number in upper right, adjusted for margins
\renewcommand{\headrulewidth}{0pt}            % No line under the header

% Also apply to "plain" style pages (like chapter beginnings)
\fancypagestyle{plain}{%
  \fancyhf{}                                  % Clear all headers and footers
  \fancyhead[R]{\hspace{-0.25in}\thepage}    % Page number in upper right
  \renewcommand{\headrulewidth}{0pt}          % No line under the header
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PDF METADATA AND COMPLIANCE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Automatically set PDF metadata when the document is compiled
\AtBeginDocument{%
  \hypersetup{
    pdftitle={\@title},              % Set PDF title to thesis title
    pdfauthor={\@author},            % Set PDF author to thesis author
    pdfsubject={Thesis},             % Set PDF subject
    pdfkeywords={}                   % PDF keywords (empty by default)
  }
}

% PDF/A compliance settings for ProQuest submission
% These settings ensure the PDF meets archival standards
\pdfminorversion=7                   % Use PDF version 1.7
\pdfobjcompresslevel=0               % No object compression
\pdfcompresslevel=0                  % No stream compression

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TABLE AND FLOAT FORMATTING
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Improve table spacing
\renewcommand{\arraystretch}{1.2}    % Increase row height in tables by 20%

% Fine-tune how figures and tables are placed on pages
% These settings make LaTeX more willing to put floats where you want them
\renewcommand{\topfraction}{0.85}        % Up to 85% of page top can be floats
\renewcommand{\bottomfraction}{0.85}     % Up to 85% of page bottom can be floats
\renewcommand{\textfraction}{0.1}        % At least 10% of page must be text
\renewcommand{\floatpagefraction}{0.75}  % Float pages must be 75% full

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SPECIAL ENVIRONMENTS FOR THESIS COMPONENTS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% VITA ENVIRONMENT (Required for PhD theses)
% Creates a biographical sketch of the author
\newenvironment{vita}{%
  \chapter*{VITA}%                          % Unnumbered chapter
  \addcontentsline{toc}{chapter}{VITA}%     % Add to table of contents
  \doublespacing%                           % Double-space content
}{%
}

% SUPPLEMENTARY MATERIALS ENVIRONMENT
% For additional materials like datasets, code, etc.
\newenvironment{supplementarymaterials}{%
  \chapter*{SUPPLEMENTARY MATERIALS}%
  \addcontentsline{toc}{chapter}{SUPPLEMENTARY MATERIALS}%
  \doublespacing%
}{%
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PAGE NUMBERING SYSTEM
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Front matter (abstract, TOC, etc.) uses Roman numerals (i, ii, iii, iv...)
\pagenumbering{roman}

% Command to start main content with Arabic numerals (1, 2, 3...)
% Also includes a required blank page per Drexel formatting
\newcommand{\starttext}{%
  \newpage                              % Start new page
  \thispagestyle{empty}                 % No page number on blank page
  \null                                 % Empty page content
  \newpage                              % Start another new page
  \pagenumbering{arabic}                % Switch to Arabic numerals (1, 2, 3...)
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% UTILITY COMMANDS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\makeatletter
\newdimen\drex@oldparskip
\newcommand{\insertlistsection}[2]{%
  \cleardoublepage
  \phantomsection
  \thispagestyle{plain}%
  % --- Title block: match LoF/LoT exactly, single-spaced, no extra glue
  \begingroup
    \singlespacing
    \setlength{\parskip}{0pt}%
    \setlength{\parindent}{0pt}%
    \vspace*{\cftbeforeloftitleskip}%
    {\cftloftitlefont #1\par}%
    \vspace{\cftafterloftitleskip}%
  \endgroup
  \addcontentsline{toc}{chapter}{#1}%
  \@mkboth{#1}{#1}%
  % --- Remove the phantom gap before the first line of content:
  \drex@oldparskip=\parskip
  \setlength{\parskip}{0pt}% suppress one-time paragraph glue
  \noindent\ignorespaces
  \input{#2}%
  \par
  \setlength{\parskip}{\drex@oldparskip}% restore user's parskip
}
\makeatother

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% END OF CLASS FILE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This completes the Drexel thesis class definition. When you use 
% \documentclass{dont_touch/proquest_drexel_thesis} in your main .tex file,
% all of these formatting rules will be automatically applied to create
% a properly formatted thesis that meets Drexel and ProQuest requirements.