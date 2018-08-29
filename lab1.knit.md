---
title: "Lab 1: Introduction to R"
subtitle: <h4 style="font-style:normal">CRD 150 - Quantitative Methods in Community Research</h4>
author: <h4 style="font-style:normal">Professor Noli Brazil</h4>
date: <h4 style="font-style:normal">September 28, 2018</h4>
output: 
  html_document:
    toc: true
    toc_depth: 3
    toc_float: true
    theme: cosmo
    code_folding: show
---


<style>
p.comment {
background-color: #DBDBDB;
padding: 10px;
border: 1px solid black;
margin-left: 25px;
border-radius: 5px;
font-style: italic;
}

h1.title {
  font-weight: bold;
}

</style>
\



\

In this guide you will learn the basic fundamentals of processing nonspatial data in R.  Because R is not a prerequisite for the class, this guide assumes no background in the language.  The objectives of the guide are as follows


1. Get familiar with the RStudio interface
2. Understand R Markdown and the process for submitting assignments
3. Understand R data types
4. Understand R data structures, in particular vectors, data frames and tibbles
5. Understand R functions and commands

This lab guide follows closely and supplements the material presented in Chapters X in R for Data Science (RDS), which is available free at http://r4ds.had.co.nz/index.html

<p class="comment", style="font-style:normal">**Assignment 1 is due by 11:59 pm, October 5th on Canvas.**  See [here](https://crd150.github.io/hw_guidelines.html) for assignment guidelines.  You must submit an `.Rmd` file and its associated `.html` file. Name the files: yourLastName_firstInitial_asgnXX. For example: brazil_n_asgn01</p>

<div style="margin-bottom:25px;">
</div>
##**What is R?**
\

R is an environment for data analysis and graphics. R is an interpreted language, not a compiled one. This means that you type something into R and it does it.  It is both a command line software and a programming environment.  It is an extensible, open-source language and computing environment for Windows, Macintosh, UNIX, and Linux platforms, which  allows for the user to freely distribute, study, change, and improve the software.

<div style="margin-bottom:25px;">
</div>
##**What is RStudio?**
\

R offers a very basic user interface. RStudio gives you a true integrated development environment (IDE), where you can write code in a window, see results in other windows, see locations of files, see objects you've created, and so on. 

<div style="margin-bottom:25px;">
</div>
##**Downloading R and RStudio**
\

The lab computers should already be equipped with R and RStudio.  However, the benefit of R is that it is free, so you can download it onto your personal computers. You need to first download and install R

https://www.r-project.org/

And then downloand and install RStudio

https://www.rstudio.com/

To clarify which is which: R is the name of the programming language itself and RStudio is a convenient interface.

<div style="margin-bottom:25px;">
</div>
##**The RStudio Interface**
\

Open up RStudio.  You should see the interface shown in Figure 1 which has three windows.

<center>
![Figure 1: RStudio Interface.](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/rgui.png)

</center>

\

Now may be a good time to read through the class assignment guidelines as they detail what is an R Markdown file.  After you read through the guidelines, open up an R Markdown file.  You should now see four windows in RStudio.

* **Console** (lower-left) - allows you to run code interactively in R. This is where you type code in, press enter to execute the code, and see the results.
* **Editor** (upper-left) - where you write R Markdown files.
* **Environment, History, and Connections tabs** (upper-right)
    + **Environment** - shows all the R objects that are currently open in your workspace.  This is the place, for example, where you will see any data you've loaded into R. When you exit RStudio, R will clear all objects in this window.  
    + **History** - shows a list of executed commands in the current session.
    + **Connections** - you can connect to a variety of data sources, and explore the objects and data inside the connection.  I typically don't use this window, but you [can](https://support.rstudio.com/hc/en-us/articles/115010915687-Using-RStudio-Connections).    
* **Files, Plots, Packages, Help and Viewer tabs** (lower-right)
    + **Files** - shows all the files and folders in your current working directory.
    + **Plots** - shows any charts, graphs, maps and plots you've successfully executed.     
    + **Packages** - tells you all the R packages that you have access to (more on this later).
    + **Help** - shows help documentation for R commands that you've called up.  
    + **Viewer** - allows you to view local web content (won't be using this much).


<div style="margin-bottom:25px;">
</div>
##**R Data Types**
\

R is really just a big fancy calculator. For example, type in the following mathematical expression in the R console


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

"hello world" is a character and R recognizes characters only if there are quotes around it. This brings us to the topic of basic data types in R.  There are three basic data types in R: character, logical, and numeric (there are two others - complex and raw - but we won't cover them because they are rarely used). 

* **Character** - used to represent string values in R.  We saw this above with "hello world". Anything with quotes will be interpreted as a character.
* **Logical** - takes on three possible values: FALSE, TRUE, and NA.  The value NA indicates a missing value. Note that all data types use NA as an indicator of missingness. Logicals are usually constructed with comparison operators, which we'll go through more carefully in Lab 2 .
* **Numeric** - separated into two types: integer and double.  The distinction between integers and doubles is usually not important. R treats numerics as doubles by default because it is a less restrictive data type.  For example, in addition to NA, which indicates missingness, doubles have three other special values to handle problematic values after division.  R spits out `-Inf` and `Inf` when dividing a negative and positive value by 0, respectively, and `NaN` when dividing 0 by 0.


```r
-1/0
```

```
## [1] -Inf
```

```r
1/0
```

```
## [1] Inf
```

```r
0/0
```

```
## [1] NaN
```

<div style="margin-bottom:25px;">
</div>
##**R Data Structures**
\
You just learned that R has three basic data types. Now, let's go through how we can store data in R. You do this by using R's various data structures.

<div style="margin-bottom:25px;">
</div>
###**Vectors**
\

A vector is the most common and basic R data structure and is pretty much the workhorse of the language. A vector is simply a sequence of values which can be of any data type.  There are a number of ways to create a vector depending on the data type, but the most common is to insert the data you want to save in a vector into the command `c()`.  For example, represent the values 4, 16 and 9 in a vector


```r
c(4, 16, 9)
```

```
## [1]  4 16  9
```

You can also have a vector of character values


```r
c("luis", "anne", "ryan")
```

```
## [1] "luis" "anne" "ryan"
```

The above code does not actually "save" the values 4, 16, and 9 - it just presents it on the screen in a vector. If you want to use these values again without having to type out `c(4, 16, 9)`, you can save it in a data object. You assign data to an object using the arrow sign `<-`.  This will create an object in R's memory that can be called back into the command window at any time.  For example, you can save "hello world" to a vector called "b" by typing in


```r
b <- "hello world"
b
```

```
## [1] "hello world"
```

Similarly, you can save the numbers 4, 16 and 9 into a vector called "v1""


```r
v1 <- c(4, 16, 9)
v1
```

```
## [1]  4 16  9
```

You should see the objects b and v1 pop up in the Environment tab on the top right window of your RStudio interface.  Note that the name "v1" is nothing special here. You could have named the object x or crd150 or your pet's name (mine is didi).  You can't, however, name objects using special characters (e.g. !, @, $) or only numbers (although you can combine numbers and letters, but a number cannot be at the beginning e.g. 2d2).  For example, you'll get an error if you save the vector `c(4,16,9)` to an object with the following names


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


Every vector has two key properties: *type* and *length*.  The type propertey indicates the data type that the vector is holding. Use the command `typeof()` to determine the type 


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

<div style="margin-bottom:25px;">
</div>
###**Data Frames**
\

We learned that data values can be stored in data structures known as vectors.  The next step is to learn how to store vectors into an even higher level data structure.  The data frame can do this.   Data frames store vectors of the same length.  Create a vector called "v2"" storing the values 5, 12, and 25


```r
v2 <- c(5,12,25)
```

We can create a data frame using the command `data.frame()` storing the vectors v1 and v2 as columns


```r
data.frame(v1, v2)
```

```
##   v1 v2
## 1  4  5
## 2 16 12
## 3  9 25
```

Store this data frame in an object called "df1"


```r
df1<-data.frame(v1, v2)
```

We can't use `length()` on a data frame because it has more than one vector. Instead, it has *dimensions* - the number of rows and columns. You can find the number of rows and columns that a data frame has by using the command `dim()`


```r
dim(df1)
```

```
## [1] 3 2
```

Here, the data frame df1 has 3 rows and 2 columns. Data frames also have column names, which are characters.


```r
colnames(df1)
```

```
## [1] "v1" "v2"
```

In this case, the data frame used the vector names for the column names. We can change these names 


```r
colnames(df1) <- c("col1", "col2")
colnames(df1)
```

```
## [1] "col1" "col2"
```

We can extract columns from data frames by referring to their names using the $ sign or index values


```r
df1$col1
```

```
## [1]  4 16  9
```

```r
df1[,1]
```

```
## [1]  4 16  9
```

The last piece of code shows how you can extract data from data frames using brackets [ , ]. The value before the comma indicates the row, which you leave empty if you are not selecting by row, which we did above.  The value after the comma indicates the column, which you leave empty if you are not selecting by column


```r
df1[2,]
```

```
##   col1 col2
## 2   16   12
```

What is the value in the 2nd row and 1st column?


```r
df1[2,1]
```

```
## [1] 16
```

To remove an object, use the command `rm()`


```r
rm(df1)
```

The data frame object df1 should have dissapeared from the Environment tab.

We've been talking about the values in vectors and data frames rather abstractly.  In practice, values, vectors and data frames have specific meaning in the context of data analysis.  Let's make things concrete.  Take a look at this [website](https://ucr.fbi.gov/crime-in-the-u.s/2016/crime-in-the-u.s.-2016/tables/table-6/table-6-state-cuts/california.xls) showing crimes in California cities in 2016. Sacramento had 3,549 violent crime incidences.  This is a data value (numeric!).  The collection of violent crime counts for each city is a vector. A data frame may have California cities as rows and the population, violent crime, homicide, and so on as columns.  We can name each column according to what values in that column represent (e.g. totpop, violent, homicide, and so on).

<div style="margin-bottom:25px;">
</div>
###**Commands/Functions**
\

Let's take a step back and talk about commands (also known as functions).  You execute many of your tasks in R using commands.  We have already used a couple of commands above including `typeof` and `colnames`. Each function will have the following basic format

`functionName(arg1 = val1, arg2 = val2, and so on)`

For every function in R, you type in the function's name and set a number of options or parameters within parentheses that are separated by commas. Some options *need* to be set by the user - i.e. the function will spit out an error because a required option is blank - whereas others can be set but are not required because there is a default value established. 

Let’s try using `seq()` which makes regular sequences of numbers.  You can find out what the options are for a function by calling up its help documentation by typing ? and the function name


```r
? seq
```

The help documentation should have popped up in the bottom right window of your R user interface.  The documentation should also provide some examples of the function. Type the arguments `from = 1, to = 10` inside the parentheses


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

The above also demonstrates something about how R resolves function arguments. You can always specify in `name = value` form. But if you do not, R attempts to resolve by position. So above, it is assumed that we want a sequence `from = 1` that goes `to = 10`. Since we didn’t specify step size, the default value of by in the function definition is used, which ends up being 1 in this case. 

Each argument requires a certain type of data type.  For example, you'll get an error when you use a character in `seq()`


```r
seq("p", "w")
```

```
## Warning in seq.default("p", "w"): NAs introduced by coercion
```

```
## Error in seq.default("p", "w"): 'from' must be a finite number
```

<div style="margin-bottom:25px;">
</div>
###**R Packages**
\

Functions do not exist in a vacuum.  They are part of R packages.  R is an open-source programming language, meaning that users can contribute packages that make our lives easier, and we can use them for free. At the top left of a function's help documentation, you'll find in curly brackets the package that the function is housed in.  For example, `seq()` is in the package **base**. In order to use functions in a package, you first need to install the package using the `install.packages()` command. For example, we will be using commands from the package `tidyverse` in this lab 


```r
install.packages("tidyverse", repos = "http://cran.us.r-project.org")
```

Next, you will need to load packages in your working environment (every time you start RStudio). We do this with the `library()` function.


```r
library(tidyverse)
```

Note that you only need to install packages once (although you'll need to install packages every time when using the lab computers because they wipe everything when you restart), but you need to load them each time you relaunch RStudio.  Also note that R has several packages already preloaded into your working environment.  These are known as base packages and a list of their functions can be found [here](https://stat.ethz.ch/R-manual/R-devel/library/base/html/00Index.html).

<div style="margin-bottom:25px;">
</div>
###**Tibbles**
\

Let's take a step back and assess where we are in our journey into R land.  We learned that there are three basic data types in R.  We learned that we can store data values in vectors. We can then store vectors into data frames. And we run many tasks in R using commands/functions, which are created and stored in packages, which we need to install and load.  For a long time, this was how R users worked with their data.  Recently, a new framework for organizing data in R has emerged.  This revolution is known as *tidy*, and you can read more about its principles in Chapter 9, pages 147-151 in RDS.  

An integral component of the tidyverse are tibbles.  Tibbles are data frames, but they tweak some older behaviors to make life a little easier. There are two main differences in the usage of a data frame vs a tibble: printing and subsetting. Let's be clear here - tibbles are just a special kind of data frame. They just makes things a little "tidier."

Let's bring in some actual data to illustrate the differences and similarities between data frames and tibbles.  Install the package **nycflights13**.  Make sure you also load the package.


```r
#install.packages("nycflights13",repos = "http://cran.us.r-project.org")
library(nycflights13)
```

There is a dataset called `flights` included in this package.  It includes information on all 336,776 flights that departed from New York City in 2013.  Let's save this file in the local R environment


```r
nyctib <- flights
```

This dataset is a tibble. Let's also save it as a data frame by using the `as.data.frame()` function


```r
nycdf <- as.data.frame(flights)
```

The first difference between data frames and tibbles is how the dataset "looks."  Tibbles have a refined print method that shows only the first 10 rows, and only the columns that fit on the screen.  In addition, each column reports its name and type.


```r
nyctib
```

```
## # A tibble: 336,776 x 19
##     year month   day dep_time sched_dep_time dep_delay arr_time
##    <int> <int> <int>    <int>          <int>     <dbl>    <int>
##  1  2013     1     1      517            515        2.      830
##  2  2013     1     1      533            529        4.      850
##  3  2013     1     1      542            540        2.      923
##  4  2013     1     1      544            545       -1.     1004
##  5  2013     1     1      554            600       -6.      812
##  6  2013     1     1      554            558       -4.      740
##  7  2013     1     1      555            600       -5.      913
##  8  2013     1     1      557            600       -3.      709
##  9  2013     1     1      557            600       -3.      838
## 10  2013     1     1      558            600       -2.      753
## # ... with 336,766 more rows, and 12 more variables: sched_arr_time <int>,
## #   arr_delay <dbl>, carrier <chr>, flight <int>, tailnum <chr>,
## #   origin <chr>, dest <chr>, air_time <dbl>, distance <dbl>, hour <dbl>,
## #   minute <dbl>, time_hour <dttm>
```

Tibbles are designed so that you don't accidentally overwhelm your console when you print large data frames.  Compare the print output above to what you get with a data frame


```r
nycdf
```

Ugly, right? You can shorten the print output on data frames by using the `head()` command, but the output is still not as "tidy" as a tibble


```r
head(nycdf)
```

```
##   year month day dep_time sched_dep_time dep_delay arr_time sched_arr_time
## 1 2013     1   1      517            515         2      830            819
## 2 2013     1   1      533            529         4      850            830
## 3 2013     1   1      542            540         2      923            850
## 4 2013     1   1      544            545        -1     1004           1022
## 5 2013     1   1      554            600        -6      812            837
## 6 2013     1   1      554            558        -4      740            728
##   arr_delay carrier flight tailnum origin dest air_time distance hour
## 1        11      UA   1545  N14228    EWR  IAH      227     1400    5
## 2        20      UA   1714  N24211    LGA  IAH      227     1416    5
## 3        33      AA   1141  N619AA    JFK  MIA      160     1089    5
## 4       -18      B6    725  N804JB    JFK  BQN      183     1576    5
## 5       -25      DL    461  N668DN    LGA  ATL      116      762    6
## 6        12      UA   1696  N39463    EWR  ORD      150      719    5
##   minute           time_hour
## 1     15 2013-01-01 05:00:00
## 2     29 2013-01-01 05:00:00
## 3     40 2013-01-01 05:00:00
## 4     45 2013-01-01 05:00:00
## 5      0 2013-01-01 06:00:00
## 6     58 2013-01-01 05:00:00
```

You can also use `head()` on tibbles, but it isnt necessary since tibbles automatically shorten the output.

You can identify the names of the columns (and hence the variables in the dataset) by using the command `names()`


```r
names(nyctib)
```

```
##  [1] "year"           "month"          "day"            "dep_time"      
##  [5] "sched_dep_time" "dep_delay"      "arr_time"       "sched_arr_time"
##  [9] "arr_delay"      "carrier"        "flight"         "tailnum"       
## [13] "origin"         "dest"           "air_time"       "distance"      
## [17] "hour"           "minute"         "time_hour"
```

Not all functions work with tibbles, particularly those that are specific to spatial data. As such, we'll be using a combination of tibbles and regular data frames throughout the class, with a preference towards tibbles where possible.

<div style="margin-bottom:25px;">
</div>
##**Other resources**
\

Although the guides we will provide and the RDS textbook should get you through a lot of the functions needed to succesfully accomplish tasks for this class, there are a number of useful online resources on R and RStudio that you can look into if you get stuck or want to learn more.  

- [RStudio IDE cheatsheet](https://github.com/rstudio/cheatsheets/raw/master/rstudio-ide.pdf)
- [Data wrangling cheatsheet](https://github.com/rstudio/cheatsheets/raw/master/data-transformation.pdf)
- [Stackoverflow](https://stackoverflow.com/questions/tagged/r)

<div style="margin-bottom:25px;">
</div>
##**Assignment 1**

**Submit the commands shown in this guide in an R Markdown document**.  Also in this document, answer the following questions.

1. How much programming experience do you have? Select one: (a) Never programmed before, (b) Some experience, (c)Extensive experience.
2. How would you rate your familiarity with the R programming language? Select one: (a) Never used, (b) Installed on machine but don't really use, (c) Basic competence, (d) R Wizard.
3. Which of the following statistics concepts have you covered in previous classes? Select all that apply: means and medians, standard deviations, statistical hypothesis testing, t-tests, analysis of variance, linear regression, pvalues, geographic information systems, spatial autocorrelation.
4. What are you hoping to get out of this class?
5. In this class we will be studying cities.  Identify one U.S. city you would like to learn more about and *briefly* explain why.



***

Website created and maintained by [Noli Brazil](https://nbrazil.faculty.ucdavis.edu/)
