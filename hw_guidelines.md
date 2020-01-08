---
title: "Assignment Guidelines"
subtitle: <h4 style="font-style:normal">CRD 150 - Quantitative Methods in Community Research</h4>
date: <h4 style="font-style:normal">Winter 2020</h4>
output: 
  html_document:
    toc: true
    toc_depth: 3
    toc_float: true
    theme: cosmo
---

<style>
h1.title {
  font-weight: bold;
  font-family: Arial;  
}

h2.title {
  font-family: Arial;  
}

.figure {
   margin-top: 20px;
   margin-bottom: 20px;
}

</style>

<style type="text/css">
#TOC {
  font-size: 13px;
  font-family: Arial;
}
</style>

\


Assignments will be released at the beginning of each lab and are due in a week. They are linked to the end of each lab's guide. Assignments have two components:

1. Executing data analysis tasks - for example, create a map or run a statistical model and interpret its results.
2. Answering conceptual questions - for example, interpret a concept introduced in lecture or the textbook.  

In order to get full credit for each assignment, you will need to

1. Show the correct statistical results for a given question (e.g. map, table, statistics).
2. Show the code producing the results. 
3. Provide correct written answers.  

Any response requiring a data analysis task  must be supported by code you generate to produce your result. Just examining your various objects in the “Environment” section of R Studio is insufficient—you must use scripted commands.   Because there are typically multiple ways to get an answer, we will not grade you on the efficiency of your code.  You can ask for help from the TAs and work with other students.  However, you *must* submit your own assignments.

Also note: all code used to produce your results must be shown in your HTML file (e.g., do not use `echo=FALSE` or `include=FALSE` as options anywhere)


<div style="margin-bottom:25px;">
</div>
## **R Markdown**
\

You will use [R Markdown](https://rmarkdown.rstudio.com/) to write up all R related assignments.  R Markdown is a simple formatting syntax for authoring html, pdf, and Microsoft Word documents in RStudio.  For each R related assignment, you will upload onto Canvas two documents: 

1. R Markdown document, which has an `.Rmd` extension
2. A knitted `.html` file. 

These documents will allow the TAs to create an easy-to-read document to grade; more importantly, you will also get to practice (1) writing scripts, (2) keeping track of the analyses you run, and (3) organizing your output. **Do not combine the Rmd and html files into a zipped compressed folder**.

To be clear, R is a *programming language*. RStudio is an *application*. R Markdown is a *markup syntax* to convert R script and text into a word, pdf or html document. It allows for presentation ready documents that show commands and results in a seamless flow.   When you write R code and embed it in presentation documents created using R Markdown, you are forced to explicitly state the steps you took to do your research.  

In RStudio, install the package **rmarkdown** using the `install.packages()` command.  


```r
install.packages("rmarkdown")
```

<div style="margin-bottom:25px;">
</div>
## **Opening an R Markdown file**
\

An `.Rmd` template will be provided for each assignment.  Download the week's assignment template and save it into an appropriate folder on your hard drive. File management is important here - save this template into a folder that will contain all the files (data, Rmd, html, etc.) related to that week's assignment.  When you knit your Rmd (we'll get to what knitting means below), this is where your html file will go.

To open an `.Rmd` file in RStudio, select File -> Open File and navigate to the folder you saved the assignment template in and select the file. You should see the R Markdown file pop up on the top left portion of your RStudio interface.

<div style="margin-bottom:25px;">
</div>
##**Authoring an R Markdown document**
\

R Markdown documents contain 3 major components:

1. A YAML header surrounded by - - -
2. Chunks of R code surrounded by ```
3. Text mixed with simple text formatting using the [Markdown syntax](https://www.markdownguide.org/cheat-sheet/)

<div style="margin-bottom:25px;">
</div>
###**YAML header**
\

The YAML header controls how R Markdown renders your `.Rmd` file. A YAML header is a section of key:value pairs surrounded by - - - marks.  

In the assignment template's YAML, change your name, assignment number, lab number, and the date.  Other than those items, **the YAML format for each assignment is set for you in the template, so don't change it.**  It will generally look like the following.

````
---
title: "Assignment [insert number here]"
subtitle: CRD 150
author: Your full name here
date: Assignment due date
output: 
  html_document:
    theme: cosmo
---
````

<div style="margin-bottom:25px;">
</div>
###**Text**
\

After you've set the YAML, you start answering the Assignment questions. When answering an assignment question, you'll have the following sequence of components in your R Markdown document: Question text, R code answering the question, and your text to explain the results. Let's say you see this in one of your assignments

````
1+1

1. What does the above code do?
````
\

You would type in your R Markdown document the following

````
1. What does the above code do?

The code adds 1 + 1

````

<br>

There is nothing special about the text in terms of its format or placement. 

<div style="margin-bottom:25px;">
</div>
###**R Code chunks**
\

Assignments will also ask you to write R code to accomplish a data analysis task. You present and execute your R code inside R code chunks.  R code is inserted in between `` ```{r} `` and `` ``` ``.  For example, let's say we ask you to use R code to add `1 + 1` and show the result. To designate `1+1` as R code, it will look like the following in your R Markdown document.

````
```{r}
1+1
```
````

<br>

By putting code into a chunk, R will execute the code when knitting the markdown file (i.e. the html file will show your code and its result). Your R code must reside inside an R code chunk in order for it to be processed as R code (otherwise R Markdown will think it is text).  

Do not put all of your code in one single chunk.  For example, let's say you see the following in your homework assignment.

````
1+1

2+2

1. Run each line of code above.  What does each line of code accomplish?
````

Instead of including both lines of code in one chunk like as follows

````
```{r}
1+1

2+2
```
````

Break it up and add text after each to explain the result.

````
```{r}
1+1
```

The code adds one plus one to yield two.

```{r}
2+2
```

The code adds two plus two to yield four.
````

<br>

Think of writing a script as similar to writing an essay.  You don't write an essay in one single paragraph.  You break it up into several paragraphs, where paragraph breaks are used to separate major points and ideas.  On the other end of the spectrum, do not break up every single line of code like you would not break up every single sentence in an essay.

You will notice near the top of every HW template the following R code chunk.

````
```{r}
knitr::opts_chunk$set(warning=FALSE, message = FALSE)
```
````

<br>

**Do not delete or edit this**. The above code tells R Markdown to hide non error messages for every single R code chunk in your file. These non error messages are unnecessary for the purposes of this class.  Note that R Markdown will treat each option that you pass into the parentheses in `knitr::opts_chunk$set` as a global default.  Other chunk options can be found [here](https://r4ds.had.co.nz/r-markdown.html#chunk-options). You can also set options for individual chunks.  For example, you can add the options `warning=TRUE` and `message=TRUE` to an individual R code chunk as follows to show the messages for the R code in that chunk.

````
```{r}
1+1
```
````



<div style="margin-bottom:25px;">
</div>
###**Always test each chunk**
\

After you write code in a chunk, you'll need to test the code to make sure it is running properly.  In other words, rather than writing all the code and then running it at the end of the assignment, run the chunks one at a time.  To elaborate, let's say the first question in an assignment is (1) Add one plus one.  In your R Markdown document, type in the following to answer this question.

````
```{r, warning=FALSE, message = FALSE}
1+1
```
````

Run that code chunk to make sure it works (you should get 2!).  *Then* proceed to the next question.  Let me emphasize: **Do not write all of your code and run it at the very end.** 


There are a number of ways to run code in R Markdown.  First, you can place your mouse cursor in the R code chunk you want to run and  click on ![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/hwguide3.png) located at the top of the R Markdown window and select *Run Current Chunk*.  

Second, you can place your mouse cursor in the R code chunk and click on ![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/hwguide4.png) located on the right corner of the chunk.  See Figure below.

<center>
![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/chunk2.png)

</center>

<br>

In each R chunk, pressing the button ![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/rchunkbutton.png) will run all previous R chunks.  See Figure below.

<center>
![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/chunk4.png)

</center>

<br>

Third, you can highlight the code and select *Code* from the R Studio menu and select (among many options) *Run Selected Lines(s)*.  See Figure below (from a Mac OS).  Note that this method allows you to run just selected lines of code within a chunk rather than all the code in the chunk.

<center>
![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/chunk3.png)

</center>

<br>

Fourth, you can highlight code and use a keyboard shortcut to run the code. As you can see in the figure above, the keyboard shortcut to run code on a Mac is command + return. See [here](https://support.rstudio.com/hc/en-us/articles/200711853-Keyboard-Shortcuts) for other shortcuts for both Mac and Windows.



Note that you when you first run an R code chunk, its output will be embedded within your R Markdown document as shown in Figure 2

<center>
![Figure 2: Output within R Markdown document.](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/hwguide1.JPG)

</center>

When you are testing your code, it is better that the code results are shown in your RStudio Console (the bottom left window). To get RStudio to do this, select the "Tools" menu and select "Global Options".  Select "R Markdown" from the left-hand side and deselect the check box "Show output inline for all R Markdown documents". The output from your code should now be shown in the console (bottom left window). 

<center>
![Figure 3: R Markdown options.](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/hwguide2.JPG)

</center>



<div style="margin-bottom:25px;">
</div>
## **Knitting an R Markdown document**
\

In addition to the R Markdown Rmd file, you will need to submit its knitted html result. Knitting puts an assignment's main components - code, output, and text - in a nicely formatted document.  You can create three types of knitted documents: html, Microsoft Word, and a pdf. We ask you to knit to an html file. Go back to the YAML example I showed above. *output:* *html_document* tells R to produce an html document.  If you want a word document, *output:* will be *word_document*. A pdf is *pdf_document*.  Once again, **always knit to an html document** for this class.

To Knit your document click ![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/hwguide6.png), which will be located at the top of the upper left R Markdown window.  Note that you can select your document type when knitting by clicking the pull down menu next to ![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/hwguide6.png) and selecting your document choice (default is html).  When you start knitting, you will notice that a new window on the bottom left will appear in place of the console.  The window will show the progress in your knitting.  R is going through each R code chunk one at a time. The percentages you will see will be based on the proportion of your R Markdown file that R has successfully knitted. See Figure 4 below.

<center>
![Figure 4: R Markdown knitting progress window ](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/knitprog.png)

</center>


If it has a problem knitting, R will stop at the chunk that contains the problem.  R will produce an error statement in red. Carefully read the description of the error, which will contain the R code chunk number and may also contain the line number of the offending code.  Go to the chunk or line of the offending code in your Markdown document and fix the problem. Sometimes, the error statement is illuminating, and it will allow you to fix your problem with little effort.  For example, Figure 5 shows knitting was stopped because we did not have the package **tidycensus** installed.

<center>
![Figure 5: R Markdown knitting stopped by an error ](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/kniterror.png)

</center>


If the error is not illuminating (oh oh), you'll need to figure out what you did wrong.  See the **Having problems knitting?** section below.

Note that when you are knitting, progress and any errors will be shown not in the regular R console window, but in a special R Markdown window.  To toggle back to the Console (and back to the R Markdown window), just click on the Console (or R Markdown) tab as shown below.

<br><br>

<center>
![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/consoletab.png)

</center>

<br><br>

If you encounter no errors, a preview of your knitted document will pop up in a new window and the `.html` file will be saved in the folder where your Rmd file resides.  I recommend not waiting till the very end of an assignment to knit.  When you finish one question, knit your document to see if everything is working properly. If it is working for that question, move on to the next question. 

Let's be clear: There are two things you'll have to deal with: (1) Making sure the R code is working correctly to get the results you need in order to answer the question (2) Making sure the code is working correctly to knit a final document.  These two issues may be related (if your R code is producing an error, R Markdown will not knit), but sometimes they are not.  So, check both your R code *and* your knitting results often. 

When you're satisfied with the end product, submit your `.Rmd` document and a knitted `.html` document on [Canvas](https://login.canvas.ucdavis.edu/). 


<div style="margin-bottom:25px;">
</div>
## **File Management**
\

File management is key to preventing R programming frustration.  Here are a few guidelines to follow in file management when doing the homework.

* Set up a clear and understandable hierarchical file system for this class on your hard drive.  For example, create a class folder (CRD 150).  Within that class folder, create two folders, one for Labs and another for Assignments.  Within the Lab folder, create separate folders for each Lab (Lab 1, Lab 2, ...).  Ditto for the Assignments folder.  You might end having a system that looks like the following

<center>
![This is what file organization looks like](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/lab1fig1.png)

</center>

* Try to keep all your files that are related to a lab or assignment in one folder.  That is, don't have an Assignment 3 folder that contains data files specific to Assignment 1.  Keep everything in one folder, including the R Markdown for that assignment or lab. 

<div style="margin-bottom:25px;">
</div>
## **Having problems knitting?**

<br>

* A major source of error for most new R Markdown users is that they call up a data object in their R Markdown file that has not been created within the R Markdown file.  Treat the R Markdown as its own separate system - even if you've created an object through the R Console, and you can see it sitting in your Environment window, R Markdown won't recognize it because it was not created within the R Markdown document. 

To be clear, let's say you typed directly in the R console the following code:

````
myobject <- 2
````

<br>

You see the object *myobject* pop up in your Environment window in the top right window.  Let's say you write in your R Markdown file the code:

````
```{r}
myobject*10
```
````

<br>

You then click on ![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/hwguide6.png) to knit. You will get an error because R will not be able to knit because *myobject* was not created inside the R Markdown.  Both lines of code should be in the R Markdown file as follows:  

````
```{r}
myobject <- 2

myobject*10
```
````

<br>

Once again, **treat the R Markdown file as a self-contained, stand alone script**. This is an important concept to understand because many students get tripped up on it when first starting out. 

* Are you trying to bring in a data file that is not located in the directory your R Markdown is pointed to?  Remember, don't scatter your data files for a lab or assignment across different folders.  Keep them in one folder - the folder where your R Markdown document resides.
* Do you have an `install.packages()` in your R Markdown script? Take it out!  You only need to do it once - and never inside an R Markdown (or a regular R) script.
* Do you have a `View()` command in your R Markdown script? Take it out!  Sometimes R Markdown will have problems when trying to view an R data object.
* Are you using functions for a package that you need to load into R and haven't loaded it in your R Markdown using `library()`. If so, load it in R Markdown!
* If you change a piece of code somewhere in the middle because you caught an error, make sure that change is reflected throughout the code.  For example, let's say you decide to rename the object *hisobject* to *herobject*.  There may be code later on in the document that uses *hisobject*.  So, you'll need to change **every** line of code in your R Markdown that uses *hisobject* to now use *herobject*. 
* As I mentioned above, don't wait till the last minute to knit.  Knit after every question.
* The first place to check when you get a knitting error is the specific chunk or line that the error is pointing to.
* As I mentioned above, check if your R code works one chunk at a time.
* Having problem with a line of R code?
    + Did you install the appropriate package?
    + Did you load in the  appropriate library?
    + Are you using the right function?
    + Did you specify all the function's arguments correctly?
* Still having problems?  Break up your code line by line or even argument by argument to find the error? For example, let's say you have 4 lines of code that are connected together - i.e. line 4 depends on line 3, line 3 depends on line 2, and so on


```r
line 1 code
line 2 code
line 3 code
line 4 code
```

If you get an error, run line 1 first.  No error? Run line 1 and 2. No error? Keep going until you find the offending line.

* If you have a Mac and you are getting an error when knitting, you may need to download the most recent version of XQuartz, which can be downloaded [here](http://xquartz.macosforge.org)
* If you're still stuck, more than likely someone else also had a similar problem in the past.  So, ask Google and it might help you out.


<div style="margin-bottom:25px;">
</div>
## **Summary**
\

The proper workflow for each assignment will be as follows

1. Go through the week's reading and lab guide and make sure you understand the material.
2. Create a folder on your hard drive that is specific to the assignment (e.g. Assignment 1, Assignment 2, etc.).
3. Save the R Markdown assignment template linked to each assignment in the appropriate assignment folder on your hard drive.
4. Download any data needed for the assignment into the same folder.  For most assignments, I will upload most of the assignment data on GitHub, which you can directly link to in R, so you won't have to download data.
5. Open the R Markdown assignment file in RStudio.
6. In the R Markdown document, answer the first assignment question.
* Most of the questions will ask you to run code.  Show that code in R Markdown chunks. Bottom line: Any code you used to get a result should be in your assignment. Otherwise, you will get points off, and for some questions, get *all* points off.
  + Break up your code into different chunks where it makes sense. For some questions, you might include all code for a question in one single chunk.  For other questions, you might break up the code into several chunks.
  + Make sure your code works.  Run code one chunk at a time to make sure it is working. Note that there are multiple ways to get to an answer in R. **We will not grade on how efficient your code is unless stated so in the question**. 
* Most of the questions will ask you to explain your results. Write your explanations outside of the R code chunks. Please - *please* - take these interpretation questions seriously.  This is a not a programming or Data Science course - you may have taken 40 hours to produce super elegant code to answer a question, but your results won't be worth much to anyone if you can't properly interpret them. 
7. After you've completed the first question, knit to an html file. Make sure it knits properly. If it does not, examine the error, and fix the problem.
8. If you're satisfied with your code and its results for the first question, and the document properly knitted, move on to the next question. Repeat steps 6 and 7.
9. Once you've completed all questions and successfully knitted, submit the `.Rmd` and `.html` files on Canvas **before** the designated due time.
10. Smile, pat yourself on the back, and have some ice cream (I like these [folks](https://threetwinsicecream.com/)).

<div style="margin-bottom:25px;">
</div>
## **Grading**

<br>

* Answers should be correct. This is not to say that we will not take into consideration how much of your code is correct. But, if you do get the wrong answer we will take at least something off.
* We will not grade on how efficient your code is unless stated so in the question.  We will never take points off for accomplishing things differently than expected as long as it produces the correct result.  However, if the answer is incorrect *and* your code indicates little effort (e.g. blank or a few lines of code that yield nothing) or is completely incomprehensible (e.g. 20 lines of mish mash), expect few to no points.
* Interpretation of results is very important.  This is not a programming class. You might have the fanciest code in the world, but it will not matter much if you do not understand what the results are telling you.  
* You must submit both an Rmd and html file.  If you don't, we will take significant points off.

<div style="margin-bottom:25px;">
</div>
## **Other things to know**

<br>

* Please spell-check your assignment before handing it in (Edit -> Check Spelling from the top menu bar).
* The default editor settings are to insert matching parentheses and quotes; if you find that this intrudes on your workflow, you can disable it via Tools -> Global Options -> Code then uncheck Insert matching parens/quotes.


<div style="margin-bottom:25px;">
</div>
##**Getting R Markdown Help**
\

Whenever you are editing R Markdown documents in RStudio, you can display an R Markdown cheat sheet by going to Help -> Cheatsheets -> R Markdown Cheat Sheet. A basic introduction to R Markdown can also be found in Chapter 21 in [R for Data Science](http://r4ds.had.co.nz/index.html). R Studio has a quick [introduction](https://rmarkdown.rstudio.com/authoring_quick_tour.html) to R Markdown. And, of course, there is the Google machine. Use it to get help.



***


Website created and maintained by [Noli Brazil](https://nbrazil.faculty.ucdavis.edu/)
