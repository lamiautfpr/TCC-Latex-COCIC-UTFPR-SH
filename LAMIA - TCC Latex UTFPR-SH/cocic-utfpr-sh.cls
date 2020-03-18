\usepackage[table,xcdraw]{xcolor}
\usepackage{amsmath,amsfonts,amssymb} 
\usepackage{booktabs}
\usepackage{algorithmic}
\usepackage{algorithm}
\usepackage{mdframed}
\usepackage{multirow}
\usepackage{multicol}
\usepackage{pdfpages}
%=====================================================================
% Identificação
%=====================================================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cocic-utfpr-sh}[2019/05/06 v1.0.0]

%=====================================================================
% Declaração de opções
%=====================================================================
\DeclareOption{english}{\@englishtrue\OptionNotUsed}\newif\if@english
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions\relax
\floatname{algorithm}{Algoritmo}



\newcommand{\arquivofolhaaprovacao}{}
\newcommand{\inserirfolhaaprovacao}[1]{\renewcommand{\arquivofolhaaprovacao}{#1}}



%=====================================================================
% Herança da classe `report' e inclusão de pacotes e arquivos necessários
%=====================================================================
\LoadClass[12pt,a4paper]{report}
\RequirePackage[english,brazilian]{babel}
\input{babel/brazilian.babel}
\input{babel/english.babel}
\if@english
  \selectlanguage{english}
  \AtBeginDocument{\selectlanguage{english}}
\fi
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{indentfirst}      %identa primeiro parágrafo
\RequirePackage{graphicx}         %imagens
\RequirePackage{amsmath}          %formulas matemáticas
\RequirePackage{hyperref}         %referências
\RequirePackage{fancyhdr}         %manipulação de header e footer
\RequirePackage{iidefs}           %especifico para utfpr-sh/cocic
\RequirePackage{color}
\RequirePackage{listings}

\usepackage[toc]{appendix}

\usepackage{enumitem}

\usepackage{caption}
\captionsetup[table]{skip=10pt}

\usepackage{float}
\usepackage{url}
\usepackage{wrapfig}

%==============================================================================
% Códigos
%==============================================================================
\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{black}{rgb}{0,0,0}
%\definecolor{blue}{rgb}{0,0,0.4}
\definecolor{purple}{rgb}{0.8,0,0.3}
\definecolor{orange}{rgb}{1,0.4,0}

\newcommand{\codejava}[3]{
  \mbox{
    \lstset{framexleftmargin=5mm, frame=shadowbox, rulesepcolor=\color{gray}}
    \lstinputlisting[language=Java,
      breaklines=true,
      basicstyle=\footnotesize\ttfamily,
      keywordstyle=\bfseries\color{purple},
      commentstyle=\itshape\color{dkgreen},
      stringstyle=\color{orange},
      showstringspaces=false,
      rulecolor=\color{black},
      caption=#1,label=#2]{#3}
  }
}

\newcommand{\codec}[3]{
  \mbox{
    \lstset{framexleftmargin=5mm, frame=shadowbox, rulesepcolor=\color{gray}}
    \lstinputlisting[language=C,
      breaklines=true,
      basicstyle=\footnotesize\ttfamily,
      keywordstyle=\bfseries\color{dkgreen},
      commentstyle=\itshape\color{purple},
      identifierstyle=\color{blue},
      stringstyle=\color{orange},
      showstringspaces=false,
      caption=#1,label=#2]{#3}
  }
}

\definecolor{lightlightgray}{rgb}{.95,.95,.95}
\definecolor{lightgray}{rgb}{.9,.9,.9}
\definecolor{lightgray2}{rgb}{.85,.85,.85}
\definecolor{darkgray}{rgb}{.4,.4,.4}
\definecolor{purple}{rgb}{0.65, 0.12, 0.82}

\lstdefinelanguage{JavaScript}{
    aboveskip=15pt,
    keywords={typeof, new, true, false, catch, function, return, null, catch, switch, var, if, in, while, do, else, case, break},
    keywordstyle=\color{blue}\bfseries,
    ndkeywords={class, export, boolean, throw, implements, import, this},
    ndkeywordstyle=\color{darkgray}\bfseries,
    identifierstyle=\color{black},
    sensitive=false,
    comment=[l]{//},
    morecomment=[s]{/*}{*/},
    commentstyle=\color{purple}\ttfamily,
    stringstyle=\color{red}\ttfamily,
    morestring=[b]',
    morestring=[b]",
    rulecolor=\color{lightgray2},
    breaklines=true,
    basicstyle=\footnotesize\ttfamily,
    frame=single,
    backgroundcolor=\color{lightlightgray}
}

\lstdefinelanguage{JSON}{
    aboveskip=15pt,
    string=[s]{"}{"},
    stringstyle=\color{blue},
    comment=[l]{:},
    commentstyle=\color{black},
    rulecolor=\color{lightgray2},
    breaklines=true,
    basicstyle=\footnotesize\ttfamily,
    frame=single,
    backgroundcolor=\color{lightlightgray}
}

\lstdefinelanguage{Cpp}{
    language=C,
    aboveskip=15pt,
    keywordstyle=\bfseries\color{dkgreen},
    commentstyle=\color{purple},
    identifierstyle=\color{blue},
    stringstyle=\color{orange},
    showstringspaces=false,
    rulecolor=\color{lightgray2},
    breaklines=true,
    basicstyle=\footnotesize\ttfamily,
    frame=single,
    backgroundcolor=\color{lightlightgray}
}

\lstdefinelanguage{Sapiens}{
    aboveskip=15pt,
    keywords={LDA, TRAP},
    keywordstyle=\color{blue}\bfseries,
    comment=[l]{;},
    commentstyle=\color{purple},
    rulecolor=\color{lightgray2},
    breaklines=true,
    basicstyle=\footnotesize\ttfamily,
    frame=single,
    backgroundcolor=\color{lightlightgray}
}


%=====================================================================
% Referências
%=====================================================================
\newcommand{\reffigure}[1]{\figurename~\ref{#1}}
\newcommand{\reftable}[1]{\tablename~\ref{#1}}
\newcommand{\reflisting}[1]{\lstlistingname~\ref{#1}}
\newcommand{\refchapter}[1]{\chaptername~\ref{#1}}
\newcommand{\refsection}[1]{\sectionname~\ref{#1}}
\newcommand{\refequation}[1]{\equationname~\ref{#1}}
\newcommand{\refappendix}[1]{\appendixname~\ref{#1}}

%=====================================================================
% Numeração das páginas
%=====================================================================
\newcommand{\startdocument}{
  %\setcounter{page}{1}
  %\pagenumbering{roman}
  \pagestyle{plain}
  
}

\newcommand{\startcontent}{
  %\setcounter{page}{1}
  %\pagenumbering{arabic}
  \pagestyle{fancyplain}
  \renewcommand\thepage{\arabic{page}} % exibir numero da pagina
%   \lhead[\fancyplain{}{\bfseries\thepage}]{\fancyplain{}{\bfseries\rightmark}}
%   \rhead[\fancyplain{}{\bfseries\leftmark}]{\fancyplain{}{\bfseries\thepage}}
%   \cfoot{}

  % numero da página à direita no header
  \lhead{}
  \rhead{\thepage}

  \renewcommand{\headrulewidth}{0pt}
  \cfoot{}
}
\renewcommand{\chaptermark}[1]{\markboth{#1}{}}
\renewcommand{\sectionmark}[1]{\markright{\thesection\ #1}}

%=====================================================================
% Definição de autor(es), orientador, co-orientador e banca
%=====================================================================
% Autores - max = 3
\newcounter{ii@authorcount}
\renewcommand{\author}[2]{
  \addtocounter{ii@authorcount}{1}
  \expandafter\gdef\csname @author\alph{ii@authorcount}\endcsname{#1}
  \expandafter\gdef\csname @author\alph{ii@authorcount}thanks\endcsname{#2}
}
% Orientador
\DeclareRobustCommand{\advisor}[3][]{
  \gdef\@advisorname{#2}
  \gdef\@advisororigin{#3}
  \gdef\@advisor{#1~#2}
}
%Co-orientador
\DeclareRobustCommand{\coadvisor}[3][]{
  \gdef\@coadvisorname{#2}
  \gdef\@coadvisororigin{#3}
  \gdef\@coadvisor{#1~#2}
}
% Banca - max = 3
\newcounter{ii@bancacount}
\DeclareRobustCommand{\banca}[3][]{
  \addtocounter{ii@bancacount}{1}
  \expandafter\gdef\csname @banca\alph{ii@bancacount}\endcsname{#1~#2}
  \expandafter\gdef\csname @banca\alph{ii@bancacount}name\endcsname{#2}
  \expandafter\gdef\csname @banca\alph{ii@bancacount}origin\endcsname{#3}
}

%=====================================================================
% Definição do Departamento relacionado ao documento
% deve ser definido como 'cocic'
%=====================================================================
\newcommand{\dept}[1]{\gdef\@dept{#1}}

%=====================================================================
% Redefinição da data (para ter mês e ano separados)
%=====================================================================
\renewcommand{\date}[2]{
        \gdef\@publmonth{#1}
        \gdef\@publyear{#2}
}
\date{\monthname}{\number\year}
%\date{\number\year}
%=====================================================================
% Formatação das tabela de conteúdo (Sumário)
%=====================================================================
\setcounter{tocdepth}{2}

%=====================================================================
% Formatação das seções
%=====================================================================
\setcounter{secnumdepth}{4}
\renewcommand{\section}{%
  \@startsection{section}{1}{0pt}{18pt}{9pt}{\reset@font\large\bfseries}
}
\renewcommand{\subsection}{%
  \@startsection{subsection}{2}{0pt}{12pt}{6pt}{\reset@font\bfseries}
}
\renewcommand{\subsubsection}{%
  \@startsection{subsubsection}{3}{0pt}{12pt}{6pt}{\reset@font\itshape}
}
\renewcommand{\paragraph}{%
  \@startsection{paragraph}{4}{0pt}{12pt}{6pt}{\reset@font}
}
\renewcommand{\subparagraph}{%
  \@startsection{subparagraph}{5}{0pt}{1ex}{-1em}{\reset@font\bfseries}
}


%=====================================================================
% Definição padrão da folha de rosto.
%=====================================================================
\newlength{\titlepagewinwidth}\setlength{\titlepagewinwidth}{95mm}
\newlength{\titlepagewinheight}\setlength{\titlepagewinheight}{64mm}
\newlength{\titlepagewinvoffset}\setlength{\titlepagewinvoffset}{112mm}
\newcommand{\location}[3]{
  \gdef\@city{#1}
  \gdef\@state{#2}
  \gdef\@country{#3}
}


\renewcommand{\maketitle}{%
  \@makecoverpage     % capa
  \clearpage
  
  \begin{titlepage}
    \thetitlepage     % folha de rosto
  \end{titlepage}
  \clearpage
  
  % forçando contagem de páginas começando do 1 aqui, pois a titlepage reseta para 1 o número da página no final
  % seria a 3, mas diminuimos 2 pois capa e ficha catalográfica não entram na contagem de páginas
  \setcounter{page}{1}
  \renewcommand\thepage{} % ocultar numero da pagina
  
  \@makeindexcard     % ficha catalográfica
  \clearpage
  
  %\@makeapprovalpage  % pagina de aprovacao
 \includepdf{folhaAprovacao.pdf}
  \renewcommand\thepage{} % ocultar numero da pagina
  % no inicio do conteúdo, o numero da página é configurado para ser exibido novamente
}


%=====================================================================
% Capa
%=====================================================================
\newcommand{\@makecoverpage}{%
  \thispagestyle{empty}
  \noindent\@topbox\\ % universidade, instituto, etc
  \vfill
  \begin{center}
      \MakeUppercase{\@city}\\
      \number\year
  \end{center}
}


%=====================================================================
% Folha de Rosto
%=====================================================================
\newcommand{\thetitlepage}{%

  \noindent\@topboxrosto

  \hspace*{\fill}\parbox[b]{.5\textwidth}{%
    \linespread{1}\selectfont
    Trabalho de Conclusão apresentado ao Curso de Ciência da Computação da Universidade Tecnológica Federal do Paraná, Câmpus Santa Helena, como requisito parcial à obtenção do título de Bacharel em Ciência da Computação.
    \\
    \\
    
    \@ifundefined{@advisor}{}{
        \titlepageadvisorinfo
    }
    \vfill
  }
  
  \vfill
  
  \begin{center}
      \MakeUppercase{\@city}\\
      \number\year
  \end{center}
}


%=====================================================================
% Ficha catalográfica
%=====================================================================
\newcommand{\@makeindexcard}{%
  \vbox{}
  \begin{figure}[!b]
    \centering
    \includegraphics[width=1\textwidth]{elementos-pretextuais/ficha_catalografica.png}
  % **********************************************
  % Para elaborar a ficha catalográfica consult a biblioteca do campus
  % debib-sh@utfpr.edu.br 
  %
  % Substitua a ficha_catalografica.png pela sua.
  % **********************************************
  \end{figure}
}


%=====================================================================
% Folha de Aprovação
%=====================================================================
\newcommand{\@makeapprovalpage}{%


    \begin{center}
    	\centering FOLHA DE APROVAÇÃO 
    
    	\centering (FORNECIDA PELA SECRETARIA DO CURSO)
    \end{center}

    \vspace{15mm}

   

    \vfill


    \noindent
    \begin{center}
    	\textbf{BANCA EXAMINADORA}
  	\end{center}

    \bigskip
    \begin{center}
    \linespread{1.2}\selectfont
    \vspace{.8cm}
      \line(1,0){250}\\
      \@advisor 
      
      \@ifundefined{@coadvisor}{}{
      \vspace{.8cm}
        \line(1,0){250}\\
        \@coadvisor 

      }

      \@ifundefined{@bancaa}{}{
      \vspace{.8cm}
        \line(1,0){250}\\
        \@bancaa 

      }
      \@ifundefined{@bancab}{}{
      \vspace{.8cm}
        \line(1,0){250}\\
        \@bancab  

      }
      \@ifundefined{@bancac}{}{
      \vspace{.8cm}
        \line(1,0){250}\\
        \@bancac 
  
      }
      \vspace{.8cm}
    \end{center}

    \pagebreak
}


%=====================================================================
% Definição do subtítulo
%=====================================================================
\newcommand{\subtitle}[1]{\gdef\@subtitle{#1}}



\def\@topbox{%
  \parbox[t]{\textwidth}{%
    \centering%
    \vbox to \titlepagewinvoffset{%
      \titlepagetopinfo\vfill\@winbox
    }
  }
}
\def\@winbox{
  \parbox[b]{\titlepagewinwidth}{
    \centering\vbox to \titlepagewinheight{
      \vspace*{\fill}
      \vspace{20pt}
      \MakeUppercase{\@authora}\\
      \@ifundefined{@authorb}{}{\MakeUppercase{\@authorb}\\}
      \@ifundefined{@authorc}{}{\MakeUppercase{\@authorc}\\}
      \vspace{20pt}
      \vspace{\stretch{4}}{{
        \MakeUppercase{\@title}\@ifundefined{@subtitle}{}{: \@subtitle\\}
      }\par}
    }
  }
}

\def\@topboxrosto{%
  \parbox[t]{\textwidth}{%
    \centering%
    \vbox to 100mm{%
      \@winboxrosto
    }
  }
}

\def\@winboxrosto{
  \parbox[b]{\titlepagewinwidth}{
    \centering\vbox to \titlepagewinheight{
      \vspace*{\fill}
      \MakeUppercase{\@authora}\\
      \@ifundefined{@authorb}{}{\MakeUppercase{\@authorb}\\}
      \@ifundefined{@authorc}{}{\MakeUppercase{\@authorc}\\}
      \vspace{\stretch{3}}{{
          \MakeUppercase{\@title}\@ifundefined{@subtitle}{}{: \@subtitle\\}
      }\par}

    }
  }
}

% \usepackage{setspace}

\newcommand{\curso}[1]{\gdef\@curso{#1}}
\newcommand{\titlepagetopinfo}{%
  {
%   \setstretch{2.0}
  \MakeUppercase{\utfpr}\\
   \vspace{7pt}
  \MakeUppercase{\cocic}\\
   \vspace{7pt}
  \MakeUppercase{\bcc}%\\
  \@ifundefined{@dept}{}{\MakeUppercase{\csname \@dept\endcsname}\\}%
  \@ifundefined{@curso}{}{\MakeUppercase{\csname \@curso\endcsname}\\
  }%
  }
}
\newcommand{\titlepageadvisorinfo}{%
  \@ifundefined{@advisor}{}{\advisorname: \@advisor\\}
  \@ifundefined{@coadvisor}{}{\\\coadvisorname: \@coadvisor\\}
}
\newcommand{\titlepageadvisorinfobak}{%
  \@ifundefined{@advisor}{}{\vfill\@advisor\\\advisorname}
  \@ifundefined{@coadvisor}{}{\\[6ex]\@coadvisor\\\coadvisorname}
}


%=====================================================================
% Resumo (abstract) e Abstract (englishabstract)
%=====================================================================
\renewenvironment{abstract}[1]{
  \if@english
  \else
    %\addcontentsline{toc}{chapter}{\abstractname}
    
    \begin{center}
      \textbf{RESUMO}
    \end{center}


    \linespread{1}\selectfont
    {#1}


    \renewcommand{\baselinestretch}{1.5}
    \normalsize
  \fi
}
{
\bigskip
%\textbf{\\Palavras-chave:}
  \pagebreak
}

\newenvironment{englishabstract}[1]{
  %\addcontentsline{toc}{chapter}{Abstract}
  
    \begin{center}
      \textbf{ABSTRACT}
    \end{center}


  \linespread{1}\selectfont
  \emph{#1}

  
}
{
\bigskip
%\textbf{\\Keywords:}
  \pagebreak
}

% Keywords command
\providecommand{\palavraschave}[1]
{
  \textbf{\textit{Palavras-chave:}} #1.
}
\providecommand{\keywords}[1]
{
  \textbf{\textit{Keywords: }} #1.
}

%=====================================================================
% Redefinição do conteúdo das "listas de figuras e tabela"
%=====================================================================
\newif\if@captionlisting\@captionlistingtrue
\long\def\@caption#1[#2]#3{%
  \par
  \if@captionlisting%
    \addcontentsline{\csname ext@#1\endcsname}{#1}%
    {\protect\numberline{\csname fnum@#1\endcsname:}{\ignorespaces #2}}%
  \fi%
  \begingroup
    \@parboxrestore
    \if@minipage
      \@setminipage
    \fi
    \normalsize
    \@makecaption{\csname fnum@#1\endcsname}{\ignorespaces #3}\par
  \endgroup%
}
\renewcommand*{\l@figure}{\@dottedtocline{1}{0em}{5.5em}}
\let\l@table\l@figure



%=====================================================================
% Definição do conteúdo de "dedicatória"
%=====================================================================
\newcommand{\makededicationpage}{

    \vspace*{\fill}

  \hspace*{\fill}\parbox[b]{.5\textwidth}{%
  \begin{flushright}
\input{elementos-pretextuais/dedicatoria}
\end{flushright}
  }
  
  
  \pagebreak
}{}



%=====================================================================
% Definição do conteúdo de "agradecimentos"
%=====================================================================
\newcommand{\makethankspage}{
  %\chapter*{Agradecimentos}
  \centerline{\textbf{AGRADECIMENTOS}}
  \vspace{5mm}
  
  %\addcontentsline{toc}{chapter}{Agradecimentos}
  
  \@ifundefined{@authorb}{}{\underline{\@authora}}
  
  \@authorathanks
  \newpage
  
  \@ifundefined{@authorb}{}{
    \underline{\@authorb}
    
    \@authorbthanks
    \newpage
  }
  
  \@ifundefined{@authorc}{}{
    \underline{\@authorc}
    
    \@authorcthanks
    \newpage
  }
  
  \pagebreak
}{}




%=====================================================================
% Definição do conteúdo de "dedicatória"
%=====================================================================
\newcommand{\makeepigraphpage}{

    \vspace*{\fill}

  \hspace*{\fill}\parbox[b]{.5\textwidth}{%
  \begin{flushright}
\input{elementos-pretextuais/epigrafe}

\end{flushright}
  }
  
  
  \pagebreak
}{}




\usepackage{etoolbox}


%=====================================================================
% Definição do conteúdo de listas de figuras
%=====================================================================
\newcommand{\makefigurespage}{
  \renewcommand{\listfigurename}{\vspace{-30mm}\normalsize\bfseries\centering LISTA DE ILUSTRAÇÕES\vspace{-10mm}}
  \listoffigures{}
  \pagebreak
}{}

%=====================================================================
% Definição do conteúdo de listas de tabelas
%=====================================================================
\newcommand{\maketablespage}{
  %\addcontentsline{toc}{chapter}{\listtablename} 
  \renewcommand{\listtablename}{\vspace{-30mm}\normalsize\bfseries\centering LISTA DE TABELAS E QUADROS\vspace{-10mm}}  
  \listoftables{}
  \pagebreak
}{}

%=====================================================================
% Definição do conteúdo de listas de algoritmos
%=====================================================================
\newcommand{\makelistingspage}{
  %\addcontentsline{toc}{chapter}{\lstlistlistingname} 
  %\renewcommand{\lstlistlistingname}{\vspace{-30mm}\normalsize\bfseries\centering LISTA DE CÓDIGOS\vspace{-10mm}}  
  \lstlistoflistings{}
  \pagebreak
}{}

%=====================================================================
% Definição do conteúdo de listas de abreviaturas e símbolos
%=====================================================================
\newcommand{\makeabrevpage}[1]{
  \begin{listofabbrv}{XXXXXX}
    #1
  \end{listofabbrv}
  \pagebreak
}{}

\newcommand{\makesymbolspage}[1]{
  \begin{listofsymbols}{XXXXXX}
    #1
  \end{listofsymbols}
  \pagebreak
}{}

%=====================================================================
% Definição das listas de abreviaturas e siglas e de símbolos
%=====================================================================
\newenvironment{listofabbrv}[1]{
  %\chapter*{\listabbrvname}
  %\addcontentsline{toc}{chapter}{\listabbrvname}
  \centerline{\textbf{\MakeUppercase{\listabbrvname}}}

  \begin{list}{\textbf{??}}{
    \settowidth{\labelwidth}{#1}
    \setlength{\labelsep}{1em}
    \setlength{\itemindent}{0mm}
    \setlength{\leftmargin}{\labelwidth}
      \addtolength{\leftmargin}{\labelsep}
    \setlength{\rightmargin}{0mm}
    \setlength{\itemsep}{.1\baselineskip}
    \renewcommand{\makelabel}[1]{\makebox[\labelwidth][l]{##1}}
  }
}
{
  \end{list}
}
\newenvironment{listofsymbols}[1]{
  %\chapter*{\listsymbolname}
  %\addcontentsline{toc}{chapter}{\listsymbolname}
  \centerline{\textbf{\MakeUppercase{\listsymbolname}}}

  \begin{list}{\textbf{??}}{
    \settowidth{\labelwidth}{#1}
    \setlength{\labelsep}{1em}
    \setlength{\itemindent}{0mm}
    \setlength{\leftmargin}{\labelwidth}
      \addtolength{\leftmargin}{\labelsep}
    \setlength{\rightmargin}{0mm}
    \setlength{\itemsep}{.1\baselineskip}
    \renewcommand{\makelabel}[1]{\makebox[\labelwidth][l]{##1}}
  }
}
{
  \end{list}
}
\newenvironment{glossarylist}[1]{
  %\chapter*{\listsymbolname}
  %\addcontentsline{toc}{chapter}{\listsymbolname}
  \centerline{\textbf{\MakeUppercase{Glossário}}}
      \addcontentsline{toc}{chapter}{\protect\numberline{}\texorpdfstring{\uppercase{Glossário}}{}}

  \begin{list}{\textbf{??}}{
    \settowidth{\labelwidth}{#1}
    \setlength{\labelsep}{1em}
    \setlength{\itemindent}{0mm}
    \setlength{\leftmargin}{\labelwidth}
      \addtolength{\leftmargin}{\labelsep}
    \setlength{\rightmargin}{0mm}
    \setlength{\itemsep}{.1\baselineskip}
    \renewcommand{\makelabel}[1]{\makebox[\labelwidth][l]{##1}}
  }
}
{
  \end{list}
}

%=====================================================================
% Definição do conteúdo da tabela de conteúdo
%=====================================================================
\newcommand{\maketocpage}{
  \tableofcontents{}
  \pagebreak
}{}

%=====================================================================
% Definição do conteúdo da bibliografia
%=====================================================================
\newcommand{\makebibspage}[2]{
  %\renewcommand{\bibname}{\selectfont\normalsize REFERÊNCIAS} 
  %\addcontentsline{toc}{chapter}{\bibname}
  
  \addcontentsline{toc}{chapter}{\protect\numberline{}\texorpdfstring{\uppercase{\bibname}}{\bibname}}
  
  \renewcommand{\bibname}{\vspace{-70pt}\selectfont\normalsize\centerline{\textbf{REFERÊNCIAS}}\vspace{-20pt}} 
  
  \bibliographystyle{#1}
  \bibliography{#2}
  
  \pagebreak
}{}


%=====================================================================
% Definição do conteúdo do glossário
%=====================================================================

\newcommand{\makeglossarypage}[1]{
  \begin{glossarylist}{XXXXXX}
    #1
  \end{glossarylist}
  \pagebreak
}{}

%=====================================================================
% Formato dos títulos de capítulo, seção, etc no corpo da monografia
%=====================================================================

% ***Nomes de chapter em maiúsculo e negrito no corpo
\def\@makechapterhead#1{% Header for \chapter
  \noindent
  \textbf{\MakeUppercase{\thechapter \space #1}}
  \vspace{5mm}
}

\def\@seccntformat#1{%
  {\csname the#1\endcsname}
}

% ***Nomes de section em maiúsculo no corpo
\renewcommand\section{%
  \@startsection{section}{1}{\z@}%
    {-3.5ex \@plus -1ex \@minus -.2ex}%
    {2.3ex \@plus.2ex}%
    {\normalfont\MakeUppercase}
}

% ***Nomes de subsection em negrito no corpo
\renewcommand\subsection{%
  \@startsection{subsection}{2}{\z@}%
    {-3.25ex\@plus -1ex \@minus -.2ex}%
    {1.5ex \@plus .2ex}%
    {\normalfont\bfseries}
}

% ***Nomes de subsubsection normais no corpo
\renewcommand\subsubsection{%
  \@startsection{subsubsection}{2}{\z@}%
    {-3.25ex\@plus -1ex \@minus -.2ex}%
    {1.5ex \@plus .2ex}%
    {\normalfont}
}


%=============================================
%  SUMÁRIO
%=============================================
\usepackage[tocflat]{tocstyle}

% Formato dos títulos de capítulo, seção, etc no sumário da monografia
\settocfeature[toc][0]{entryvskip}{1em\@plus\p@} % espaçamento antes de novo chapter
\settocfeature[toc][0]{entryhook}{\bfseries\uppercase} % chapter maiúsculo e negrito
\settocfeature[toc][1]{entryhook}{\uppercase} % section maiúsculo
\settocfeature[toc][2]{entryhook}{\bfseries}  % subsection negrito
\settocfeature[toc]{dothook}{\normalfont} % linha de pontos sem negrito

\settocfeature[toc][0]{pagenumberhook}{\bfseries} % número da página de chapter em negrito
\settocfeature[toc][2]{pagenumberhook}{\bfseries} % número de página de subsection em negrito

% Linha de pontos igual para todos os níveis
\settocfeature[toc]{leaders}{
    \tocstyle@feature@dothook
      \xleaders\hbox{$\m@th
        \mkern \@dotsep mu\hbox{.}
        \mkern \@dotsep mu$}\hfill%
}

% Alterando o formato do título do Sumário
\renewcommand\tableofcontents{%
  \hfill \textbf{\normalsize \MakeUppercase{\contentsname}} \hfill\null\par
  \vspace{5mm}
  \@mkboth{\MakeUppercase\contentsname}{\MakeUppercase\contentsname}%
  \@starttoc{toc}%
}


%=============================================
%  LISTA DE FIGURAS/TABELAS/ETC.
%=============================================

% Contadores de figura globais e não por capítulo
\usepackage{chngcntr}
\counterwithout{figure}{chapter}
\counterwithout{table}{chapter}

% Remover espaço entre capítulos da lista de figuras e tabelas
\newcommand*{\noaddvspace}{\renewcommand*{\addvspace}[1]{}}
\addtocontents{lof}{\protect\noaddvspace}
\addtocontents{lot}{\protect\noaddvspace}


%=============================================
%  ANEXOS
%=============================================

\newcommand{\annexname}{Annex}

\newcommand{\annexchapter}[2]{
    \par
    
    \vspace{5mm}
    \noindent
    \textbf{\MakeUppercase{ANEXO #1}} -- #2
    \vspace{3mm}
    
   \addcontentsline{toc}{chapter}{\protect\numberline{}\texorpdfstring{\uppercase{ANEXO #1}}{ANEXO #1}\vspace{-4mm}}

    % \setcounter{chapter}{#1}
    % \setcounter{section}{0}
    % \chapter*{#2}
    % \addcontentsline{toc}{chapter}{#2}
}

\makeatletter % treat @ as a letter instead of a control word.
\newcommand\annex{
    \par
    % \setcounter{chapter}{0}
    % \setcounter{section}{0}
    % \renewcommand\appendixname{Annex}
    % \renewcommand\appendixpagename{Annexes}
    % \renewcommand{\appendixtocname}{Annexes}
    % \gdef\@chapapp{\annexname}
    % \gdef\thechapter{\@alph\c@chapter}
    % \renewcommand{\theHchapter}{\annexname.\thechapter}
    % \addappheadtotoc
    
    \centerline{\textbf{\MakeUppercase{ANEXOS}}}
}
\makeatother
