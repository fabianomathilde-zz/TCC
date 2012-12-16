%%
%% This is file `ppgccufscar.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% ppgccufscar.dtx  (with options: `class')
%% 
%% This is a generated file.
%% 
%% A license is needed here too...
%% 
\def\filename{ppgccufscar.dtx}
\def\fileversion{v1.0}
\def\filedate{2011/02/12}
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{ppgccufscar}[\filedate\ \fileversion\ PPGCC UFSCar Dissertations and Thesis]

%%
%% opcao para escolher se a monografia e' de quali, dissertacao (default)
%% ou tese.
%%
\providecommand{\PPGtipodoc}{Disserta\c{c}\~ao}
\providecommand{\PPGtipotitulo}{Mestre}
\providecommand{\Btipotitulo}{Bacharel}

\DeclareOption{quali}{%
\renewcommand{\PPGtipodoc}{Qualifica\c{c}\~ao}
}

\DeclareOption{tese}{%
\renewcommand{\PPGtipodoc}{Tese}
\renewcommand{\PPGtipotitulo}{Doutor}
}

%% Passando todos os parametros desconhecidos por esta classe
%% para a classe abnt. Deve-se carrega-la depois desses comandos.
%% Isso e' importante para que o usuario possa passar comandos
%% diretamente para a classe abnt.
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{abnt}%
}
\ProcessOptions\relax

\LoadClass[12pt,a4paper,ruledheader,normalfigtabnum,normaltoc,times,anapnoname]{abnt}


%% colocando a fonte das legendas de figuras, tabelas, etc. como pequena
%% e em negrito
\RequirePackage[font={small,bf}]{caption}

%% carregando pacote para formatacao das citacoes e referencias
%% conforme a ABNT [norma de 2006 - mas nao deve ter mudado muita coisa ;)]
\RequirePackage[alf]{abntcite}
\RequirePackage[english,brazil]{babel}
\RequirePackage{ifthen}

% to stylize the chaptersand headers
\RequirePackage{fncychap}
\RequirePackage{fancyhdr}

%% comando para definir a area de concentracao (eng software, inteligencia
%% artificial, etc.)
\providecommand{\PPGareaconcentracao}{}
\newcommand{\areaconcentracao}[1]{\renewcommand{\PPGareaconcentracao}{#1}}

%% colocando valores padroes para as monografias.
\instituicao{Universidade Federal de S\~ao Carlos}
\local{S\~ao Carlos -- SP}
%\comentario{\PPGtipodoc\ apresentada ao Programa de P\'os-Gradua\c{c}\~ao em Ci\^encia da Computa\c{c}\~ao da Universidade Federal de S\~ao Carlos, como parte dos requisitos para a obten\c{c}\~ao do t\'{\i}tulo de \PPGtipotitulo\ em Ci\^encia da Computa\c{c}\~ao, \'area de concentra\c{c}\~ao: \PPGareaconcentracao}
\comentario{\PPGtipodoc\ apresentada ao Departamento de Computa\c{c}\~ao da Universidade Federal de S\~ao Carlos, como parte dos requisitos para a obten\c{c}\~ao do t\'{\i}tulo de \Btipotitulo\ em Engenharia de Computa\c{c}\~ao, \'area de concentra\c{c}\~ao: \PPGareaconcentracao}

%%
%% aquele resuminho embaixo do capitulo
%%
\newenvironment{resumocap}{%
	 \small\itshape
   \begin{list}{}{%
       \setlength{\listparindent}{0cm}%
       \setlength{\itemindent}{\listparindent}%
       \setlength{\rightmargin}{1cm}%
       \setlength{\leftmargin}{1cm}%
       \setlength{\parsep}{0pt}}%
    \item\relax}%
  {\end{list}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% novos comandos
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\providecommand{\ABNTinstituicaodetails}{%
Centro de Ci\^encias Exatas e de Tecnologia\par
%Programa de P\'os-Gradua\c{c}\~ao Em Ci\^encia da Computa\c{c}\~ao
Trabalho de Conclus\~ao de Curso
}

\newcommand{\instituicaodetails}[1]{\renewcommand{\ABNTinstituicaodetails}{#1}}
\newcommand{\instituicaodetailsformat}{\sffamily\MakeUppercase}

\providecommand{\PPGaprovacaodia}{}
\providecommand{\PPGaprovacaomes}{}
\providecommand{\PPGaprovacaoano}{}

\newcommand{\dataaprovacao}[3]{%
\renewcommand{\PPGaprovacaodia}{#1}
\renewcommand{\PPGaprovacaomes}{#2}
\renewcommand{\PPGaprovacaoano}{#3}
}

% alterando as fontes

\renewcommand{\instituicaoformat}{\sffamily\Large\bfseries\MakeUppercase}
\renewcommand{\ABNTchapterfont}{\bfseries}
\renewcommand{\tituloformat}{\sffamily\LARGE\bfseries\MakeUppercase}
\newcommand{\tituloformataprovacao}{\sffamily\large\bfseries\MakeUppercase}
\renewcommand{\autorformat}{\large\scshape\bfseries}
\newcommand{\autorformataprovacao}{\scshape\bfseries}
\renewcommand{\orientadorformat}{\large\scshape\bfseries}
\renewcommand{\orientadornameformat}{\orientadorformat}
\renewcommand{\localformat}{\large}
\renewcommand{\dataformat}{\large}

% alterando estruturas

\renewcommand{\orientador}[2][Orientador]%
  {\renewcommand{\ABNTorientadorname}{#1}%
   \renewcommand{\ABNTorientadordata}{#2}}

\renewcommand{\coorientador}[2][Co-orientador]%
  {\renewcommand{\ABNTcoorientadorname}{#1}%
   \renewcommand{\ABNTcoorientadordata}{#2}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% CAPA
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand{\capa}%
{%
% replacing \begin{titlepage}
\if@twocolumn
  \@restonecoltrue\onecolumn
\else
  \@restonecolfalse\newpage
\fi
\thispagestyle{empty}%
\setcounter{page}\z@
\vspace*{1cm}
\espaco{1.1}
\ABNTifnotempty{\\ABNTinstituicaodata}%
  {%
   \begin{center}
     {\instituicaoformat\ABNTinstituicaodata\par}
     {\instituicaodetailsformat\ABNTinstituicaodetails\par}
   \end{center}
  }
\vfill\vfill
\ABNTifnotempty{\ABNTtitulodata}%
  {%
   \begin{center}
     {\tituloformat\ABNTtitulodata\par}
   \end{center}
  }
\vfill
\ABNTifnotempty{\ABNTautordata}%
  {%
  \begin{center}
    \autorformat\ABNTautordata
  \end{center}
  }
\vfill
\ABNTifnotempty{\ABNTorientadordata}%
  {%
  \begin{center}
    {\orientadornameformat\ABNTorientadorname :\ }
    {\orientadorformat\ABNTorientadordata}
    \ifthenelse{\equal{\ABNTcoorientadorname}{}}{}{%
	    \\
      {\orientadornameformat\ABNTcoorientadorname :\ }
      {\orientadorformat\ABNTcoorientadordata}
    }
  \end{center}
  }%
\vspace*{1cm}
\vfill\vfill\vfill
\begin{center}
  \begin{espacosimples}
    \setlength{\parskip}{.3cm}
    \ABNTifnotempty{\ABNTlocaldata}
      {{\localformat\ABNTlocaldata}\par}
    \ABNTifnotempty{\ABNTdatadata}
      {{\dataformat\ABNTdatadata}}
  \end{espacosimples}
\end{center}
\vspace*{1cm}
% replacing \end{titlepage} by its meaning
\if@restonecol\twocolumn \else \newpage \fi
\espaco{\ABNTespacodefault}%Corrige bug 114
}% end of \capa

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FOLHA DE ROSTO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\folhaderosto}%
{%
\begin{titlepage}
\espaco{1.1}
\ABNTifnotempty{\\ABNTinstituicaodata}%
  {%
   \begin{center}
     {\instituicaoformat\ABNTinstituicaodata\par}
     {\instituicaodetailsformat\ABNTinstituicaodetails\par}
   \end{center}
  }
\vfill\vfill\vfill
\ABNTifnotempty{\ABNTtitulodata}%
  {%
   \begin{center}
     {\tituloformat\ABNTtitulodata\par}
   \end{center}
  }%
\vfill
\ABNTifnotempty{\ABNTautordata}%
  {%
  \begin{center}
    \autorformat\ABNTautordata
  \end{center}
  }
\vfill
\ABNTifnotempty{\ABNTcomentariodata}%
  {%
   \vspace{.8cm}
   \hspace{.45\textwidth}
     \begin{minipage}{.55\textwidth}
       \begin{espacosimples}
         {\comentarioformat\ABNTcomentariodata}\par
			   {\ABNTorientadorname :\ }
			   {\ABNTorientadordata}
       \end{espacosimples}
     \end{minipage}
   }
\vspace{.8cm}
\vfill\vfill\vfill
\begin{center}
  \ABNTifnotempty{\ABNTlocaldata}
      {{\localformat\ABNTlocaldata}\par}
    \ABNTifnotempty{\ABNTdatadata}
      {{\dataformat\ABNTdatadata}}
\end{center}
\end{titlepage}
}% end of \folhaderosto

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FOLHA DE APROVACAO - NAO TERMINADA.
% USE POR SUA CONTA E RISCO.
% NAO TERMINAMOS PORQUE, PELO MENOS NA EPOCA,
% NAO ERA NECESSARIO.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\examinador}[2]{
 \vspace*{0.3cm}
 \rule{8.9cm}{1pt}
 \small\textsf{#1}
 
 \small\textsf{(#2)}
 \par
}

\let\oldfolhadeaprovacao=\folhadeaprovacao
\let\endoldfolhadeaprovacao=\endfolhadeaprovacao
\renewenvironment{folhadeaprovacao}{%
\begin{oldfolhadeaprovacao}
\ABNTifnotempty{\\ABNTinstituicaodata}%
  {%
   \begin{center}
     {\instituicaoformat\ABNTinstituicaodata\par}
     {\instituicaodetailsformat\ABNTinstituicaodetails\par}
   \end{center}
  }
\ABNTifnotempty{\ABNTtitulodata}%
  {%
   \begin{center}
     {\tituloformataprovacao\ABNTtitulodata\par}
   \end{center}
  }%
\ABNTifnotempty{\ABNTautordata}%
  {%
  \begin{center}
    {\autorformataprovacao\ABNTautordata}
  \end{center}
  }
\vspace{.8cm}
\hspace{.45\textwidth}
	\begin{minipage}{.55\textwidth}
		\begin{espacosimples}
			{\comentarioformat\ABNTcomentariodata}\par
			{\ABNTorientadorname :\ }
			{\ABNTorientadordata}
   	\end{espacosimples}
   	\vspace*{0.5cm}       
   	Aprovado em \PPGaprovacaodia\ de \PPGaprovacaomes\ de \PPGaprovacaoano.
   
   	Membros da banca:

	 	\vspace*{0.5cm}
	
	 	\rule{8.9cm}{1pt}
	
	 	\small\textsf{\ABNTorientadordata}
	
	 	\small\textsf{(\ABNTorientadorname -- DC-UFSCar)}
	 	\par
}
{%
    \end{minipage}
\vspace{.8cm}
%\vfill
\begin{center}
  \ABNTifnotempty{\ABNTlocaldata}
      {{\localformat\ABNTlocaldata}\par}
    \ABNTifnotempty{\ABNTdatadata}
      {{\dataformat\ABNTdatadata}}
\end{center}
\end{oldfolhadeaprovacao}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CAPITULO - ESTILIZANDO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% todas as paginas com capitulos nao possuem cabecalho
\fancypagestyle{plainheader}{%
\fancyhf{}%
\renewcommand{\headrulewidth}{0pt}%
\renewcommand{\footrulewidth}{0pt}%
}

\newcommand{\sectionline}{%
  \rule[-13pt]{\linewidth}{1pt}\\
  \rule{\linewidth}{3pt}\\
  \rule[25pt]{\linewidth}{1pt}%
}

\makeatletter
  \ChNameVar{%
    %\Huge
    \fontsize{36pt}{38pt}\selectfont%
    \bfseries\raggedleft}
  \ChNumVar{\Huge\raggedleft}
  \ChTitleVar{\LARGE\scshape\bfseries}
  %\ChRuleWidth{3pt}
  \ChNameAsIs
  \renewcommand{\DOCH}{%
    {\CNV\FmN{\@chapapp}\space\thechapter\par\nobreak}}
  \renewcommand{\DOTI}[1]{%
    {\CTV\raggedleft\FmTi{#1}%
    \\[-30pt]%
    %\par%
    %\nobreak
    }
    {\singlespacing \normalsize \sectionline}
    %\vskip 40\p@
  }
  \renewcommand{\DOTIS}[1]{%
    \ifthenelse{\equal{#1}{\refname}}%
    {%
      {\CTV\centering\FmTi{#1}\\[-30pt]}%
      {\singlespacing \normalsize \sectionline \\[-30pt]}%
    }
    {\CTV\centering\FmTi{#1}\par\nobreak}
    %\vskip 40\p@
  }
\makeatother

%%%%%%%%%%%%%%%%%%%%%%%%
% resumo
%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\dbconfresumo}{\onehalfspacing\small\parindent0em}

\newcommand{\palavraschave}[1]{\global\def\PPGpalavraschave{#1}}
\newcommand{\keywords}[1]{\global\def\PPGkeywords{#1}}

\let\oldresumo=\resumo
  \let\endoldresumo=\endresumo
  \renewenvironment{resumo}{%
    \begin{oldresumo}%
      \dbconfresumo%
      \begin{list}{}{%
        \setlength{\listparindent}{0cm}%
        \setlength{\itemindent}{\listparindent}%
        \setlength{\rightmargin}{1cm}%
        \setlength{\leftmargin}{\rightmargin}%
        \setlength{\parsep}{0pt}}
        \item\relax%
  }%
  {%
    \end{list}%
    \textbf{Palavras-chave}: \PPGpalavraschave
    \end{oldresumo}%
  }
  
\let\oldabstract=\abstract
  \let\endoldabstract=\endabstract
  \renewenvironment{abstract}{%
    \begin{oldabstract}%
      \dbconfresumo%
      \begin{list}{}{%
        \setlength{\listparindent}{0cm}%
        \setlength{\itemindent}{\listparindent}%
        \setlength{\rightmargin}{1cm}%
        \setlength{\leftmargin}{\rightmargin}%
        \setlength{\parsep}{0pt}}
        \item\relax%
  }%
  {%
    \end{list}
    \textbf{Keywords}: \PPGkeywords
    \end{oldabstract}%
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TABLE OF CONTENTS - SUMARIO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\dbputchaptername}[1]{%
%  \ifthenelse{\equal{#1}{\refname}}%
%    {}%
  \if #1 \refname
    \relax
  \else
    \chaptername\ %
  \fi
}

\makeatletter
\def\@chapter[#1]#2%
      {\ifthenelse{\boolean{ABNThypertoc}}{\renewcommand{\theHchapter}{\chaptertype\thechapter}}{}
       \ifnum \c@secnumdepth >\m@ne
         \refstepcounter{chapter}%
         \ABNTchaptermark{#1}% This command MUST came before addcontentsline
         \typeout{\@chapapp\space\thechapter.}%
         \ifthenelse{\boolean{ABNTaftertoc}}
           {\ABNTaddcontentsline{toc}{chapter}%
                   {\dbputchaptername{#1}\protect\numberline{\thechapter\ --}#1}}
           {}
       \else
         \ABNTchaptermark{#1}% This command MUST came before addcontentsline
         \ifthenelse{\boolean{ABNTaftertoc}}%
           {\ABNTaddcontentsline{toc}{chapter}{#1}}%
           {}%
       \fi       
       \if@twocolumn
         \@topnewpage[\@makechapterhead{#2}]%
       \else
         \@makechapterhead{#2}%
         \@afterheading
       \fi\par}
\renewcommand\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \ifthenelse{\boolean{ABNTpagenumstyle}}
        {\renewcommand{\@pnumwidth}{3.5em}}
        {}
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \normalsize\ABNTtocchapterfont
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      \MakeUppercase{#1}\nobreak\hfil \nobreak%
      \ifthenelse{\boolean{ABNTpagenumstyle}}
         {%
          \hb@xt@\@pnumwidth{\hss 
            \ifthenelse{\not\equal{#2}{}}{{\normalfont \thinspace#2}}{}}\par
         }
         {%
          \hb@xt@\@pnumwidth{\hss #2}\par
         }
      \penalty\@highpenalty
    \endgroup
  \fi}
%	\let\old@dottedtocline\@dottedtocline
	\renewcommand{\@dottedtocline}[5]{%
	  \ifthenelse{\boolean{ABNTpagenumstyle}}
	     {%
	      {\renewcommand{\@pnumwidth}{2.5em}%
	       \renewcommand{\@tocrmarg}{3.5em}
	       \old@dottedtocline{#1}{#2}{#3}{#4}%
	             {\ifthenelse{\equal{#5}{}}{}{\thinspace#5}}}%
	     }%
	     {\old@dottedtocline{#1}{#2}{#3}{#4}{#5}}%
	}
\makeatother

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TABELA DE FIGURAS E TAL
% update: tirei isso aqui porque ficou feio =/
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%\makeatletter
%	\def\addcontentsline#1#2#3{%
%	  \ifthenelse{\equal{#1}{lof}}{%
%	    \addtocontents{#1}{%
%	      \protect\contentsline{#2}{%
%	        \MakeUppercase{\figurename}
%	    		\MakeUppercase{#3}%
%	      }
%	      {\thepage}
%	    }%
%	  }{%
%		  \ifthenelse{\equal{#1}{lot}}{%
%		    \addtocontents{#1}{%
%		      \protect\contentsline{#2}{%
%		        \MakeUppercase{\tablename}
%		    		\MakeUppercase{#3}%
%		      }
%		      {\thepage}
%		    }%
%		  }{%
%			  \ifthenelse{\equal{#1}{lol}}{%
%			    \addtocontents{#1}{%
%			      \protect\contentsline{#2}{%
%			        \MakeUppercase{\lstlistingname}
%			    		\MakeUppercase{#3}%
%			      }
%			      {\thepage}
%			    }%
%			  }{%
%					\addtocontents{#1}{\protect\contentsline{#2}{#3}{\thepage}}
%	  		}%
%			}%
%		}%
%	}
%\makeatother

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LISTA DE ABREVIATURA E SIGLAS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\makeatletter
	\newcount\@acronym\@acronym0
	\newcommand\acronym[2]{%
	\global\@namedef{PPGCCAcronymDef:\expandafter\the\@acronym}{#1}
	\global\@namedef{PPGCCAcronymDesc:\expandafter\the\@acronym}{#2}
	\global\advance\@acronym by 1
	}
	\newcommand{\listofacronyms}{%
	
	\pretextualchapter{Lista de Abreviaturas e Siglas}
	
	\count2=0
	\@whilenum \count2<\@acronym \do {
	\noindent
	\textbf{\csname PPGCCAcronymDef:\the\count2 \endcsname}
	--
	\csname PPGCCAcronymDesc:\the\count2 \endcsname \newline
	\advance\count2 by 1
	}
	
	}
\makeatother
