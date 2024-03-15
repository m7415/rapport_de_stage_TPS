\LoadClass[a4paper,12pt]{article} % Classe du document

%--------------------- Packages ------------------------

\RequirePackage[french]{babel} %Langue du document
\RequirePackage[utf8]{inputenc} %Caractères spéciaux
\RequirePackage[section]{placeins}%Pour placement de section
\RequirePackage[T1]{fontenc} %Quelques lettres qui sont pas inclus dans UTF-8
\RequirePackage{mathtools} %Paquet pour des équations et symboles mathématiques
\RequirePackage{siunitx} %Pour écrire avec la notation scientifique (Ex.: \num{2e+9})
\RequirePackage{float} %Pour placement d'images
\RequirePackage{graphicx} %Paquet pour insérer des images
\RequirePackage[justification=centering]{caption} %Pour les légendes centralisées
\RequirePackage{subcaption}
\RequirePackage{wallpaper}
\RequirePackage{nomencl}
%\makenomenclature
\RequirePackage{fancyhdr}
\RequirePackage{url}
\RequirePackage[hidelinks]{hyperref}%Paquet pour insérer légendes dans des sous-figures comme Figure 1a, 1b
\RequirePackage[left=3cm,right=3cm,top=3cm,bottom=5cm]{geometry} %Configuration de la page

\RequirePackage{lipsum} % pour remplir le template

\RequirePackage{csquotes}

\RequirePackage[backend=biber,style=numeric,sorting=ynt]{biblatex} %Imports biblatex package

\RequirePackage{ragged2e} % justification au carré

%-------------------- Informations sur le rapport ----------------------

\newcommand{\trigrammemention}[1]{\renewcommand{\trigrammemention}{#1}}
\newcommand{\master}[1]{\renewcommand{\master}{#1}}
\newcommand{\filiere}[1]{\renewcommand{\filiere}{#1}}

\newcommand{\titre}[1]{\renewcommand{\titre}{#1}}
\newcommand{\intitule}[1]{\renewcommand{\intitule}{#1}}

\newcommand{\eleve}[1]{\renewcommand{\eleve}{#1}}

\newcommand{\promo}[1]{\renewcommand{\promo}{#1}}

\newcommand{\annee}[1]{\renewcommand{\annee}{#1}}

\newcommand{\tuteurecole}[1]{\renewcommand{\tuteurecole}{#1}}
\newcommand{\tuteurentreprise}[1]{\renewcommand{\tuteurentreprise}{#1}}

\newcommand{\logoentreprise}[1]{\renewcommand{\logoentreprise}{#1}}
\newcommand{\nomentreprise}[1]{\renewcommand{\nomentreprise}{#1}}

\newcommand{\dates}[1]{\renewcommand{\dates}{#1}}

%-------------------- Nouvelles commandes ----------------------

% Formatte les pages (header, marges, image, ...)
\newcommand{\fairemarges}{
    \makenomenclature
    \pagestyle{fancy}
    \fancyheadoffset{1cm}
    \setlength{\headheight}{2cm}
    %%\lhead{\includegraphics[scale=0.5]{logos/logo-tps-unistra-court.png}}
    \rhead{\nouppercase{\leftmark}}
    \rfoot{\thepage}
    \cfoot{}
    \lfoot{\trigrammemention}
}

% Créer la page de garde
\newcommand{\fairepagedegarde}{
    \begin{titlepage}
    
    \centering %Centraliser le contenu
    
    % Logo Entreprise x ecole
    \begin{figure}
        \begin{subfigure}{.5\textwidth}
            \centering
            \includegraphics[width=0.6\textwidth]{logos/logo-tps-unistra-court.png}\par\vspace{1cm}
        \end{subfigure}%
        \begin{subfigure}{.5\textwidth}
            \centering
            \includegraphics[width=0.6\textwidth]{logos/partenaire_strategique_imt.png}\par\vspace{1cm} %%
        \end{subfigure}
    \end{figure}
    
    \vspace{0.5cm}
    {\scshape \intitule \par} 
    \vspace{0.5cm}
    
    % Titre du rapport
    \rule{\linewidth}{0.2 mm} \\[0.4 cm]
    {\Large\bfseries \titre \par} \
    \rule{\linewidth}{0.2 mm} \\[1.0 cm]
    
    % Nom de l'étudiant
    {\eleve \par} 
    \vspace{1.0cm}
    
    % Promotion
    {\scshape Promotion \promo \par} 
    \vspace{1.0cm}
    
    % Parcours de l'étudiant
    {\scshape \filiere \\ \master \par} 
    \vspace{1cm}
    
    % Année universitaire
    {\large \annee \par} 
    \vspace{1cm}
    
    % Dates
    {\large \dates \par} 
    \vspace{1.5cm}
    
    % Bas de page
    \begin{minipage}{0.4\textwidth}
    	\begin{flushleft} 
    	\emph{\textbf{Organisme d'accueil}}\\ 
            \text{\nomentreprise}\\
            \includegraphics[width=0.4\textwidth]{\logoentreprise} \\ 
    	\end{flushleft}
    \end{minipage}
    ~
    \begin{minipage}{0.4\textwidth}
    	\begin{flushright} 
    	\emph{\textbf{Tuteur école :}} \\
    	 \tuteurecole \\
    	\end{flushright}
        \begin{flushright} 
    	\emph{\textbf{Tuteur entreprise :}} \\
    	 \tuteurentreprise \\
    	\end{flushright}
    \end{minipage}\\[2cm]
    
    \vfill
    	
    
    \end{titlepage}
    \newpage
}

% Ajuste l'affichage de la table des matières
\renewcommand{\thesection}{}
\renewcommand{\thesubsection}{\Roman{subsection}.}
\renewcommand{\thesubsubsection}{\Roman{subsection}.\arabic{subsubsection}.}

\newcommand{\tabledematieres}{
    \tableofcontents
    \newpage
}

% créer des commandes simples pour l'affichage d'image
\newcommand{\insererfigure}[4]{
    \begin{figure}[ht]
        \centering
        \includegraphics[height=#2]{#1}
        \caption{#3}
        \label{fig: #4}
    \end{figure}
}

\newcommand{\insererimage}[4]{
    \begin{center}
        \begin{minipage}[h]{1\columnwidth}
          \centering
          \includegraphics[width = #2]{#1}%
          \captionof{figure}{#3}%
          \label{fig: #4}%
        \end{minipage}%
    \end{center}
}
