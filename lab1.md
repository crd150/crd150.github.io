---
title: "Lab 1: Introduction to R"
subtitle: <h4 style="font-style:normal">CRD 150 - Quantitative Methods in Community Research</h4>
author: <h4 style="font-style:normal">Professor Noli Brazil</h4>
date: <h4 style="font-style:normal">January 11, 2023</h4>
output: 
  html_document:
    toc: true
    toc_depth: 3
    toc_float: true
    theme: cosmo
    code_folding: show
    self_contained: false
---


<style>
p.comment {
background-color: #DBDBDB;
padding: 10px;
border: 1px solid black;
margin-left: 25px;
border-radius: 5px;
font-style: normal;
}

h1.title {
  font-weight: bold;
  font-family: Arial;  
}

h2.title {
  font-family: Arial;  
}

</style>


<style type="text/css">
#TOC {
  font-size: 13px;
  font-family: Arial;
}
</style>


\



In this guide you will learn the basic fundamentals of the statistical software program R.  Because R is not a prerequisite for the class, this guide assumes no background in the language.  The objectives of the guide are as follows

1. Download R and RStudio
2. Get familiar with the RStudio interface
3. Understand R data types
4. Understand R data structures, in particular vectors and data frames
5. Understand R functions
6. Understand R Markdown and the process for submitting assignments


This lab guide follows closely and supplements the material presented in Chapters 2, 4, and 21 in the textbook [R for Data Science](http://r4ds.had.co.nz/index.html) (RDS).

<p class="comment">**Assignment 1 is due by 2:00 pm, January 18th on Canvas.**  See [here](https://crd150.github.io/hw_guidelines.html) for assignment guidelines.  You must submit an `.Rmd` file and its associated `.html` file. Name the files: yourLastName_firstInitial_asgn01. For example: brazil_n_asgn01</p>

<div style="margin-bottom:25px;">
</div>
## **A note on lab guides**
\

Lab guides are self-contained and self-guided.  The expectation for each guide is to get through all of it either on your own or collaboratively.  **You do not need to turn in lab guides.** However, it is important that you do not skip guides as lab material builds on one another. 

<div style="margin-bottom:25px;">
</div>
## **What is R?**
\

R is a free, open source statistical programming language.  It is useful for data cleaning, analysis, and visualization. R is an interpreted language, not a compiled one. This means that you type something into R and it does it.  It is both a command line software and a programming environment.  It is an extensible, open-source language and computing environment for Windows, Macintosh, UNIX, and Linux platforms, which  allows for the user to freely distribute, study, change, and improve the software.

<div style="margin-bottom:25px;">
</div>
## **Getting R**
\

R can be downloaded from one of the “CRAN” (Comprehensive R Archive Network) sites. In the US, the main site is at http://cran.us.r-project.org/.  Look in the “Download and Install R” area. Click on the appropriate link based on your operating system.  

**If you already have R on your computer, make sure you have the most updated version of R on your personal computer (4.2.2 "Innocent and Trusting").**


<div style="margin-bottom:25px;">
</div>
### **Mac OS X**


1. On the “R for Mac OS X” page, there are multiple packages that could be downloaded. If you are running High Sierra or higher, click on R-4.2.2.pkg; if you are running an earlier version of OS X, download the appropriate version listed under "Binary for legacy OS X systems." 

2. After the package finishes downloading, locate the installer on your hard drive, double-click on the installer package, and after a few screens, select a destination for the installation of the R framework (the program) and the R.app GUI. Note that you will have to supply the Administrator’s password. Close the window when the installation is done.

3. An application will appear in the Applications folder: R.app. 

4. Browse to the [XQuartz download page](https://www.xquartz.org/). Click on the most recent version of XQuartz to download the application.

5. Run the XQuartz installer. XQuartz is needed to create windows to display many types of R graphics: this used to be included in MacOS until version 10.8 but now must be downloaded separately.


<div style="margin-bottom:25px;">
</div>
### **Windows**


1. On the “R for Windows” page, click on the “base” link, which should take you to the “R-4.2.2 for Windows (32/64 bit)” page

2. On this page, click "Download R 4.2.2 for Windows", and save the exe file to your hard disk when prompted. Saving to the desktop is fine.

3. To begin the installation, double-click on the downloaded file. Don’t be alarmed if you get unknown publisher type warnings. Window’s User Account Control will also worry about an unidentified program wanting access to your computer. Click on “Run”.

4. Select the proposed options in each part of the install dialog. When the “Select Components” screen appears, just accept the standard choices

Note: Depending on the age of your computer and version of Windows, you may be running either a “32-bit” or “64-bit” version of the Windows operating system. If you have the 64-bit version (most likely), R will install the appropriate version (R x64 3.5.2) and will also (for backwards compatibility) install the 32-bit version (R i386 3.5.2). You can run either, but you will probably just want to run the 64-bit version.

<div style="margin-bottom:25px;">
</div>
## **What is RStudio?**
\

If you click on the R program you just downloaded, you will find a very basic user interface. For example, below is what I get on a Mac

<br>

<center>
![R's Interface.](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/rint.png)
</center>

<br>

We will not use R's direct interface to run analyses. Instead, we will use the program RStudio. RStudio gives you a true integrated development environment (IDE), where you can write code in a window, see results in other windows, see locations of files, see objects you've created, and so on. To clarify which is which: R is the name of the programming language itself and RStudio is a convenient interface.

<div style="margin-bottom:25px;">
</div>
## **Getting RStudio**
\

To download and install RStudio, follow the directions below

1. Navigate to RStudio's download [site](https://rstudio.com/products/rstudio/download/#download)
2. Click on the appropriate link based on your OS (Windows, Mac, Linux and many others). Do not download anything from the "Zip/Tarballs" section.
3. Click on the installer that you downloaded.  Follow the installation wizard's directions, making sure to keep all defaults intact.  After installation, RStudio should pop up in your Applications or Programs folder/menu.

Note that the most recent version of RStudio works only for certain operating systems (OS). If you have an older OS, you will need to download an older version RStudio, which you can find [here](https://www.rstudio.com/products/rstudio/older-versions/).


<div style="margin-bottom:25px;">
</div>
## **The RStudio Interface**
\

Open up RStudio.  You should see the interface shown in the figure below which has three windows.

<center>
![The RStudio Interface.](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/rgui.png)

</center>

\


* **Console** (left) - The way R works is you write a line of code to execute some kind of task on a data object.  The R Console allows you to run code interactively. The screen prompt `>` is an invitation from R to enter its world. This is where you type code in, press enter to execute the code, and see the results.
* **Environment, History, and Connections tabs** (upper-right)
    + **Environment** - shows all the R objects that are currently open in your workspace.  This is the place, for example, where you will see any data you've loaded into R. When you exit RStudio, R will clear all objects in this window.  You can also click on ![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/broom.png) to clear out all the objects loaded and created in your current session.
    + **History** - shows a list of executed commands in the current session.
    + **Connections** - you can connect to a variety of data sources, and explore the objects and data inside the connection.  I typically don't use this window, but you [can](https://support.rstudio.com/hc/en-us/articles/115010915687-Using-RStudio-Connections).    
* **Files, Plots, Packages, Help and Viewer tabs** (lower-right)
    + **Files** - shows all the files and folders in your current working directory (more on what this means later).
    + **Plots** - shows any charts, graphs, maps and plots you've successfully executed (we'll be using this window starting in Lab 5).     
    + **Packages** - tells you all the R packages that you have access to (more on this in Lab 2).
    + **Help** - shows help documentation for R commands that you've called up.  
    + **Viewer** - allows you to view local web content (won't be using this much).

There is actually fourth window. But, we'll get to this window a little later (if you read the [assignment guidelines](https://crd150.github.io/hw_guidelines.html) you already know what this fourth window is).

<div style="margin-bottom:25px;">
</div>
### **Setting RStudio Defaults**
\

While not required, I strongly suggest that you change preferences in RStudio to never save the workspace so you always open with a clean environment. See [Ch. 8.1](https://r4ds.had.co.nz/workflow-projects.html#what-is-real) of R4DS for some more background

1. From the Tools menu on RStudio, open the Tools menu and then select Global Options.
2. If not already highlighted, click on the General button from the left panel.
3. Uncheck the following Restore boxes

* Restore most recently opened project at startup
* Restore previously open source documents at startup
* Restore .RData into workspace at startup

4. Set Save Workspace to .RData on exit to *Never*
5. Click OK at the bottom to save the changes and close the preferences window. You may need to restart RStudio.

<br>

<center>
![RStudio Preferences](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/rstudiopreferences.png)
</center>

<br>

The reason for making these changes is that it is preferable for reproducibility to start each R session with a clean environment. You can restore a previous environment either by rerunning code or by manually loading a previously saved session.

The R Studio environment is modified when you execute code from files or from the console. If you always start fresh, you do not need to be concerned about things not working because of something you typed in the console, but did not save in a file.

You only need to set these preferences once.


<div style="margin-bottom:25px;">
</div>
## **R Data Types**
\

Let's now explore what R can do. R is really just a big fancy calculator. For example, type in the following mathematical expression next to the `>` in the R console (left window)


```r
1+1
```

Note that spacing does not matter: `1+1` will generate the same answer as `1      +       1`.  Can you say hello to the world?
\


```r
hello world
```

```
## Error: <text>:1:7: unexpected symbol
## 1: hello world
##           ^
```


Nope. What is the problem here?  We need to put quotes around it. 


```r
"hello world"
```

```
## [1] "hello world"
```

"hello world" is a character and R recognizes characters only if there are quotes around it. This brings us to the topic of basic data types in R.  There are four basic data types in R: character, logical, numeric, and factors (there are two others - complex and raw - but we won't cover them because they are rarely used). 

<div style="margin-bottom:25px;">
</div>
### **Characters**
\

Characters are used to represent words or letters in R.  We saw this above with "hello world". Character values are also known as strings.  You might think that the value `"1"` is a number. Well, with quotes around, it isn't! Anything with quotes will be interpreted as a character.  No ifs, ands or buts about it.

<div style="margin-bottom:25px;">
</div>
### **Logicals**
\

A logical takes on two values: FALSE or TRUE. Logicals are usually constructed with comparison operators, which we'll go through more carefully in Lab 2.  Think of a logical as the answer to a question like "Is this value greater than (lower than/equal to) this other value?" The answer will be either TRUE or FALSE. TRUE and FALSE are logical values in R.  For example, typing in the following 


```r
3 > 2
```

```
## [1] TRUE
```

gives us a true. What about the following?


```r
"prof visser" == "prof cannon"
```

```
## [1] FALSE
```

<div style="margin-bottom:25px;">
</div>
### **Numeric**
\

Numerics are separated into two types: integer and double.  The distinction between integers and doubles is usually not important. R treats numerics as doubles by default because it is a less restrictive data type.  You can do any mathematical operation on numeric values.  We added one and one above. We can also multiply using the `*` operator


```r
2*3
```

```
## [1] 6
```

Divide


```r
4/2
```

```
## [1] 2
```

And even take the logarithm!


```r
log(1)
```

```
## [1] 0
```

```r
log(0)
```

```
## [1] -Inf
```

Uh oh. What is `-Inf`?  Well, you can't take the logarithm of 0, so R is telling you that you're getting a non numeric value in return.  The value `-Inf` is another type of value type that you can get in R.  We'll go through this and other weirdo values in Lab 2.


<div style="margin-bottom:25px;">
</div>
### **Factors**
\

Think of a factor as a categorical variable.  It is sort of like a character, but not really. It is actually a numeric code with character-valued levels. Think of a character as a true string and a factor as a set of categories represented as characters. We won't use factors too much in this course.


<div style="margin-bottom:25px;">
</div>
## **R Data Structures**
\
You learned that R has four basic data types. Now, let's go through how we can store data in R. That is, you type in the character "hello world" or the number 3, and you want to store these values. You do this by using R's various data structures.

<div style="margin-bottom:25px;">
</div>
### **Vectors**
\

A vector is the most common and basic R data structure and is pretty much the workhorse of the language. A vector is simply a sequence of values which can be of any data type but all of the same type.  There are a number of ways to create a vector depending on the data type, but the most common is to insert the data you want to save in a vector into the command `c()`.  For example, to save the values 4, 16 and 9 in a vector type in


```r
c(4, 16, 9)
```

```
## [1]  4 16  9
```

You can also have a vector of character values


```r
c("martin", "anne", "clare")
```

```
## [1] "martin" "anne"   "clare"
```

The above code does not actually "save" the values 4, 16, and 9 - it just presents it on the screen in a vector. If you want to use these values again without having to type out `c(4, 16, 9)`, you can save it in a data object. At the heart of almost everything you will do (or ever likely to do) in R is the concept that everything in R is an object. These objects can be almost anything, from a single number or character string (like a word) to highly complex structures like the output of a plot, a map, or a summary of your statistical analysis. 

You assign data to an object using the arrow sign `<-`.  This will create an object in R's memory that can be called back into the command window at any time.  For example, you can save "hello world" to a vector called *b* by typing in


```r
b <- "hello world"
b
```

```
## [1] "hello world"
```

You can pronounce the above as “b becomes 'hello world'”.

Similarly, you can save the numbers 4, 16 and 9 into a vector called *v1*


```r
v1 <- c(4, 16, 9)
v1
```

```
## [1]  4 16  9
```

You should see the objects *b* and *v1* pop up in the Environment tab on the top right window of your RStudio interface.  

<center>
![The Environment window](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/lab0fig.png)

</center>

Note that the name *v1* is nothing special here. You could have named the object *x* or *crd150* or your pet's name (mine was *charlie*).  You can't, however, name objects using special characters (e.g. !, @, $) or only numbers (although you can combine numbers and letters, but a number cannot be at the beginning e.g. *2d2*).  For example, you'll get an error if you save the vector *c(4,16,9)* to an object with the following names


```r
123 <- c(4, 16, 9)
!!! <- c(4, 16, 9)
```

```
## Error: <text>:2:5: unexpected assignment
## 1: 123 <- c(4, 16, 9)
## 2: !!! <-
##        ^
```

Also note that to distinguish a character value from a variable name, it needs to be quoted.  "v1" is a character value whereas *v1* is a variable.  One of the most common mistakes for beginners is to forget the quotes.


```r
brazil
```

```
## Error in eval(expr, envir, enclos): object 'brazil' not found
```

The error occurs because R tries to print the value of the object *brazil*, but there is no such object. So remember that any time you get the error message `object 'something' not found`, the most likely reason is that you forgot to quote a character value. If not, it probably means that you have misspelled, or not yet created, the object that you are referring to.  I've included the common pitfalls and R tips in this class [resource](https://crd150.github.io/tips.html).  

Every vector has two key properties: *type* and *length*.  The type property indicates the data type that the vector is holding. Use the command `typeof()` to determine the type 


```r
typeof(b)
```

```
## [1] "character"
```

```r
typeof(v1)
```

```
## [1] "double"
```

Note that a vector cannot hold values of different types.  If different data types exist, R will coerce the values into the highest type based on its internal hierarchy:  logical < integer < double  < character.  Type in `test <- c("r", 6, TRUE)` in your R console.  What is the vector type of `test`?

The command `length()` determines the number of data values that the vector is storing


```r
length(b)
```

```
## [1] 1
```

```r
length(v1)
```

```
## [1] 3
```

You can also directly determine if a vector is of a specific data type by using the command `is.X()` where you replace `X` with the data type.  For example, to find out if *v1* is numeric, type in


```r
is.numeric(b)
```

```
## [1] FALSE
```

```r
is.numeric(v1)
```

```
## [1] TRUE
```

There is also `is.logical()`, `is.character()`, and `is.factor()`.  You can also coerce a vector of one data type to another.  For example, save the value "1" and "2" (both in quotes) into a vector named *x1*


```r
x1 <- c("1", "2")
typeof(x1)
```

```
## [1] "character"
```

To convert *x1* into a numeric, use the command `as.numeric()`


```r
x2 <- as.numeric(x1)
typeof(x2)
```

```
## [1] "double"
```

There is also `as.logical()`, `as.character()`, and `as.factor()`. 

An important practice you should adopt early is to keep only necessary objects in your current R Environment.  For example, we will not be using *x2* any longer in this guide.  To remove this object from R forever, use the command `rm()`


```r
rm(x2)
```

The data frame object *x2* should have disappeared from the Environment tab. [Bye bye!](https://www.youtube.com/watch?v=Eo-KmOd3i7s)

Also note that when you close down R Studio, the objects you created above will disappear for good. Unless you save them onto your hard drive (we'll touch on saving data in Lab 2), all data objects you create in your current R session will go [bye bye](https://www.youtube.com/watch?v=UqfLVDIZcP8) when you exit the program.


<div style="margin-bottom:25px;">
</div>
### **Data Frames**
\

We learned that data values can be stored in data structures known as vectors.  The next step is to learn how to store vectors into an even higher level data structure.  The data frame can do this.   Data frames store vectors of the same length.  Create a vector called *v2* storing the values 5, 12, and 25


```r
v2 <- c(5,12,25)
```

We can create a data frame using the command `data.frame()` storing the vectors *v1* and *v2* as columns


```r
data.frame(v1, v2)
```

```
##   v1 v2
## 1  4  5
## 2 16 12
## 3  9 25
```

Store this data frame in an object called *df1*


```r
df1<-data.frame(v1, v2)
```

*df1* should pop up in your Environment window.  You'll notice a ![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/lab0fig2.png) next to *df1*.  This tells you that *df1* possesses or holds more than one object. Click on ![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/lab0fig2.png) and you'll see the two vectors we saved into *df1*.  Another neat thing you can do is directly click on *df1* from the Environment window to bring up an Excel style worksheet on the top left window of your RStudio interface.  You can also type in 


```r
View(df1)
```

to bring the worksheet up. You can't edit this worksheet directly, but it allows you to see the values that a higher level R data object contains.

We can store different types of vectors in a data frame.  For example, we can save the numeric vector *v1* with a character vector *v3*.


```r
v3 <- c("martin", "anne", "clare")
df2 <- data.frame(v1, v3)
df2
```

For higher level data structures like a data frame, use the function `class()` to figure out what kind of object you're working with.


```r
class(df2)
```

```
## [1] "data.frame"
```

We can't use `length()` on a data frame because it has more than one vector. Instead, it has *dimensions* - the number of rows and columns. You can find the number of rows and columns that a data frame has by using the command `dim()`


```r
dim(df1)
```

```
## [1] 3 2
```

Here, the data frame *df1* has 3 rows and 2 columns. Data frames also have column names, which are characters.


```r
colnames(df1)
```

```
## [1] "v1" "v2"
```

In this case, the data frame used the vector names for the column names. 

We can extract columns from data frames by referring to their names using the `$` sign.


```r
df1$v1
```

```
## [1]  4 16  9
```

We can also extract data from data frames using brackets `[ , ]`


```r
df1[,1]
```

```
## [1]  4 16  9
```

The value before the comma indicates the row, which you leave empty if you are not selecting by row.  The value after the comma indicates the column, which you leave empty if you are not selecting by column. The above line of code selected the first column. Let's select the 2nd row.


```r
df1[2,]
```

```
##   v1 v2
## 2 16 12
```

What is the value in the 2nd row *and* 1st column?


```r
df1[2,1]
```

```
## [1] 16
```


We've been talking about the values in vectors and data frames rather abstractly.  In practice, values, vectors and data frames have specific meaning in the context of data analysis.  Let's make things concrete.  Take a look at this [website](https://ucr.fbi.gov/crime-in-the-u.s/2016/crime-in-the-u.s.-2016/tables/table-6/table-6-state-cuts/california.xls) showing crimes in California cities in 2016. Sacramento had 3,549 violent crime incidences.  This is a data value (numeric!).  The collection of violent crime counts for each city is a vector. The data frame has California cities as rows and the population, violent crime, homicide, and so on as columns.  You learned about these elements in Handout 1.  Now you see them in action in the R environment.

<div style="margin-bottom:25px;">
</div>
## **Functions**
\

Let's take a step back and talk about functions (also known as commands).  An R function is a packaged recipe that converts one or more inputs (called arguments) into a single output. You execute most of your tasks in R using functions.  We have already used a couple of functions above including `typeof()` and `colnames()`. Every function in R will have the following basic format

`functionName(arg1 = val1, arg2 = val2, ...)`

In R, you type in the function's name and set a number of options or parameters within parentheses that are separated by commas. Some options **need** to be set by the user - i.e. the function will spit out an error because a required option is blank - whereas others can be set but are not required because there is a default value established. 

Let’s use the function `seq()` which makes regular sequences of numbers.  You can find out what a function does and its options by calling up its help documentation by typing `?` and the function name


```r
? seq
```

The help documentation should have popped up in the bottom right window of your RStudio interface.  The documentation should also provide some examples of the function at the bottom of the page. Type the arguments `from = 1, to = 10` inside the parentheses of `seq()`


```r
seq(from = 1, to = 10)
```

```
##  [1]  1  2  3  4  5  6  7  8  9 10
```

You should get the same result if you type in


```r
seq(1, 10)
```

```
##  [1]  1  2  3  4  5  6  7  8  9 10
```

The code above demonstrates something about how R resolves function arguments. When you use a function, you can always specify all the arguments in `arg = value` form. But if you do not, R attempts to resolve by position. So in the code `seq(1, 10)`, it is assumed that we want a sequence `from = 1` that goes `to = 10` because we typed 1 before 10. Type in 10 before 1 and see what happens.  

Each argument requires a certain type of data type.  For example, you'll get an error when you use a character in `seq()`


```r
seq("p", "w")
```

```
## Error in seq.default("p", "w"): 'from' must be a finite number
```

Although the lab guides and course textbooks should get you through a lot of the functions that are needed to successfully accomplish tasks for this class, there are a number of useful online resources on R and RStudio that you can look into if you get stuck or want to learn more. We outline these resources [here](https://crd150.github.io/tips.html#Getting_help). If you ever get stuck, check this resource out first to troubleshoot before immediately asking a friend or the instructor/TA.


<div style="margin-bottom:25px;">
</div>
## **R Scripting**
\

In running the few lines of code above, we've asked you to work directly in the R Console and issue commands in an *interactive* way.  That is, you type a command after `>`, you hit enter/return, R responds, you type the next command, hit enter/return, R responds, and so on. As described in Handout 1, instead of writing the command directly into the console, you should write it in a script.  The process is now: Type your command in the script. Run the code from the script.  R responds. You get results. You can write two commands in a script. Run both simultaneously. R responds.  You get results.  This is the basic flow. In your homework assignments, we will be asking you to submit code in an R Markdown file.  R Markdown allows you to create documents that serve as a neat record of your analysis. Think of it as a word document, but instead of sentences in an essay, you are writing code for a data analysis.  

<br>

Rather than copying and pasting code from the lab guides into the R Console as you've been doing up to this point, type it into an R Markdown file and then run the code from there.  Even though you do not need to turn in the labs, running the lab code in your own R Markdown file will give you practice for your assignments.  Plus, the code is in **your** document, so you can add explanatory text or supplement the guide's code with your own code.   

<br>

Just like for each assignment, I will provide an R Markdown template for each lab. Download the R Markdown [Lab template](https://raw.githubusercontent.com/crd150/data/master/labtemplate.Rmd) into an appropriate folder on your hard drive.  It's best to set up on your hard drive a clean and efficient file management structure for this class as described in the [assignment guidelines](https://crd150.github.io/hw_guidelines.html).  For example, below is where I would save Lab 1's R Markdown file on my Mac laptop (I named the file "Lab 1").   

<center>
![This is what file organization looks like](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/lab1fig1.png)
</center>

<br>

Open the file in R Studio by clicking on *File* from the top menu, click on *Open File*, navigate to your Lab 1 folder, and click on the Lab 1 R Markdown file you downloaded.  Once you do this, if there isn't already one on your console, a fourth window should pop up in the top left showing you an R Markdown file. 

<br>

<center>
![The full RStudio interface](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/chunk1.png)
</center>

<br>

In this file, change the title to "Lab 1" and insert your name and date. Don't change anything else inside the YAML (the stuff at the top in between the `---`).  Also don't change the following chunk. 

````
```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE, warning=FALSE, message = FALSE)
```
````

All your code should go inside areas designated as

````
```{r}
#Type your code here
```
````

For example, you would write the code `1+1` as

````
```{r}
1+1
```
````

From the file, run the code. R responds. You get results.  

If you haven't already done so, now is a good time to read through the class [assignment guidelines](https://crd150.github.io/hw_guidelines.html) as they go through the basics of R Markdown files.  Go through this guide carefully as you will need to submit all your homework assignments using R Markdown.


<div style="margin-bottom:25px;">
</div>
## **Assignment 1**
\

Download and open the [Assignment 1 R Markdown Script](https://raw.githubusercontent.com/crd150/data/master/yourLastName_firstInitial_asgn01.Rmd). The script can also be found on Canvas (Files - Week 1 - Assignment). Any response requiring a data analysis task  must be supported by code you generate to produce your result. Just examining your various objects in the “Environment” section of R Studio is insufficient—you must use scripted commands. Submit the `Rmd` and its knitted `html` files on Canvas. We've put together some additional R tips [here](https://crd150.github.io/tips.html) in the likely case  you get stuck. 

1. Look up the help documentation for the function `rep()`. Use this function to create the following 3 vectors. (2 points each)

a. [1] 0 0 0 0 0

b. [1] 1 2 3 1 2 3 1 2 3 1 2 3

c. [1] 4 5 5 6 6 6

2. Load the *mtcars* dataset by using the code `data(mtcars)`.  What are the units of observation? How many unit of observations does this dataset have? How many variables?  Remember that wherever possible, you will need to use R code to answer the questions. The dataset's help documentation `? mtcars` might be useful. (4 points)

3. Explain what is the problem in each line of code below. Fix the code so it will run properly. (2 points each)

a. my variable <- 3

b. seq(1, 10 by = 2)

c. Class(c(1,2,3))

4. Have you used any of the following programs: Excel, R, PSPP, Stata, SAS, Python, Matlab? For each program, choose one of the following options: (a) Never used, (b) Beginner, (c) Basic competence, (d) Intermediate, (e) Advanced.  (2 points)

5. Describe what you are hoping to get out of this class? (2 points)




***

<a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/">Creative Commons Attribution-NonCommercial 4.0 International License</a>.


Website created and maintained by [Noli Brazil](https://nbrazil.faculty.ucdavis.edu/)
