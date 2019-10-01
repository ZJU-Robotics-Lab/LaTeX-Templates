\LoadClass[a4paper,11pt]{ctexart}
\NeedsTeXFormat{LaTeX2e}

%packages
\RequirePackage[english]{babel} %这个是ctex依赖项
\RequirePackage{geometry}       %页面布局的
\geometry{a4paper,left=3cm,right=3cm,top=2.5cm,bottom=3cm}
\RequirePackage[colorlinks,linkcolor=black]{hyperref} %超链接的
\CTEXsetup[format+={\flushleft}]{section}   %让section的标题居左
\RequirePackage{xcolor} %颜色的
\RequirePackage{graphicx}   %插图的
\RequirePackage{amsmath}    %写数学公式的
\RequirePackage{color}     %颜色
\RequirePackage{listings}   %插入MATLAB代码用的
\lstset{language=Matlab}
\RequirePackage{array}	%插入表格用的
\RequirePackage{flafter} %让图片不出现在顶部的，但是没用仿佛
\RequirePackage[section]{placeins} %限制浮动环境的浮动范围
\RequirePackage[final]{pdfpages} %插入PDF页面用的
\RequirePackage{float}
\RequirePackage{array}% 需要array包，排姓名导师信息时用
\renewenvironment*{abstract}[1]{%
\newcommand\gjc{#1}
\paragraph{摘要}
}{\paragraph{关键词：}\gjc } %自己定义的摘要环境
\RequirePackage{booktabs}  % 插入三线表用的

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%python highlight feature
%use \inputpython{./code/*.py}
%尚不支持中文注释，需要修改
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand*{\lstlistlistingname}{Code Listings}
\renewcommand*{\lstlistingname}{Code Listing}
\definecolor{gray}{gray}{0.5}
\colorlet{commentcolour}{green!50!black}

\colorlet{stringcolour}{red!60!black}
\colorlet{keywordcolour}{magenta!90!black}
\colorlet{exceptioncolour}{yellow!50!red}
\colorlet{commandcolour}{blue!60!black}
\colorlet{numpycolour}{blue!60!green}
\colorlet{literatecolour}{magenta!90!black}
\colorlet{promptcolour}{green!50!black}
\colorlet{specmethodcolour}{violet}

\newcommand*{\framemargin}{3ex}

\newcommand*{\literatecolour}{\textcolor{literatecolour}}

\newcommand*{\pythonprompt}{\textcolor{promptcolour}{{>}{>}{>}}}

\lstdefinestyle{mypython}{
%\lstset{
%keepspaces=true,
language=python,
showtabs=true,
tab=,
tabsize=2,
basicstyle=\ttfamily\footnotesize,%\setstretch{.5},
stringstyle=\color{stringcolour},
showstringspaces=false,
alsoletter={1234567890},
otherkeywords={\%, \}, \{, \&, \|},
keywordstyle=\color{keywordcolour}\bfseries,
emph={and,break,class,continue,def,yield,del,elif ,else,%
except,exec,finally,for,from,global,if,import,in,%
lambda,not,or,pass,print,raise,return,try,while,assert,with},
emphstyle=\color{blue}\bfseries,
emph={[2]True, False, None},
emphstyle=[2]\color{keywordcolour},
emph={[3]object,type,isinstance,copy,deepcopy,zip,enumerate,reversed,list,set,len,dict,tuple,xrange,append,execfile,real,imag,reduce,str,repr},
emphstyle=[3]\color{commandcolour},
emph={Exception,NameError,IndexError,SyntaxError,TypeError,ValueError,OverflowError,ZeroDivisionError},
emphstyle=\color{exceptioncolour}\bfseries,
%upquote=true,
morecomment=[s]{"""}{"""},
commentstyle=\color{commentcolour}\slshape,
%emph={[4]1, 2, 3, 4, 5, 6, 7, 8, 9, 0},
emph={[4]ode, fsolve, sqrt, exp, sin, cos,arctan, arctan2, arccos, pi,  array, norm, solve, dot, arange, isscalar, max, sum, flatten, shape, reshape, find, any, all, abs, plot, linspace, legend, quad, polyval,polyfit, hstack, concatenate,vstack,column_stack,empty,zeros,ones,rand,vander,grid,pcolor,eig,eigs,eigvals,svd,qr,tan,det,logspace,roll,min,mean,cumsum,cumprod,diff,vectorize,lstsq,cla,eye,xlabel,ylabel,squeeze},
emphstyle=[4]\color{numpycolour},
emph={[5]__init__,__add__,__mul__,__div__,__sub__,__call__,__getitem__,__setitem__,__eq__,__ne__,__nonzero__,__rmul__,__radd__,__repr__,__str__,__get__,__truediv__,__pow__,__name__,__future__,__all__},
emphstyle=[5]\color{specmethodcolour},
emph={[6]assert,yield},
emphstyle=[6]\color{keywordcolour}\bfseries,
emph={[7]range},
emphstyle={[7]\color{keywordcolour}\bfseries},
% emph={[7]self},
% emphstyle=[7]\bfseries,
literate=*%
{:}{{\literatecolour:}}{1}%
{=}{{\literatecolour=}}{1}%
{-}{{\literatecolour-}}{1}%
{+}{{\literatecolour+}}{1}%
{*}{{\literatecolour*}}{1}%
{**}{{\literatecolour{**}}}2%
{/}{{\literatecolour/}}{1}%
{//}{{\literatecolour{//}}}2%
{!}{{\literatecolour!}}{1}%
%{(}{{\literatecolour(}}{1}%
%{)}{{\literatecolour)}}{1}%
{[}{{\literatecolour[}}{1}%
{]}{{\literatecolour]}}{1}%
{<}{{\literatecolour<}}{1}%
{>}{{\literatecolour>}}{1}%
{>>>}{\pythonprompt}{3}%
,%
%aboveskip=.5ex,
frame=trbl,
%frameround=tttt,
%framesep=.3ex,
rulecolor=\color{black!40},
%framexleftmargin=\framemargin,
%framextopmargin=.1ex,
%framexbottommargin=.1ex,
%framexrightmargin=\framemargin,
%framexleftmargin=1mm, framextopmargin=1mm, frame=shadowbox, rulesepcolor=\color{blue},#1
%frame=tb,
backgroundcolor=\color{white},
breakindent=.5\textwidth,frame=single,breaklines=true%
%}
}
%需要输入从第n行到m行两个参数
%\newcommand*{\inputpython}[3]{\lstinputlisting[firstline=#2,lastline=#3,firstnumber=#2,frame=single,breakindent=.5\textwidth,frame=single,breaklines=true,style=mypython]{#1}}
\newcommand*{\inputpython}[1]{\lstinputlisting[frame=single,breakindent=.5\textwidth,frame=single,breaklines=true,style=mypython]{#1}}
\lstnewenvironment{python}[1][]{\lstset{style=mypython}}{}

\lstdefinestyle{mypythoninline}{
style=mypython,%
basicstyle=\ttfamily,%
keywordstyle=\color{keywordcolour},%
emphstyle={[7]\color{keywordcolour}},%
emphstyle=\color{exceptioncolour},%
literate=*%
{:}{{\literatecolour:}}{2}%
{=}{{\literatecolour=}}{2}%
{-}{{\literatecolour-}}{2}%
{+}{{\literatecolour+}}{2}%
{*}{{\literatecolour*}}2%
{**}{{\literatecolour{**}}}3%
{/}{{\literatecolour/}}{2}%
{//}{{\literatecolour{//}}}{2}%
{!}{{\literatecolour!}}{2}%
%{(}{{\literatecolour(}}{2}%
%{)}{{\literatecolour)}}{2}%
{[}{{\literatecolour[}}{2}%
{]}{{\literatecolour]}}{2}%
{<}{{\literatecolour<}}{2}%
{<=}{{\literatecolour{<=}}}3%
{>}{{\literatecolour>}}{2}%
{>=}{{\literatecolour{>=}}}3%
{==}{{\literatecolour{==}}}3%
{!=}{{\literatecolour{!=}}}3%
{+=}{{\literatecolour{+=}}}3%
{-=}{{\literatecolour{-=}}}3%
{*=}{{\literatecolour{*=}}}3%
{/=}{{\literatecolour{/=}}}3%
%% emphstyle=\color{blue},%
}
\newcommand*{\pyth}{\lstinline[style=mypythoninline]}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\definecolor{purple}{rgb}{0.54,0.17,0.87}
\definecolor{brown}{rgb}{0.65,0.16,0.16}

 \lstset{language=Matlab,%语言
			%numbers = left,%行号
			frame=single,                           % single framed
			basicstyle=\small\ttfamily,
			framexleftmargin=0mm, frame=shadowbox, rulesepcolor=\color{blue},
			%backgroundcolor=\color{yellow},%背景色
			keywordstyle=[1]\color{blue}\bfseries,
			keywordstyle=[2]\color{purple},         % args of funs in purple
			stringstyle=\color{purple},             % strings in purple
			commentstyle=\usefont{T1}{pcr}{m}{sl}\color[RGB]{0,80,0}\small,
			morekeywords={sawtooth, square},
			morekeywords={*,syms,*,include...},
			commentstyle=\color[RGB]{0,96,96},
			showspaces=false,
			showstringspaces=false,
			showtabs=false,
			breaklines=true,
			numbers=left,
			numberstyle=\tiny\color{blue},
        		firstnumber=1,
        		stepnumber=1
			}

% cleardoublepage这个命令的定义
\def\cleardoublepage{%
  \clearpage
  \if@twoside
    \ifodd
      \c@page
    \else
      \thispagestyle{empty}%
      \hbox{}\newpage
      \if@twocolumn
        \hbox{}\newpage
      \fi
    \fi
  \fi}

% 设置英文字体为Times New Roman
% \setmainfont{Times New Roman}

\newcommand\ZJUspace{\protect\CTEX@spaceChar\protect\CTEX@spaceChar}
%\def\reserved@a#1 #2 #3\@nil{%
%  \def\ZJUfiledate{#1}%
%  \def\ZJUfileversion{#2}%
%  \def\ZJUfileinfo{#3}}%
%\edef\reserved@b{\csname ver@ZJUthesis.cls\endcsname}
%\expandafter\reserved@a\reserved@b\@nil\relax

% 下划线的一个定义
\def\ZJU@underline[#1]#2{%
  \underline{\hbox to #1{\hfil#2\hfil}}}
\def\ZJUunderline{\@ifnextchar[\ZJU@underline\underline}
\newcommand\classification[1]{\def\ZJU@value@classification{#1}}
\newcommand\confidential[1]{\def\ZJU@value@confidential{#1}}
\newcommand\UDC[1]{\def\ZJU@value@UDC{#1}}
\newcommand\serialnumber[1]{\def\ZJU@value@serialnumber{#1}}
\newcommand\school[1]{\def\ZJU@value@school{#1}}
\newcommand\SecretLevel[1]{%
  \def\ZJU@value@SecretLevel{#1}  
  \def\ZJU@value@IsSecret{1}}
\newcommand\PersonalID[1]{\def\ZJU@value@PersonalID{#1}}
\newcommand\degree[1]{\def\ZJU@value@degree{#1}}
\renewcommand\title[2][\ZJU@value@title]{%
  \def\ZJU@value@title{#2}
  \def\ZJU@value@titlemark{\MakeUppercase{#1}}}
\newcommand\titletl[1]{\def\ZJU@value@titletl{#1}}
\newcommand\Etitle[1]{\def\ZJU@value@Etitle{#1}}
\newcommand\Etitletl[1]{\def\ZJU@value@Etitletl{#1}}
\renewcommand\author[1]{\def\ZJU@value@author{#1}}
\newcommand\studentnum[1]{\def\ZJU@value@studentnum{#1}}
\newcommand\subject[1]{\def\ZJU@value@subject{#1}}
\newcommand\supervisor[1]{\def\ZJU@value@supervisor{#1}}
\newcommand\cpsupervisor[1]{\def\ZJU@value@cpsupervisor{#1}}
\newcommand\supervisorinstitute[1]{\def\ZJU@value@supervisorinstitute{#1}}
\newcommand\major[1]{\def\ZJU@value@major{#1}}
\newcommand\researchdm[1]{\def\ZJU@value@researchdm{#1}}
\newcommand\submitdate[1]{\def\ZJU@value@submitdate{#1}}
\newcommand\defenddate[1]{\def\ZJU@value@defenddate{#1}}
\newcommand\institute[1]{\def\ZJU@value@institute{#1}}


%定义简单的插入图片命令
\graphicspath{{./}{./img/}{./fig/}{./image/}{./figure/}{./picture/}
            {./imgs/}{./figs/}{./images/}{./figures/}{./pictures/}}
%简单的插入三种大小的图片的命令
\newcommand{\maxpic}[2]{  
		\begin{figure}[H]
			  \centering
			  \includegraphics[width=\textwidth]{./pic/#1}\\
			  \caption{#2}
		\end{figure}}
		
\newcommand{\midpic}[2]{  \begin{figure}[H]
			  \centering
			  \includegraphics[width=0.73\textwidth]{./pic/#1}\\
			  \caption{#2}
		\end{figure}}
		
\newcommand{\minpic}[2]{  \begin{figure}[H]
			  \centering
			  \includegraphics[width=0.2\textwidth]{./pic/#1}\\
			  \caption{#2}
		\end{figure}}

%插入双栏图片的命令
\newcommand{\doublepic}[4]{ \begin{figure}[H]
		 \begin{minipage}[H]{0.5\textwidth}
		 \centering
		 \includegraphics[width=\textwidth]{./pic/#1}
		 \caption{#2}
		 \end{minipage}
		 \begin{minipage}[H]{0.5\textwidth}
		 \centering
		 \includegraphics[width=\textwidth]{./pic/#3}
		 \caption{#4}
		 \end{minipage}
\end{figure}}

%定义封面
\newcommand\makeCoverPage{%
  % 这个地方写的是封面上的分类号与学号，字体字号可以更改
  \pagenumbering{alph}
  \cleardoublepage
  \thispagestyle{empty}
  {
    \songti\zihao{-4}
    \linespread{1.3}
    \begin{center}

      \vspace{5mm}
      % 浙江大学四个字
        \includegraphics[width=0.6\textwidth]{./CoverPagepic/zjdx.png} \\
      % 这个尺寸可以更改
      \vspace{4mm}
      % 这个地方调入浙大徽标
      \includegraphics[width=0.6\textwidth]{./CoverPagepic/QSY.eps}    \\
    \end{center}
      \vspace{10mm}
	\begin{center}
		% 论文题目部分内容，可以修改
		 \begin{tabular}{rl}
	        {\bfseries\fangsong\zihao{3}题目:} 
	        &
	        \bfseries\fangsong\zihao{-2} \ZJUunderline[260pt]{\ZJU@value@title} \\[3mm]
	        &
	        % 这个地方是做第二行标题的判断，如果标题一行写不下，有第二行则显示，否则不显示
	        \ifx\ZJU@value@titletl\undefined
	          \hfil
	        \else
	          {\bfseries\fangsong\zihao{-2}\ZJUunderline[260pt]{\ZJU@value@titletl}}
	        \fi \\[4mm]
	      \end{tabular}
	      
	       % 这个距离可以修改
       \vspace{2mm} 
        % 左右两边字体不同，定义两个宏AB来简化代码，这个功能用到了array宏包
      \newcolumntype{A}{>{\songti}r<{}}
      \newcolumntype{B}{>{\fangsong}l<{}}
      \zihao{4}
      \begin{tabular}{A@{：}B}
        姓名 & \ZJUunderline[200pt]{\ZJU@value@author} \\[3mm]
        学号 & \ZJUunderline[200pt]{\ZJU@value@studentnum} \\[3mm]
       指导教师 & \ZJUunderline[200pt]{\ZJU@value@supervisor} \\[3mm]
%       \ifx\ZJU@value@subject\undefined
%	          \hfil
%	        \else
%	          {科目} &{ \ZJUunderline[200pt]{\ZJU@value@subject} }
%	    \fi\\[3mm]
       专业 & \ZJUunderline[200pt]{\ZJU@value@major} \\[3mm]
        学院 & \ZJUunderline[200pt]{\ZJU@value@institute} \\
      \end{tabular}
	\end{center}
}
}


\newcounter{notes} \newenvironment{Notes} {\begin{list}{{\textsc{Note}} \arabic{notes}. }{\usecounter{notes}% 
\setlength{\labelsep}{0pt}% 
\setlength{\leftmargin}{0pt}% 
\setlength{\labelwidth}{0pt}% 
\setlength{\listparindent}{0pt}}}% 
{\end{list}}

%\renewcommand{\figurename}{图} %使用中文图
%\renewcommand{\tablename}{表} %使用中文表
%没反应不知道为什么