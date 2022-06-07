%%
%% This is file `bjtu-bachelor-thesis.cls'
%%
%% ------------------------------------------------------------------------
%% Copyright (C) 2022 Q.Tang
%% 
%% Licensed under the Apache License, Version 2.0 (the "License");
%% you may not use this file except in compliance with the License.
%% You may obtain a copy of the License at
%% 
%%     http://www.apache.org/licenses/LICENSE-2.0
%% 
%% Unless required by applicable law or agreed to in writing, software
%% distributed under the License is distributed on an "AS IS" BASIS,
%% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%% See the License for the specific language governing permissions and
%% limitations under the License.
%% ------------------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{bjtu-bachelor-thesis}[2022/06/06]
\def\version{1.1}
\LoadClass[a4paper,zihao=-4,twoside,hyperref,openright]{ctexbook}
%========================================================================%
% 基本宏包
%========================================================================%
\RequirePackage{caption}
\RequirePackage{mathptmx}
\RequirePackage{changepage}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{tabularx}
\RequirePackage{subcaption}
\RequirePackage{pgfplots}
\RequirePackage{tikz}
\RequirePackage{multicol}
\RequirePackage{setspace}
\RequirePackage{titletoc}
\RequirePackage{fontspec}
\RequirePackage[colorlinks,linkcolor=black,anchorcolor=black,citecolor=black,urlcolor=black]{hyperref}
\RequirePackage{calc}
\RequirePackage{datetime}
\RequirePackage{etoolbox}
\RequirePackage{booktabs}
\RequirePackage{floatrow}
\RequirePackage{appendix}
\RequirePackage{enumitem}
\RequirePackage[backend=biber,style=gb7714-2015]{biblatex}
\RequirePackage{underscore}
\RequirePackage{listings}
\RequirePackage{color}
\RequirePackage{multirow}
\RequirePackage{float}
\RequirePackage[linesnumbered,ruled,vlined]{algorithm2e}
\RequirePackage{algpseudocode}
\RequirePackage{bm}
\RequirePackage{textcomp}
\RequirePackage{enumitem}
\RequirePackage{xcolor}
\RequirePackage{graphicx}
\RequirePackage{longtable}
\RequirePackage[normalem]{ulem}
\RequirePackage{ragged2e}
\RequirePackage{blindtext}
\RequirePackage{adjustbox}
%========================================================================%
% 北京交大明确给出的格式
%========================================================================%
\setCJKfamilyfont{hwzs}{stzhongs.ttf}[Path=fonts/]
\newcommand{\hwzs}{\CJKfamily{hwzs}}
\setCJKfamilyfont{bjtusong}{simsun.ttc}[Path=fonts/, AutoFakeBold=2.5]
\newcommand*{\bjtusongti}{\CJKfamily{bjtusong}}

\newfontfamily{\bjtueheiti}{simhei.ttf}[Path=fonts/]

\setCJKfamilyfont{bjtuhei}{simhei.ttf}[Path=fonts/, AutoFakeBold=2]
\newcommand*{\bjtuheiti}{\CJKfamily{bjtuhei}}
\newcommand*{\yearmonth}{\songti \zihao{-3} \the \year 年 \the \month 月}


\geometry{left=2.5cm,right=2.5cm,top=3.0cm,bottom=3.0cm,headheight=1.5cm,footskip=1.75cm}
\setmainfont{Times New Roman}
\linespread{1.4}\selectfont
\setlength{\baselineskip}{20pt}

\renewcommand{\arraystretch}{1.2}

\renewcommand{\captionfont}{\zihao{5}}
\renewcommand{\theequation}{\arabic{chapter}-\arabic{equation}}
\renewcommand{\thefigure}{\arabic{chapter}-\arabic{figure}}
\renewcommand{\thetable}{\arabic{chapter}-\arabic{table}}
\DeclareCaptionFont{bjtusongti}{\zihao{5}\bjtusongti}
\captionsetup{font=bjtusongti}

\DeclareFloatFont{bjtusongti}{\zihao{5}\bjtusongti}
\DeclareFloatVCode{figureafterfloat}{\vspace{-16pt}}
\DeclareFloatVCode{tableafterfloat}{\vspace{-4pt}}
\floatsetup[table]{font=bjtusongti,capposition=top,captionskip=2pt,postcode=tableafterfloat}
\floatsetup[figure]{font=bjtusongti,capposition=bottom,captionskip=4pt,postcode=figureafterfloat}

\ctexset{
    chapter = {
        name={,},
        number={\arabic {chapter}},
        beforeskip={-4pt},
        afterskip={18pt},
        nameformat={},
        titleformat={},
        format=\heiti\zihao{3},
    },
    section = {
        format=\raggedright\heiti\zihao{-3},
        beforeskip={24pt},
        afterskip={18pt},
    },
    subsection = {
        format=\raggedright\heiti\zihao{4},
        beforeskip={24pt},
        afterskip={18pt},
    },
}

\setlength{\itemsep}{100pt}
\setlength{\abovedisplayskip}{-5cm}
\setlength{\belowdisplayskip}{-5cm}
\captionsetup[table]{labelsep=space} % 表
\captionsetup[figure]{labelsep=space} % 图 

\let\oldequation=\equation
\let\endoldequation=\endequation
\renewenvironment{equation}{\vspace{-0.7cm}\begin{oldequation}}{\vspace{-0.3cm}\end{oldequation}\ignorespacesafterend}
%========================================================================%
\newcommand{\figcaption}[1]{\caption{图}{#1}}
%========================================================================%
% 目录格式
%========================================================================%
\makeatletter
\renewcommand\tableofcontents{%
    \chapter*{\makebox[\linewidth]{\zihao{-2} 目\hspace{2em}录}
        \@mkboth{\MakeUppercase \contentsname}{}}% ADDED
	\vspace{-0.5cm}
    \@starttoc{toc}%
    } 
\makeatother



\makeatletter
\renewcommand\contentspage[1][\MakeUppercase{\bjtueheiti \thecontentspage}]{%
  \hb@xt@\@pnumwidth{\hfil#1}%
  \hspace*{-\@pnumwidth}}
\makeatother


\titlecontents{part}[0em]{\vspace{0.2ex}}{\bjtueheiti \zihao{-4}\contentslabel{0em}}{\bjtueheiti \bjtuheiti\zihao{-4}}{\titlerule*[0.5pc]{.}\contentspage}[\vspace{0.2ex}]
% \contentsmargin{1em}
\titlecontents{chapter}[1.5em]{\vspace{0.3ex}}{\bjtuheiti \bjtueheiti \zihao{-4}\contentslabel{1.5em}}{\bjtuheiti \bjtueheiti \zihao{-4}}{\titlerule*[0.5pc]{.}\contentspage}[\vspace{0.15ex}]
\titlecontents{section}[3em]{\hspace{0em}}{\contentslabel{2.2em}}{\songti \zihao{-4}}{\titlerule*[0.5pc]{.}\contentspage}[\vspace{0ex}]
\titlecontents{subsection}[4.5em]{\hspace{0em}}{\contentslabel{2.9em}}{\songti \zihao{-4}}{\titlerule*[0.5pc]{.}\contentspage}[\vspace{0ex}]
%========================================================================%
% 页眉设置
%========================================================================%
\renewcommand{\chaptermark}[1]{\markboth{#1}{}}
\fancypagestyle{bjtufancy}{
	
	\fancyhead[CE,CO]{}
	\fancyhead[L]{\zihao{4}\hwzs \hspace*{0.5em}北京交通大学毕业设计（论文）}
	\fancyhead[R]{\zihao{4}\hwzs \leftmark\hspace*{0.5em}}
	\fancyfoot[CO,CE]{\zihao{5}\thepage}

	% Redefining headrule
	\makeatletter
	\renewcommand{\headrule}{\hrule height 1pt \vspace{1pt}\hrule height 2.5pt}
}

\fancypagestyle{bjtufancymain}{
	\fancyhead[R]{\zihao{4}\hwzs 正文\hspace*{0.5em}}
}



\fancypagestyle{bjtuempty}{
\fancyhead{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
}
\fancypagestyle{bjtuclear}{
\fancyhead{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\fancyfoot{}
}
\fancypagestyle{plain}{
\fancyhead{}
\fancyhead[CE]{\zihao{5}\hspace{2em}北京交通大学毕业设计（论文）}
\fancyhead[CO]{\zihao{5}\hspace{2em}\leftmark}
\fancyfoot[CO,CE]{\zihao{-5}\thepage}
\renewcommand{\headrulewidth}{0.4pt}
}
\renewcommand{\chaptermark}[1]{\markboth{#1}{}}
%========================================================================%
% 自定义内容
%========================================================================%
\renewcommand{\title}[1]{\renewcommand{\title}{#1}}
\newcommand{\englishtitle}[1]{\renewcommand{\englishtitle}{#1}}
\renewcommand{\author}[1]{\renewcommand{\author}{\songti\zihao{3}#1}}
\newcommand{\school}[1]{\renewcommand{\school}{\songti\zihao{3}#1}}
\newcommand{\major}[1]{\renewcommand{\major}{\songti\zihao{3}#1}}
\newcommand{\studentNumber}[1]{\renewcommand{\studentNumber}{\zihao{3}#1}}
\newcommand{\advisor}[1]{\renewcommand{\advisor}{\songti\zihao{3}#1}}

\newcommand{\authorsign}[1]{\renewcommand{\authorsign}{#1}}
\newcommand{\advisorsign}[1]{\renewcommand{\advisorsign}{#1}}
\newcommand{\authorsigndate}[1]{\renewcommand{\authorsigndate}{#1}}
\newcommand{\advisorsigndate}[1]{\renewcommand{\advisorsigndate}{#1}}

% 插入代码样式
\definecolor{gray}{rgb}{0.96,0.96,0.96}

\lstset{ %
  language=python,                % the language of the code
  basicstyle=\footnotesize,           % the size of the fonts that are used for the code
  numbers=left,                   % where to put the line-numbers
  columns=fixed, 
  numberstyle=\tiny\color{black},  % the style that is used for the line-numbers
  stepnumber=1,                   % the step between two line-numbers. If it's 1, each line 
                                  % will be numbered
  numbersep=5pt,                  % how far the line-numbers are from the code
  backgroundcolor=\color{gray},      % choose the background color. You must add \usepackage{color}
  showspaces=false,               % show spaces adding particular underscores
  showstringspaces=false,         % underline spaces within strings
  showtabs=false,                 % show tabs within strings adding particular underscores
  frame=single,,                 % adds a frame around the code
  frameround = tttt,
  framexleftmargin=3mm, 
  rulecolor=\color[RGB]{158,193,243},        % if not set, the frame-color may be changed on line-breaks 
  tabsize=2,                      % sets default tabsize to 2 spaces
  captionpos=b,                   % sets the caption-position to bottom
  breaklines=true,                % sets automatic line breaking
  extendedchars=false,   
  breakatwhitespace=false,        % sets if automatic breaks should only happen at whitespace
  title=\lstname,                   % show the filename of files included with \lstinputlisting;
                                  % also try caption instead of title
  keywordstyle=\color[RGB]{0,51,179},          % keyword style
  commentstyle=\color[RGB]{140,140,140},       % comment style
  stringstyle=\color[RGB]{6,125,23},         % string literal style
  identifierstyle=\color{black},
  escapeinside={\%*}{*)},            % if you want to add LaTeX within your code
  morekeywords={*,...}               % if you want to add more keywords to the set
}

\renewcommand{\algorithmicrequire}{\textbf{Input:}}
\renewcommand{\algorithmicensure}{\textbf{Output:}}


%========================================================================%
% 参考文献格式
%========================================================================%
\AtBeginBibliography{\zihao{5}}

\addbibresource[]{reference/bjtu-bachelor-thesis-reference.bib}

\defbibheading{bjtuheading}[\zihao{-2}参考文献]{%
  \centering\chapter*{#1}
  \markboth{参考文献}{}}
 
   \renewenvironment{thebibliography}[1]
{\zihao{5}
	{\centering\chapter*{\heiti \bibname}}
	\@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}%
	\addcontentsline{toc}{chapter}{\heiti 参考文献}
	\list{\@biblabel{\@arabic\c@enumiv}}%
	{\settowidth\labelwidth{\@biblabel{#1}}%
		\leftmargin\labelwidth
		\advance\leftmargin\labelsep
		\setlength{\parsep}{1mm}
		\setlength{\labelsep}{0.5em}
		\setlength{\itemsep}{0.05pc}
		\setlength{\listparindent}{0in}
		\setlength{\itemindent}{0in}
		\setlength{\rightmargin}{0in}
		\@openbib@code
		\usecounter{enumiv}%
		\let\p@enumiv\@empty
		\renewcommand\theenumiv{\@arabic\c@enumiv}}%
	\sloppy
	\clubpenalty4000
	\@clubpenalty \clubpenalty
	\widowpenalty4000%
	\sfcode`\.\@m}
{\def\@noitemerr
	{\@latex@warning{Empty `thebibliography' environment}}%
	\endlist}
	 


%========================================================================%
% 前置部分命令
%========================================================================%
% 设置有序和无序列表行距和留白
\setlist[itemize]{noitemsep, topsep=0pt}
\setlist[enumerate]{noitemsep, topsep=0pt}

% 设置全局样式
\let\cleardoublepage=\clearpage
\makeatletter
\let\ps@plain\ps@fancy
\patchcmd{\chapter}{plain}{bjtufancy}{}{}
\makeatother

\newenvironment{thecenter}
	{\begin{center}\vspace{24pt}\zihao{-2}\heiti}
	{\vspace{18pt}\end{center}}


\newcommand{\makecover}{
	\thispagestyle{bjtuclear}

	\vspace*{0.13cm}
	\begin{center}
	\includegraphics[width=108mm]{vi/logo.png}

	{\vspace{0.85cm}\zihao{2}\bjtusongti \textbf{本科毕业设计（论文）}}
	\vspace{2.25cm}

	\begin{spacing}{2}
		{\zihao{-2}\bjtuheiti\textbf{\title}}
	\end{spacing}
	\vspace{1em}
	\begin{spacing}{2}
		{\zihao{-2}\bjtusongti\textbf{\englishtitle}}
	\end{spacing}
	
	\newlength{\capwidth}
	\setlength{\capwidth}{\widthof{\zihao{3}学生姓名：}}
	\begin{spacing}{1.8}
	\setlength{\tabcolsep}{.2mm}{
		\vspace{-0.2cm}\hspace{-0.75cm}
		\begin{tabular}{lc}
			\rule{\capwidth}{0pt} & \rule{5cm}{0pt} \\
			\makebox[\capwidth][s]{\zihao{3}学院：} & \school \\ 
			\makebox[\capwidth][s]{\zihao{3}专业：} & \major \\ 
			\makebox[\capwidth][s]{\zihao{3}学生姓名：} & \author \\ 
			\makebox[\capwidth][s]{\zihao{3}学号：} & \studentNumber \\ 
			\makebox[\capwidth][s]{\zihao{3}指导教师：} & \advisor
		\end{tabular}}
	\end{spacing}
	
	\begin{tikzpicture}[remember picture,overlay]
		\draw[color=black,thick] (-1.4,4.85)--(3.6,4.85);
		\draw[color=black,thick] (-1.4,3.75)--(3.6,3.75);
		\draw[color=black,thick] (-1.4,2.65)--(3.6,2.65);
		\draw[color=black,thick] (-1.4,1.55)--(3.6,1.55);
		\draw[color=black,thick] (-1.4,0.45)--(3.6,0.45);
	\end{tikzpicture}
	
	\vspace*{0.8cm}
	
	\zihao{-3}\bjtusongti \textbf{北京交通大学}\vspace*{1ex}

	\yearmonth
	\end{center}
	
	\newpage
}

\newcommand{\makeAuthorization}{
	\thispagestyle{bjtuclear}

	\vspace*{0.53cm}
	\begin{center}
	{\zihao{-2}\heiti 学士论文版权使用授权书\bigskip}
	\end{center}

	本学士论文作者完全了解北京交通大学有关保留、使用学士论文的规定。特授权北京交通大学可以将学士论文的全部或部分内容编入有关数据库进行检索，提供阅览服务，并采用影印、缩印或扫描等复制手段保存、汇编以供查阅和借阅。\\
	\vspace{-0.4cm}
	\begin{center}
	（保密的学位论文在解密后适用本授权说明）
	\end{center}
	\vspace{3cm}

	\begin{minipage}[t]{0.5\textwidth}
	学位论文作者签名：\vspace{4ex}

	签字日期：\hspace{2em}年\hspace{2em}月\hspace{2em}日
	\end{minipage} 
	\hfill
	\begin{minipage}[t]{0.5\textwidth}
	指导教师签名：\vspace{4ex}

	签字日期：\hspace{2em}年\hspace{2em}月\hspace{2em}日
	\end{minipage} 	
	\newpage
}

\newcommand{\bjtuclpage}{
	\thispagestyle{bjtuclear}
	\mbox{}
	\newpage
}
\newcommand{\bjtufanpage}{
	\thispagestyle{bjtufancy}
	\mbox{}
	\newpage
}


%定义中文摘要环境
\newenvironment{chineseabstract}{
	\thispagestyle{bjtufancy}
	\chapter*{\makebox[\linewidth]{\zihao{-2}中文摘要}}
	\markboth{中文摘要}{}
	\addcontentsline{toc}{part}{中文摘要}
}{}

%定义英文摘要环境
\newenvironment{englishabstract}{
	\thispagestyle{bjtufancy}
	\chapter*{\makebox[\linewidth]{\zihao{-2}ABSTRACT}}
	\markboth{英文摘要}{}
	\addcontentsline{toc}{part}{ABSTRACT}
}{}

%重新定义致谢环境
\renewenvironment{thanks}{
	\thispagestyle{bjtuempty}
	\chapter*{\makebox[\linewidth]{\zihao{-2}致\hspace{2em}谢}}
	\markboth{致谢}{}
	\addcontentsline{toc}{part}{致\hspace{2em}谢}
}{}

%重新定义附录环境
\renewenvironment{appendix}{
	\thispagestyle{bjtuempty}
	\chapter*{\makebox[\linewidth]{\zihao{-2}附\hspace{2em}录}}
	\markboth{附录}{}
	\addcontentsline{toc}{part}{附\hspace{2em}录}
}{}

%% 如果插入的图片没有指定扩展名，那么依次搜索下面的扩展名所对应的文件
\DeclareGraphicsExtensions{.pdf,.eps,.png,.jpg,.jpeg}

%========================================================================%
% 结束
%========================================================================%
