# Learn LaTeX

Author: Overleaf and other unknown authors.  
 

## What is LaTeX?

LaTeX (pronounced LAY-tek or LAH-tek) is a tool for creating documents with a professional appearance. It is based on the premise that you should concentrate on the content of your text and that the computer will handle the formatting. Instead of spacing out text on a page to control formatting, as in Microsoft Word or LibreOffice Writer, users can type plain text and let LaTeX handle the rest.
Why learn LaTeX?


LaTeX is used to create scientific documents, books, and various other types of publications. Tables, figures, mathematics, a table of contents, referencing, and constructing bibliographies are all simple to incorporate, maintaining a uniform layout across all sections.



LaTeX isolates the document's content from its style (much the same as HTML and CSS). As a result, a style template can be built that standardizes the look of documents from that class. From resumes to slideshows, there are hundreds of options to choose from.

Writing your first piece of LaTeX
The first step is to create a new LaTeX project. You can do this on your computer by creating a new .tex file or starting a new project in Overleaf. Let's start with the simplest working example:

```latex
\documentclass{article}

\begin{document}
First document. This is a simple example with no 
extra parameters or packages included.
\end{document}
```

By indenting the first line of the paragraph, LaTeX has already taken care of a bit of formatting. Next, let us look at each component of our code.




 
The first line of code declares the type of document, the class. The class controls the overall appearance of the document. Different documents will require different classes; for example, a CV/resume will require a different class than a scientific paper. In this case, the class is an article, the simplest and most common LaTeX class. Other documents you may be working on may require different classes, such as books or reports.

After this, you write the content of our document, enclosed inside the \begin{document} and \end{document} tags. This is known as the body of the document. You can start writing here and change the text if you wish. You have to compile the document to see the result of these changes in the PDF. To do this in Overleaf, hit Recompile. (You can also set your project to automatically recompile when you edit your files by clicking on the small arrow next to the 'Recompile button and set 'Auto Compile to 'On.)

If you use a basic text editor, such as gedit, Emacs, Vim, Sublime, or Notepad, you will need to compile the document manually. Run pdfLaTeX <your document> in your computer's terminal/command line to do this. See here for more information on how to do this.

If you use a dedicated LaTeX editor like TeXmaker or TeXworks, hit the Recompile button. Consult the program documentation if you are unsure where to find this information.

Now that you have learned how to add content to our document, the next step is to give it a title. To accomplish this, we must briefly discuss the preamble.

## The preamble of a document
The text was entered after the \begin{document} command in the previous example. Everything in your .tex file before this point is called the preamble. In the preamble, you define the type of document you are writing, the language you are writing in, the packages you would like to use (more on this later), and several other elements. For instance, a standard document preamble would look like this:



```latex
\documentclass[12pt, letterpaper]{article}
\usepackage[utf8]{inputenc}
```

Below is a detailed description of each line:

`\documentclass[12pt, letterpaper]{article}`:  This defines the document type. Additional parameters in the square brackets can be passed to the command. These parameters must be comma-separated. In the example, the extra parameters set the font size (12pt) and the paper size (letterpaper). Of course, other font sizes (9pt, 11pt, 12pt) can be used, but if none is specified, the default size is 10pt. As for the paper size, other possible values are *a4paper* and *legalpaper*.


`\usepackage[utf8]{inputenc}`: This is the encoding for the document. It can be omitted or changed to another encoding, but UTF-8 is recommended. Add this line to the preamble unless you need another encoding or are unsure about it.


#### Adding a title, author, and date
To add a title, author, and date to our document, you must add three lines to the preamble (NOT the document's main body). These lines are

`\title{First document}`: This is the title.

`\author{Hubert Farnsworth}`: Here, you put the name of the Author(s) and, as an optional addition, you can add the next command within the curly braces:

`\thanks{funded by the Overleaf team}` 

This can be added after the author's name inside the braces of the author command. It will add a superscript and a footnote with the text inside the braces. Useful if you need to thank an institution in your article.
`\date{February 2014}`
You can enter the date manually or use the command \today to update the date automatically when you compile your document.
With these lines added, your preamble should look something like this:

```latex
\documentclass[12pt, letterpaper, twoside]{article}
\usepackage[utf8]{inputenc}

\title{First document}
\author{Hubert Farnsworth \thanks{funded by the Overleaf team}}
\date{February 2017}
Now that you have given your document a title, author, and date, you can print this information on the document with the \maketitle command. This should be included in the document's body where you want the title to be printed.

\begin{document}

\maketitle

We have added a title, author, and date to our first LaTeX{} document!

\end{document}
```

  
#### Adding comments
It is often a good idea to include comments in the code. Comments are text inserted into a document that will not be executed or printed and does not affect the document. Comments can help organize your work, add notes, or temporarily remove lines.  LaTeX comments are denoted with a percent symbol, for example:

```latex
\begin{document}

\maketitle

We have added a title, author, and date to our first LaTeX{} document!

% This line here is a comment. It will not be printed in the document.

\end{document}
```

  
##  Bold, italics, and underlining
We will now look at some simple text formatting commands.

__Bold__: Bold text in LaTeX is written with the `\textbf{...}` command.

__Italics__: _Italicised_ text in LaTeX is written with the `\textit{...}` command.


__Underline__: Underlined text in LaTeX is written with the `\underline{...}` command.
An example of each of these in action is shown below:

Some of the `\textbf{greatest}`
discoveries in `\underline{science}` 
were made by `\textbf{\textit{accident}}`.


Another convenient command is the `\emph{...}` command. What the `\emph` command does with its argument depends on the context - inside the normal text, the emphasized text is italicized, but this behavior is reversed if used inside an italicized text- see the example below:

Some of the greatest `\emph{discoveries}` in science were made by accident.

`\textit{Some of the greatest \emph{discoveries} in science  were made by accident.}`


`\textbf{Some of the greatest \emph{discoveries} in science were made by accident.}`


Moreover, some packages, e.g. Beamer, change the behavior of the `\emph` command.







##  Images
We will now look at how to add images to a LaTeX document. On Overleaf, you will first have to upload the images.

Below is an example of how to include a picture.

```latex
\documentclass{article}
\usepackage{graphicx}
\graphicspath{ {images/} }

\begin{document}
The universe is immense and it seems to be homogeneous, 
on a large scale, everywhere we look.

\includegraphics{universe}

There's a picture of a galaxy above
\end{document}
```





LaTeX can not manage images by itself, so you will need to use a package. Packages can be used to change the default look of your LaTeX document or to allow more functionality. In this case, you need to include an image in your document, so you should use the `graphicx` package. This package gives new commands, `\includegraphics{...}` and `\graphicspath{...}`. To use the `graphicx` package, include the following line in your preamble: \usepackage{graphicx}

The command \graphicspath{ {images/} } tells LaTeX that the images are kept in a folder named images under the current directory.

The \includegraphics{universe} command is the one that includes the image in the document. Here, the universe is the name of the file containing the image without the extension, then universe.PNG becomes the universe. The file name of the image should not contain white spaces or multiple dots.

Note: The file extension is allowed to be included, but it's a good idea to omit it. If the file extension is omitted, it will prompt LaTeX to search for all the supported formats. It is also usually recommended to use lowercase letters for the file extension when uploading image files. For more details, see the section about generating high-resolution and low-resolution images.







## Captions, labels, and references
Images can be captioned, labeled and referenced through the figure environment as shown below:

```latex
\begin{figure}[h]
    \centering
    \includegraphics[width=0.25\textwidth]{mesh}
    \caption{a nice plot}
    \label{fig:mesh1}
\end{figure}
```

As you can see in figure \ref{fig:mesh1}, the 
function grows near 0. Also, in the page \pageref{fig:mesh1} 
is the same example.
InsertingImages.PNG

 
There are three important commands in the example:

`\caption{a nice plot}`: As you may expect this command sets the caption for the figure. If you create a list of figures this caption will be used there. You can place it above or below the figure.

`\label{fig:mesh1}`: If you need to refer to the image within your document, set a label with this command. The label will number the image, and combined with the next command will allow you to reference it.

`\ref{fig:mesh1}`: This code will be substituted by the number corresponding to the referenced figure.
When placing images in a LaTeX document, we should always put them inside a figure environment or similar so that LaTeX will position the image in a way that fits in with the rest of your text.

Note: If you are using captions and references on your own computer, you will have to compile the document twice for the references to work. Overleaf will do this for you automatically.'






## Lists 
Lists are very simple to create in LaTeX. You can create lists using different list environments. Environments are sections of our document that you want to present differently from the rest of the document. They start with a \begin{...} command and end with an \end{...} command.

There are two main types of lists, ordered lists and unordered lists. Each will use a different environment.



## Unordered lists
Unordered lists are produced by the `itemize` environment. Each entry must be preceded by the control sequence `\item` as shown below.

```latex
\begin{itemize}
  \item The individual entries are indicated with a black dot, a so-called bullet.
  \item The text in the entries may be of any length.
\end{itemize}
```

By default, the individual entries are indicated with a black dot, a so-called bullet. The text in the entries may be of any length.

 



## Ordered lists
Ordered lists have the same syntax inside a different environment. We make ordered lists using the enumerate environment:

```latex
\begin{enumerate}
  \item This is the first entry in our list
  \item The list numbers increase with each entry we add
\end{enumerate}
```


As with unordered lists, each entry must be preceded by the control sequence `\item`, which will automatically generate the number labeling the item. The enumerated labels consist of sequential numbers starting at one.



### Outline package

We find it best to use the outlines package.  It makes sublists easier because it eliminates complicated nesting.   Add the following in the preamble (or before `\begin{document}`).

```latex
\usepackage{outlines}
\usepackage{enumitem}
\setenumerate[1]{label=\arabic*.}
\setenumerate[2]{label=(\alph*).}
\setenumerate[3]{label=\roman*.}
\setenumerate[4]{label=\alph*.}
```

Then an ordered list is implemented by:

```latex
\begin{outline}[enumerate]
  \1 First
  \1 Second
    \2 Sublist item 1
    \2 Sublist item 2
\end{outline}
```

Remove the `[enumerate]` for an unordered list.  




## Mathematics: equations and expressions 
One of the main advantages of LaTeX is the ease with which mathematical expressions can be written. LaTeX allows two writing modes for mathematical expressions: the inline mode and the display mode. The first one is used to write formulas that are part of a text. The second one is used to write expressions that are not part of a text or paragraph and are therefore put on separate lines. Let's see an example of the inline mode:

In physics, the mass-energy equivalence is stated 
by the equation $E=mc^2$, discovered in 1905 by Albert Einstein.
Einstein1.png

To put your equations in inline mode use one of these delimiters: `\( ... \)`, `$ ... $` or `\begin{math} ... \end{math}`. They all work and the choice is a matter of taste.

The displayed mode is available in two versions: numbered and unnumbered.

The mass-energy equivalence is described by the famous equation
\[ E=mc^2 \]
discovered in 1905 by Albert Einstein. 
In natural units ($c = 1$), the formula expresses the identity

```latex
\begin{equation}
E=m
\end{equation}
```


To print your equations in display mode use one of these delimiters: `\[ ... \]`, `\begin{displaymath} ... \end{displaymath}` or `\begin{equation} ... \end{equation}` `$$ ... $$` is discouraged as it can give inconsistent spacing, and may not work well with some math packages.

Important Note: equation* environment is provided by an external package, consult the `amsmath` article.

 
Many math mode commands require the `amsmath` package, so be sure to include it when writing math. An example of some basic math mode commands is shown below.

Subscripts in math mode are written as $a_b$, and superscripts are written as $a^b$. These can be combined and nested to write expressions such as

`\[ T^{i_1 i_2 \dots i_p}_{j_1 j_2 \dots j_q} = T(x^{i_1},\dots,x^{i_p},e_{j_1},\dots,e_{j_q}) \]`
 
We write integrals using $\int$ and fractions using $\frac{a}{b}$. Limits are placed on integrals using superscripts and subscripts:

`\[ \int_0^1 \frac{dx}{e^x} =  \frac{e-1}{e} \]`

Lowercase Greek letters are written as $\omega$ $\delta$ etc., while uppercase Greek letters are written as `$\Omega$` `$\Delta$`.

Mathematical operators are prefixed with a backslash as `$\sin(\beta)$`, `$\cos(\alpha)$`, `$\log(x)$` etc.


### Align
Alternatively, there is an align environment for aligning, say, the equals sign, `=`, in a series of multiple equation lines.

```latex
\begin{align}
 ax + b &= c     \\
 ax     &= c - b \\
 x      &x \frac{c-b}{a}
\end{align}
```

You can **suppress the equation numbers** using `*`, in particular, 
```latex
\begin{align*}
 ax + b &= c     \\
 ax     &= c - b \\
 x      &x \frac{c-b}{a}
\end{align*}
```




## Abstracts
In scientific documents, it's a common practice to include a brief overview of the main subject of the paper. In LaTeX, there's an abstract environment for this. The abstract environment will put the text in a special format at the top of your document.

```latex
\begin{document}

\begin{abstract}
This is a simple paragraph at the beginning of the 
document. A brief introduction about the main subject.  
It is usually between 100 - 300 words.
\end{abstract}

\end{document}
```

 



## Paragraphs and newlines

```latex
\begin{document}

\begin{abstract}
This is a simple paragraph at the beginning of the 
document. A brief introduction about the main subject.
\end{abstract}
 
Now that we have written our abstract, we can begin writing our first paragraph.
 
This line will start a second Paragraph.
\end{document}
```



When writing the contents of your document, if you need to start a new paragraph, you must hit the "Enter" key twice (to insert a double blank line). Notice that LaTeX automatically indents paragraphs.

To start a new line without actually starting a new paragraph, insert a break line point; this can be done by \\ (a double backslash as in the example) or the \newline command.

Care should be taken that multiple \\ or \newlines are not used to "simulate" paragraphs with larger spacing between them, as this can interfere with LaTeX's typesetting algorithms. The recommended method to do so is to keep using double-blank lines to create new paragraphs without any \\, and then add \usepackage{parskip} to the preamble.







## Chapters and Sections
Commands to organize a document vary depending on the document type; the simplest form of organization is sectioning, available in all formats.

```latex
\chapter{First Chapter}

\section{Introduction}

This is the first section.

Lorem  ipsum  dolor  sit  amet,  consectetuer  adipiscing  
elit.   Etiam  lobortisfacilisis sem.  Nullam nec mi et 
neque pharetra sollicitudin.  Praesent imperdietmi nec ante. 
Donec ullamcorper, felis non sodales...

\section{Second Section}

Lorem ipsum dolor sit amet, consectetuer adipiscing elit.  
Etiam lobortis facilisissem.  Nullam nec mi et neque pharetra 
sollicitudin.  Praesent imperdiet mi necante...

\subsection{First Subsection}
Praesent imperdietmi nec ante. Donec ullamcorper, felis non sodales...

\section*{Unnumbered Section}
Lorem ipsum dolor sit amet, consectetuer adipiscing elit.  
Etiam lobortis facilisissem
```



The command \section{} marks the beginning of a new section, and inside the braces is set the title. Section numbering is automatic and can be disabled by including a * in the section command as `\section*{}`. We can also have `\subsection{}`s, and indeed `\subsubsection{}`s. The basic levels of depth are listed below:

```latex
-1  \part{part}
 0 \chapter{chapter}
 1 \section{section}
 2 \subsection{subsection}
 3 \subsubsection{subsubsection}
 4 \paragraph{paragraph}
 5 \subparagraph{subparagraph}
```

Note that `\part` and `\chapter` are only available in report and book document classes.

For a more complete discussion about the document structure, see the article about sections and chapters.






## Tables
Creating a simple table in LaTeX
Below, you can see the simplest working example of a table

```latex
\begin{center}
\begin{tabular}{ c c c }
    cell1 & cell2 & cell3 \\ 
    cell4 & cell5 & cell6 \\  
    cell7 & cell8 & cell9    
\end{tabular}
\end{center}
```

The tabular environment is the default LaTeX method to create tables. You must specify a parameter to this environment, in this case {c c c}. This tells LaTeX that there will be three columns and that the text inside each one of them must be centered. You can also use r to align the text to the right and "l" for the left alignment. The alignment symbol `&` is used to specify the breaks in the table entries. There must always be one fewer alignment symbol in each line than the number of columns. To go to the next line of your table, we use the new line command \\. We wrap the entire table inside the center environment so that it will appear in the center of the page.



### Adding borders
The tabular environment is more flexible; you can put separator lines between each column.

```latex
\begin{center}
\begin{tabular}{ |c|c|c| } 
 \hline
    cell1 & cell2 & cell3 \\ 
    cell4 & cell5 & cell6 \\ 
    cell7 & cell8 & cell9 \\ 
 \hline
\end{tabular}
\end{center}
```




You can add borders using the horizontal line command \hline and the vertical line parameter |.

{ |c|c|c| }: This declares that three columns, separated by a vertical line, are going to be used in the table. The | symbol specifies that a vertical line should separate these columns.
\hline: This will insert a horizontal line. We have included horizontal lines at the top and bottom of the table here. There is no restriction on the number of times you can use \hline.
Below you can see a second example.

```latex
\begin{center}
 \begin{tabular}{||c c c c||} 
 \hline
    Col1 & Col2 & Col2 & Col3 \\ [0.5ex] 
    \hline\hline
    1 & 6 & 87837 & 787 \\ \hline
    2 & 7 & 78 & 5415 \\ \hline
    3 & 545 & 778 & 7507 \\ \hline
    4 & 545 & 18744 & 7560 \\ \hline
    5 & 88 & 788 & 6344 \\ [1ex] \hline
\end{tabular}
\end{center}
```



Creating tables in LaTeX can be a bit tricky sometimes, so you may want to use the TablesGenerator.com online tool to export LaTeX code for tabular. The File > Paste table data option lets you copy and paste data from spreadsheet applications.




### Booktabs Package

The **booktabs** package enhances the quality of tables.  In the preamble, include: `\usepackage{booktabs}`.  Below is an example.  Full documentation can be found at the [url](https://ctan.org/pkg/booktabs?lang=en).

```latex
\begin{table}[ht!]
\begin{center}
\begin{tabular}{lccc} 
	\toprule
	Date & Time  &  Average   & Standard Deviation \\ 
	\midrule
	    Jan 1  & 1100	& 4.7		& 0.6		\\
	    Jan 2  & 2300	& 16.7	& 2.9		\\
	    Jan 3  & 1400	& 11.4	& 3.5		\\
	    Jan 4  & 1130	& 8.4		& 2.1		\\
	    Jan 5  & 500	& 5.2		& 1.9		\\
	    Jan 6  & 1700	& 7.9		& 2.2		\\
	\bottomrule 
\end{tabular} 
\caption{This is a caption to the table}
\label{tab:1} 
\end{center}
\end{table} % end the table
```



## Captions, labels, and references
You can caption and reference tables in much the same way as images. The only difference is that instead of the figure environment, you use the table environment.

Table `\ref{table:data}` is an example of referenced LaTeX{} elements.

```latex
\begin{table}[h!]
\centering
\begin{tabular}{||c c c c||} 
 \hline
 Col1 & Col2 & Col2 & Col3 \\ [0.5ex] 
 \hline\hline
 1 & 6 & 87837 & 787 \\ 
 2 & 7 & 78 & 5415 \\
 3 & 545 & 778 & 7507 \\
 4 & 545 & 18744 & 7560 \\
 5 & 88 & 788 & 6344 \\ [1ex] 
 \hline
\end{tabular}
\caption{Table to test captions and labels}
\label{table:data}
\end{table}
```
 
 
Note: If you are using captions and references on your own computer, you will have to compile the document twice for the references to work. Overleaf will do this for you automatically.'






##  Table of Contents
Creating the table of contents is straightforward; the command `\tableofcontents` does all the work for you:

```latex
\documentclass{article}
\usepackage[utf8]{inputenc}
 
\title{Sections and Chapters}
\author{Gubert Farnsworth}
\date{ }
  
\begin{document}
  
\maketitle
  
\tableofcontents

\section{Introduction}
   
This is the first section.
      
Lorem  ipsum  dolor  sit  amet,  consectetuer  adipiscing  
elit.   Etiam  lobortisfacilisis sem.  Nullam nec mi et 
neque pharetra sollicitudin.  Praesent imperdietmi nec ante. 
Donec ullamcorper, felis non sodales...
       
\section*{Unnumbered Section}
\addcontentsline{toc}{section}{Unnumbered Section}

Lorem ipsum dolor sit amet, consectetuer adipiscing elit.  
Etiam lobortis facilisissem.  Nullam nec mi et neque pharetra 
sollicitudin.  Praesent imperdiet mi necante...

\section{Second Section}
       
Lorem ipsum dolor sit amet, consectetuer adipiscing elit.  
Etiam lobortis facilisissem.  Nullam nec mi et neque pharetra 
sollicitudin.  Praesent imperdiet mi necante...
         
\end{document}
```


Sections, subsections, and chapters are automatically included in the table of contents. To manually add entries, for example, when you want an unnumbered section, use the command `\addcontentsline` as shown in the example.



## Assignment Exercises

This assignment covers the basics of creating a LaTeX document, including adding a title, author, and date, creating sections and subsections, emphasizing text, creating lists, and adding tables and equations. It also includes compiling the document and verifying the output. Have fun exploring the power of LaTeX!


1. Open a LaTeX editor of your choice and create a new document.

2. Add a title to the document using the `\title` command.

3. Add an author to the document using the `\author` command.

4. Add a date to the document using the `\date` command.

5. Use the `\maketitle` command to create a title page for your document.

6. Add a section heading to the document using the \section command.

7. Add some text to the section using regular text mode.

8. Add a subsection heading to the section using the \subsection command.

9. Add some text to the subsection using regular text mode.

10. Use the `\emph` command to emphasize some text in the subsection.

11. Use the `\textbf` command to make some text bold in the subsection.

12. Use the `\textit` command to make some text italicized in the subsection.

13. Add a bullet list to the subsection using the `itemize` environment.

14. Add a numbered list to the subsection using the `enumerate` environment.

15. Add a table to the section using the `tabular` environment.

16. Add an equation to the section using the `equation` environment.

17. Save your LaTeX document as a `.tex` file.

18. Compile your LaTeX document using your LaTeX compiler of choice.

19. View your compiled document and make any necessary adjustments to your LaTeX code.

20. Submit your completed LaTeX document along with a PDF of the compiled output.


