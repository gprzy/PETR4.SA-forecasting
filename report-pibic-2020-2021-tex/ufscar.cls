%%
%% This is file `ufscar.cls',
%% A license is needed here too...
%% 
\def\filename{ufscar.dtx}
\def\fileversion{v1.0}
\def\filedate{2019/04/07}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ufscar}[\filedate\ \fileversion\ UFSCar Dissertations and Thesis Template 2018]

%% Passando todos os parametros desconhecidos por esta classe
%% para a classe abnt. Deve-se carrega-la depois desses comandos.
%% Isso e' importante para que o usuario possa passar comandos
%% diretamente para a classe abntex2.
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{abntex2}%
}
\ProcessOptions\relax

%% Load base
\LoadClass[a4paper]{abntex2}

\newcommand{\financiamentoname}{Financiamento:}

% Comandos de dados - orientador
\providecommand{\imprimirfinanciamentoRotulo}{}
\providecommand{\imprimirfinanciamento}{}
\newcommand{\financiamento}[2][\financiamentoname]%
  {\renewcommand{\imprimirfinanciamentoRotulo}{#1}%
    \renewcommand{\imprimirfinanciamento}{#2}}

%%
%% Capa
%% 
\renewcommand{\imprimircapa}{%
  \begin{capa}%
    \flushright{
    \abntex@ifnotempty{\imprimirinstituicao}{%
        {\ABNTEXchapterfont\small\textbf{PONTIFÍCIA UNIVERSIDADE CATÓLICA DO PARANÁ}\par PRÓ-REITORIA DE PESQUISA, PÓS-GRADUAÇÃO E INOVAÇÃO \\
            PROGRAMA INSTITUCIONAL DE BOLSAS DE INICIAÇÃO CIENTÍFICA \par \textbf{PIBIC - 2020/2021}
        }%
    }%
    \par
    \vspace*{0.6cm}}
    \vfill
    \begin{center}
    \ABNTEXchapterfont\bfseries\Large\imprimirtitulo \\
    \vspace{3cm}
    \normalfont\normalsize{{\fontfamily{lmss}\selectfont AVALIAÇÃO DO DESEMPENHO DE TÉCNICAS DE \\ \textit{DEEP
        LEARNING} PARA CLASSIFICAÇÃO DO \\
        COMPORTAMENTO TEMPORAL DE AÇÕES}} \\
    \vspace{0.3cm}
    \ABNTEXchapterfont\normalsize\textbf{JÚLIO CESAR NIEVOLA}
    \end{center}
    \vfill
    \center
    \normalsize\imprimirlocal
    \par
    \normalsize\imprimirdata
    \vspace*{1cm}
  \end{capa}
}

\makeatletter
\renewcommand{\folhaderostocontent}{
    \begin{center}
        {\ABNTEXchapterfont\normalsize\textbf{GABRIEL HENRIQUE PRZYTOCKI}} \\
        \ABNTEXchapterfont\normalsize\textbf{JÚLIO CESAR NIEVOLA} \\
        \vspace{0.7cm}
        \ABNTEXchapterfont\normalsize\textbf{CIÊNCIA DA COMPUTAÇÃO – ESCOLA POLITÉCNICA} \\
        \ABNTEXchapterfont\normalsize\textbf{BOLSA PIBIC – PUCPR}
        \vspace*{\fill}
        \begin{center}
        \ABNTEXchapterfont\normalsize{\textbf{AVALIAÇÃO DO DESEMPENHO DE TÉCNICAS DE \\ \textit{DEEP
        LEARNING} PARA CLASSIFICAÇÃO DO \\
        COMPORTAMENTO TEMPORAL DE AÇÕES}}
        \end{center}
        \vspace{3cm}
        \abntex@ifnotempty{\imprimirpreambulo}{%
        \hspace{.45\textwidth}
        \begin{minipage}{.5\textwidth}
        \SingleSpacing
        \imprimirpreambulo
        \par
        \vspace*{1cm}
        %{\imprimirorientadorRotulo~\imprimirorientador\par}   
        %\abntex@ifnotempty{\imprimircoorientador}{%
            %{\imprimircoorientadorRotulo~\imprimircoorientador\par}%
        %}%
        %\abntex@ifnotempty{\imprimirfinanciamento}{%
            %{\imprimirfinanciamentoRotulo~\imprimirfinanciamento\par}%
        %}%
        \end{minipage}%
        \vspace*{\fill}
    }%
    %{\large\imprimirlocal}
    %\par
    %{\large\imprimirdata}
    \vspace*{1cm}
  \end{center}
}
\makeatother

% \renewcommand{\printchapternum}{%
%      \tocprintchapternonum
%      \setboolean{abntex@innonumchapter}{false}
%      \chapnumfont%
%      \space\thechapter\space%
%      \ifthenelse{\boolean{abntex@apendiceousecao}}{%
%       \tocinnonumchapter
%       \ABNTEXcaptiondelim%
%      }{} % else
%   }
%   \renewcommand{\afterchapternum}{}
  
  % impressao do capitulo nao numerado
% \renewcommand\printchapternum{%
%     \ifthenelse{\boolean{abntex@apendiceousecao}}{%
%         \tocprintchapternonum
%         \setboolean{abntex@innonumchapter}{false}
%         \chapnumfont%
%         \space\thechapter\space%
%         \ifthenelse{\boolean{abntex@apendiceousecao}}{%
%         \tocinnonumchapter
%         \ABNTEXcaptiondelim%
%         }{} % else
%     }{%
%     \tocprintchapternonum
%     \setboolean{abntex@innonumchapter}{true}%
%     }
% }

% %
%   % Ajusta entrada Referencias
%   %
%   \renewcommand{\bibsection}{%
%     \chapter*{\bibname}
%     \bibmark
%     \ifnobibintoc\else
%     \phantomsection
%     \addcontentsline{toc}{chapter}{\texorpdfstring{\MakeTextUppercase{\bibname}}{\bibname}}
%     \fi
% \prebibhook

%
  % Ajusta entrada Referencias
  %
%   \renewcommand{\bibsection}{%
    % \section{\bibname}
    % }
%     \bibmark
%     \ifnobibintoc\else
%     \phantomsection
%     \addtocontents{toc}{\setcounter{tocdepth}{2}\cftsetindents{section}{0em}{\cftlastnumwidth}}
%     %\addcontentsline{toc}{chapter}{\texorpdfstring{\MakeTextUppercase{\bibname}}{\bibname}}
%     \fi
% \prebibhook