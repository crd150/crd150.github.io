---
title: "Assignment Guidelines"
subtitle: <font size="4">CRD 150 - Quantitative Methods in Community Research</font>
date: Winter 2024
output: 
  html_document:
    toc: true
    toc_depth: 3
    toc_float: true
    theme: cosmo
    self_contained: false
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


Assignments will be released Wednesday morning and are due 10:00 am on Canvas the following Wednesday. Assignment questions are provided at the end of each lab's guide. Assignments have two components:

1. Executing data analysis tasks in R. For example, creating a map or running a statistical model.
2. Answering conceptual questions - for example, interpret a concept introduced in lecture or the textbook.  

In order to get full credit for each assignment, you will need to

1. Show the correct statistical results for a given question (e.g. map, table, statistics).
2. Show the code producing the results. 
3. Provide comments in your own words explaining what each line of code is doing
4. Provide correct written answers.  
5. Submit an R Markdown Rmd file and its knitted html file on Canvas.

You will use [R Markdown](https://rmarkdown.rstudio.com/) to write up all R related assignments. This guide will go through the steps for answering and submitting class assignment questions using R Markdown.  For a thorough rundown of R Markdown, see [Chapter 27](https://r4ds.had.co.nz/r-markdown.html) in RDS. For full explanation of how assignments will be graded, read the [Grading section](https://crd150.github.io/hw_guidelines.html#Grading) located later in this guide.

<div style="margin-bottom:25px;">
</div>
## **R Markdown**
\

R Markdown is a simple formatting syntax for authoring html, pdf, and Microsoft Word documents in RStudio.  For each R related assignment, you will need to upload onto Canvas two documents: 

1. An R Markdown document, which has an `.Rmd` extension
2. A knitted `.html` file 

These documents will provide us  an easy-to-read document to grade; more importantly, you will  get to practice (1) writing scripts, (2) keeping track of the analyses you run, and (3) organizing your output in a reader-friendly manner. When you submit these documents on Canvas, **do not combine them into a zipped compressed folder**.  They should be two separate files.

To be clear, R is a *programming language*. RStudio is an *application*. R Markdown is a *markup syntax* to convert R script and text into a pdf or html document. It allows for presentation-ready documents that show commands and results in a seamless flow.   When you write R code and embed it in presentation documents created using R Markdown, you are forced to explicitly state the steps you took to do your research.  

In RStudio, install the packages **knitr** and **rmarkdown** using the `install.packages()` command. Type the following in your RConsole window after `>`


```r
install.packages("knitr")
install.packages("rmarkdown")
```

Once you've installed these packages, you don't need to install them any more in the future.  You also do not need to load them in at any time using `library()`.


<div style="margin-bottom:25px;">
</div>
## **Opening an R Markdown file**
\

An `.Rmd` template will be provided for each assignment.  Download the week's assignment template, which will be linked at the top of every assignment, and save it into an appropriate folder on your hard drive. File management is important here. Here are some tips.

* Set up a clear and understandable hierarchical file system for this class on your hard drive.  For example, create a class folder (CRD 150).  Within this class folder, create the folder Assignments.  Within the Assignments folder, create separate folders for each Assignment (e.g. Assignment 1, Assignment 2, ...).  Save that week's assignment template here. When you knit your Rmd (we'll get to what knitting means below), this is where your html file will go. Don't work from your Desktop. Or from the Downloads folder. Or some randomly named folder that you will have a hard time finding a month, week or day from now. You should have a sequence of folders that looks like the following (on a Mac)

<center>
![This is what file organization looks like](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/fileorg.png)
</center>

<br>

To open an `.Rmd` file in RStudio, select File -> Open File and navigate to the folder you saved the assignment template in and select the file. You should see the R Markdown file pop up on the top left portion of your RStudio interface like below.

<center>
![The full RStudio interface](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/chunk1.png)

</center>

<div style="margin-bottom:25px;">
</div>
## **Authoring an R Markdown document**
\

R Markdown documents contain 3 major components:

1. A YAML header surrounded by - - -
2. Chunks of R code surrounded by ```
3. Text mixed with simple text formatting using the [Markdown syntax](https://www.markdownguide.org/cheat-sheet/)

<div style="margin-bottom:25px;">
</div>
### **YAML header**
\

The YAML header controls how R Markdown renders your `.Rmd` file. A YAML header is a section of key:value pairs surrounded by - - - marks and is **always located at the top of your Rmd file**.

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
### **R Code chunks**
\


When answering an assignment question, you'll have the following sequence of components in your R Markdown document: Question, R code answering the question, and your text to explain the results.  Let's say you have the following question in one of your assignments.

````
Question 1

1+1

1. What is the result of the above operation?
````
\


Assignments will ask you to write R code to accomplish a data analysis task. You present and execute your R code inside R code chunks. R chunks start with `` ```{r} `` and end with  `` ``` ``, and you insert your R code in between.  To designate `1+1` as R code, it will look like the following in your R Markdown document.

````
```{r}
1+1
```
````

<br>

All code inside a chunk will be executed when knitting the markdown file (i.e. the html file will show your code and its result). This means that your R code must reside inside an R code chunk in order for it to be processed as R code (otherwise R Markdown will think it is text).  This also means that nothing but executable code (or comments, which we'll get to next) should be inside a chunk.


We will ask you to annotate your R code so that we (and you) know what is being done in that line of code.  You designate annotations or comments in R code using the `#` symbol.  So, to annotate the above line of code `1+1`, you add in your R code chunk

````
```{r}
#The code adds one plus one
1+1
```
````

<br>

You put your comments after the `#`. 


The first line of the chunk has `{r}` which basically states that everything inside the chunk will be in R code.  Next to the `r`, we can give the chunk a name, such as

````
```{r q1chunk1}
#The code adds one plus one
1+1
```
````

<br>

Here, I named the chunk `q1chunk1` which indicates this is question 1, chunk 1. You can name the chunk whatever you like (sally, mariah, proflondon). The chunk name is not required; however, it is good practice to give each chunk a unique name (we'll see its value later when we talk about knitting).

In every R Markdown assignment template, you will notice the following R code chunk after the YAML.

<br>

````
```{r}
knitr::opts_chunk$set(warning=FALSE, message = FALSE)
knitr::opts_knit$set(progress = TRUE, verbose = TRUE)
```
````

<br>

**Do not delete or alter this chunk, always keep it in your R Markdown.** The above code establishes global options for every R chunk code in your R Markdown file. These options alter the way R results are spit out in your formatted knitted document. The above code hides non error messages for every single R code chunk in your file. These non error messages are unnecessary for the purposes of this class.  Other chunk options can be found [here](https://r4ds.had.co.nz/r-markdown.html#chunk-options). 

You can also set options for individual chunks.  These are local options - local to that chunk - and won't be applied to other chunks in your file.  For example, you can add the options `warning=TRUE` and `message=TRUE` to an individual R code chunk as follows to show the messages for the R code in that chunk.  Notice that each argument is separated by a comma.

````
```{r q1chunk1, warning = TRUE, message = TRUE}
1+1
```
````


<div style="margin-bottom:25px;">
</div>
### **Text**
\

In addition to R code, assignments will ask you to write text to explain results.  Going back to our example question from above

````
Question 1

1+1

1. What is the result of the above operation?
````
\

You would type in your R Markdown document the following

````
Question 1

```{r q1chunk1}
#The code adds one plus one 
1+1
```

This yields two
````

<br>

The question and text explaining the result reside outside of the R chunk. There is nothing special about the text in terms of its format or placement. 


<div style="margin-bottom:25px;">
</div>
### **Separating code one chunk at a time**
\

Do not put all of your code for an entire assignment or even a single question in one single chunk.  For example, let's say you see the following in your homework assignment.

````
Question 1

1+1

2+2

Run each line of code above.  What are the results?
````

Instead of including both lines of code in one chunk like as follows

````
Question 1

```{r q1chunk1}
#this code adds one plus one
1+1

#this code adds two plus two
2+2
```

One plus one equals 2. Two plus two equals 4.
````

Break it up and add text after each to explain the result.

````
Question 1

```{r q1chunk1}
#this code adds one plus one
1+1
```

One plus one equals 2.

```{r q1chunk2}
#this code adds two plus two
2+2
```

Two plus two equals four.
````

<br>

Think of writing a script as similar to writing an essay.  You don't write an essay in one single paragraph.  You break it up into several paragraphs, where paragraph breaks are used to separate major points and ideas.  On the other end of the spectrum, do not break up every single line of code like you would not break up every single sentence into its own paragraph in an essay.  Break up your code where it makes sense.



<div style="margin-bottom:25px;">
</div>
### **Always test each chunk**
\

After you write code in a chunk, you'll need to test the code to make sure it is running properly.  In other words, rather than writing all the code and then running it at the end of the assignment, run the chunks one at a time.  To elaborate, let's say the first question in an assignment asks you to add one plus one.  In your R Markdown document, type in the following to answer this question.

<br>

````
Question 1

```{r q1chunk1}
#The code adds one plus one 
1+1
```

This yields two
````

<br>

Run that code chunk to make sure it works (you should get 2!).  *Then* proceed to the next question.  Let me emphasize: **Do not write all of your code answering every question in the assignment and run it at the very end.** Routinely TEST, Test, and test your code to make sure it runs properly.

<br>


There are a number of ways to run code in R Markdown.  First, you can click your mouse in the R code chunk you want to run and  click on ![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/hwguide3.png) located at the top of the R Markdown window and select *Run Current Chunk*.  

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

Third, you can highlight partly or entirely a line of code and select *Code* from the R Studio menu and select (among many options) *Run Selected Lines(s)*.  See Figure below (from a Mac OS).  

<center>
![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/chunk3.png)

</center>

<br>

Fourth, you can highlight partly or entirely a line of code and use a keyboard shortcut to run the code. As you can see in the figure above, the keyboard shortcut to run code on a Mac is command + return. See [here](https://support.rstudio.com/hc/en-us/articles/200711853-Keyboard-Shortcuts) for other shortcuts for both Mac and Windows.



Note that when you run an R code chunk for the very first time ever, its output will be embedded within your R Markdown document as shown below

<center>
![Output within R Markdown document.](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/hwguide1.JPG)

</center>

\

This will also be true when you plot graphs and maps. When you are testing your code, you might want to have the code results shown in your RStudio Console (the bottom left window) and plots/maps shown in the Plots window (bottom right window). To get RStudio to do this, select the "Tools" menu and select "Global Options".  Select "R Markdown" from the left-hand side and deselect the check box "Show output inline for all R Markdown documents". The output from your code should now be shown in the console or Plots window. 

<center>
![R Markdown options.](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/hwguide2.JPG)

</center>



<div style="margin-bottom:25px;">
</div>
## **Knitting an R Markdown document**
\

In addition to the R Markdown Rmd file, you will need to submit its knitted result. Knitting puts an assignment's main components - code, output, and text - in a nicely formatted document.  You can create three types of knitted documents: html, Microsoft Word, and a pdf. In this class, we will be knitting always to an html file because it is the easiest of the three options.  Go back to the YAML example I showed above. *output:* *html_document* tells R to produce an html document. 

<br>

To Knit your document click ![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/hwguide6.png), which will be located at the top of the upper center of the R Markdown window.  Note that you can select your document type when knitting by clicking the pull down menu next to ![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/hwguide6.png) and selecting your document choice (default is html).  When you start knitting, you will notice that a new window on the bottom left named "Render" will appear in place of the console.  The window will show the progress in your knitting.  R is going through each R code chunk one at a time. The percentages you will see will be based on the proportion of your R Markdown file that R has successfully knitted. See Figure below.

<br>

<center>
![R Markdown knitting progress window ](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/knitprog.png)

</center>

<br>

If you have successfully knitted the RMarkdown file, the resulting html file will appear in the same folder as where your RMarkdown file resides. 

If it has a problem knitting, R will stop at the chunk that contains the problem.  You can determine the offending error and where it is located in your RMarkwdown in the Render pane.  You will see the R Markdown progress window, the error in red, and where R Markdown stopped. Carefully read the description of the error, which will contain the R code chunk name and the lines containing the problem in your R Markdown file.  This is where it is useful for naming your chunks.  You can directly go to your offending chunk and lines of code and see what may be the problem. For example, the figure below shows knitting was stopped because the column *tpopr* does not exist.  You can go to the chunk named *q3chunk2*, lines 55-56 to remedy the issue.

<br>

<center>
![R Markdown knitting stopped by an error ](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/kniterror.png)

</center>

<br>


Hopefully, the error statement reveals why you were not able to knit.  If it is not illuminating, you'll need to figure out what you did wrong.  See the **Having problems knitting?** section below.

Note that when you are knitting, progress and any errors will be shown not in the regular R console window, but in the Render window.  To toggle back to the Console (and back to the Render window), just click on the Console (or R Markdown) tab as shown below.

<br><br>

<center>
![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/consoletab.png)

</center>

<br><br>

If you encounter no errors, a preview of your knitted document will pop up in a new window and the `.html` file will be saved in the folder where your Rmd file resides.  **I recommend not waiting till the very end of an assignment to knit.**  When you finish one question, knit your document to see if everything is working properly. If it is working for that question, move on to the next question. 

Let's be clear: There are two things you'll have to deal with: (1) Making sure the R code is working correctly to get the results you need in order to answer the question and (2) Making sure the code is working correctly to knit a final document.  These two issues may be related (if your R code is producing an error, R Markdown will not knit), but sometimes they are not.  So, check both your R code *and* your knitting results often. **And absolutely do not wait till the last minute to knit. Knit as often as possible**.

When you're satisfied with the end product, submit your `.Rmd` document and a knitted `.html` document on [Canvas](https://login.canvas.ucdavis.edu/). 


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

You then click on ![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/hwguide6.png) to knit. You will get an error because R will not be able to knit because *myobject* was not **created within the R Markdown**.  Both lines of code should be in the R Markdown file as follows:  

````
```{r}
myobject <- 2

myobject*10
```
````

<br>

Once again, **treat the R Markdown file as a self-contained, stand alone script**. This is an important concept to understand because many students get tripped up on it when first starting out. 

* Are you trying to bring in a data file that is not located in the directory your R Markdown is pointed to?  Remember, don't scatter your data files for an assignment across different folders.  Keep them in one folder - the folder where your R Markdown document resides.  To find your current working directory, type in `getwd()` in your console and press enter.  To set your working directory, type in `setwd("folder")` in your console, replace *folder* with the **entire** path you want R to point to, and press enter/return. You can also set your working directory by clicking on Session -> Set Working Directory -> Choose Directory from the top menu.
* Do you have an `install.packages()` in your R Markdown script? Take it out!  You only need to do it once - and never inside an R Markdown script.
* Do you have a `View()` command in your R Markdown script? Take it out!  Sometimes R Markdown will have problems when trying to view an R data object.
* Are you using functions for a package that you need to load into R and haven't loaded it in your R Markdown using `library()`. If so, load it in R Markdown!
* If you change a piece of code somewhere in the middle because you caught an error, make sure that change is reflected throughout the code.  For example, let's say you decide to rename the object *hisobject* to *herobject*.  There may be code later on in the document that uses *hisobject*.  So, you'll need to change **every** line of code in your R Markdown that uses *hisobject* to now use *herobject*. 
* SPELLING, Spelling, spelling.  Check your spelling.  You created an object named *hisobject*, but you use it later in the file as *hsobject*. R will tell you that *hsobject* is not found. Another example: you used the function `read_cvs()` as opposed to the correct function `read_csv()`.  
* R is case sensitive. The object *Money* is different from *money*.
* R functions are sometimes finicky about spaces. They are also finicky about quotes. Some functions require quotes, others don't.  
* Make sure that when you use brackets, parentheses or quotes, they should start and end with one. It is very rare that you will use a left parentheses and not close it with a right parentheses.
* As I mentioned above, don't wait till the last minute to knit.  Knit after every question.  Repeat it again: Knit after every question.
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
* If you're still stuck, more than likely someone else also had a similar problem in the past.  So, ask a classmate.  If your classmate is also stuck, use Google and it might help you out.



<div style="margin-bottom:25px;">
</div>
## **Summary**
\

The proper workflow for each assignment will be as follows

1. Go through the week's reading and lab guide and make sure you understand the material.
2. Create a folder on your hard drive that is specific to the assignment (e.g. Assignment 1, Assignment 2, etc.).
3. Save the R Markdown assignment template linked to each assignment in the appropriate assignment folder on your hard drive.
4. Download any data needed for the assignment into the same folder.  For most assignments, I will upload the assignment data on Canvas or GitHub.
5. Open the R Markdown assignment file in RStudio.
6. In the R Markdown document, answer the first assignment question.
* Most of the questions will ask you to run code.  Show that code with your own comments in R Markdown chunks. Bottom line: Any code you used to get a result should be in your assignment. Otherwise, you will get points off, and for some questions, get *all* points off.
  + Break up your code into different chunks where it makes sense. For some questions, you might include all code for a question in one single chunk.  For other questions, you might break up the code into several chunks.
  + Make sure your code works.  Run code one chunk at a time to make sure it is working. Note that there are multiple ways to get to an answer in R. **We will not grade on how efficient your code is unless stated so in the question**. 
* Most of the questions will ask you to explain your results. Write your explanations outside of the R code chunks. Please - *please* - take these interpretation questions seriously.  This is a not a programming or Data Science course - you may have taken 40 hours to produce super elegant code to answer a question, but your results won't be worth much to anyone if you can't properly interpret them. 
7. After you've completed the first question, knit to an html file. Make sure it knits properly. If it does not, examine the error, and fix the problem.
8. If you're satisfied with your code and its results for the first question, and the document properly knitted, move on to the next question. Repeat steps 6 and 7.
9. Once you've completed all questions and successfully knitted, submit the `.Rmd` and `.html` files on Canvas **before** the designated due time.
10. Smile, pat yourself on the back, and have some ice cream (I like these [folks](https://biritemarket.com/creamery/)).

<div style="margin-bottom:25px;">
</div>
## **Grading**

<br>

In order to get full credit for each assignment, you will need to

1. Show the correct statistical results for a given question (e.g. map, table, statistics).
2. Show the code producing the results. 
3. Provide comments in your own words explaining what each line of code is doing
4. Provide correct written answers.  
5. Submit an R Markdown Rmd file and its knitted html file on Canvas.

Any response requiring a data analysis task  must be supported by code you generate to produce your result. Just examining your various objects in the “Environment” section of R Studio is insufficient—you must use scripted commands.   Because there are typically multiple ways to get an answer, we will not grade you on the efficiency of your code.  You can ask for help from the TAs and work with other students.  However, you *must* submit your own assignments.

You *must* include in *your own words* comments that explain each line of code in your R Markdown. It does not have to be extensive, but should be concise and clear enough to let us know that you understand what the code is doing. You should indicate not just the **what**, but also the **why**. For example

````
```{r q1chunk1}
#keeps the variables var1 and var2 because these are the only variables I need 
#for the analysis.

object <- object %>%
          select(var1, var2)
```
````

<br>

Comments are important for demonstrating that you understand what your code is doing. Furthermore, by writing in basic English what each piece of code is doing and why you are doing it, you will be able to strengthen your understanding of how R works. Furthermore, comments will help clear up any confusion when future you goes back to your code.

Our grading will be more lenient at the beginning of the quarter as you learn the nuances of R, but will get progressively more stringent on aspects of your submission that have already been covered in prior assignments.  For example, we fully expect you to have proper axis labels on all graphs, and appropriate legends on all maps, topics that we will cover early in the quarter, later in the quarter.

Also note: all code used to produce your results must be shown in your HTML file (e.g., do not use `echo=FALSE` or `include=FALSE` as options anywhere).  Other pieces of advice:

* Answers should be correct. This is not to say that we will not take into consideration how much of your code is correct. But, if you do get the wrong answer we will take at least something off.
* We will not grade on how efficient your code is unless stated so in the question.  We will never take points off for accomplishing things differently than expected as long as it produces the correct result.  However, if the answer is incorrect *and* your code indicates little effort (e.g. blank or a few lines of code that yield nothing) or is completely incomprehensible (e.g. 20 lines of mish mash), expect few to no points.
* You must submit both an Rmd and html file.  If you don't, we will take significant points off.

<div style="margin-bottom:25px;">
</div>
## **Other things to know**

<br>

* Please spell-check your assignment before handing it in (Edit -> Check Spelling from the top menu bar).
* The default editor settings are to insert matching parentheses and quotes; if you find that this intrudes on your workflow, you can disable it via Tools -> Global Options -> Code then uncheck Insert matching parens/quotes.
* We expect you to work together. Two heads are better than one, and five heads are better than two
* We expect you to ask for help if you get stuck (and you will be stuck a lot). We can’t read minds, so if you don’t tell us that you are confused, we won’t know.
* You should try and solve problems before you ask for help.
* Trying includes an Internet search (a crucial skill!)
* All homework should be submitted on Canvas. 


<div style="margin-bottom:25px;">
</div>
## **Getting R Markdown Help**
\

Whenever you are editing R Markdown documents in RStudio, you can display an R Markdown cheat sheet by going to Help -> Cheatsheets -> R Markdown Cheat Sheet. A basic introduction to R Markdown can also be found in Chapter 27 in [R for Data Science](https://r4ds.had.co.nz/r-markdown.html). R Studio has a quick [introduction](https://rmarkdown.rstudio.com/authoring_quick_tour.html) to R Markdown. We've put together some additional R tips [here](https://crd150.github.io/tips.html) in the likely case that you get stuck. And, of course, there is the Google machine. Use it to get help.



***

<a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/">Creative Commons Attribution-NonCommercial 4.0 International License</a>.


Website created and maintained by [Noli Brazil](https://nbrazil.faculty.ucdavis.edu/)
