---
title: 'Lab 2: Working with the United States Census'
subtitle: <h4 style="font-style:normal">CRD 150 - Quantitative Methods in Community Research</h4>
author: <h4 style="font-style:normal">Professor Noli Brazil</h4>
date: <h4 style="font-style:normal">October 5, 2018</h4>
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

.figure {
   margin-top: 20px;
   margin-bottom: 20px;
}

h1.title {
  font-weight: bold;
}

</style>
\




In this guide you will learn how to download, clean, manage and present United States Census data using R. The goal, however, is not to just gain exposure to Census data, but to also acquire skills in data acquisition, management and presentation.  You will be working with data on U.S. counties to create a summary table of county characteristics. The objectives of the guide are as follows

1. Download Census data using their API
2. Read data into R
3. Learn data wrangling functions
4. Create a presentation ready table of Census data

This lab guide follows closely and supplements the material presented in Chapters 3, 8-10, and 14 in the textbook [R for Data Science](http://r4ds.had.co.nz/index.html) (RDS).

<p class="comment", style="font-style:normal">**Assignment 2 is due by 12:00 am, October 12th on Canvas.**   See [here](https://crd150.github.io/hw_guidelines.html) for assignment guidelines. You must submit an `.Rmd` file and its associated `.html` file. Name the files: yourLastName_firstInitial_asgn02. For example: brazil_n_asgn02.</p>    

<div style="margin-bottom:25px;">
</div>
## **Open up a new R Markdown file**
\

It is good practice to save all your code in R Markdown files.  Rather than copying and pasting code from the lab guides onto the R Console, paste it onto an R Markdown file and then run the code from there.  It will give you practice in terms of saving code into a script you can use in the future.  Plus, the code is in **your** document, so you can add explanatory text or supplement the guide's code with your own code.  

To open a new R Markdown file, click on *File* at the top menu in RStudio, select *New File*, and then *R Markdown*. A window should pop up. In that window, for *Title*, put in "Lab 2".  For *Author*, put your name. Leave the HTML radio button clicked, and select OK.  A new R Markdown file should pop up in the top left window.  Don't change anything inside the YAML (the stuff at the top in between the `---`).  Also keep the grey chunk after the YAML.

````
```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```
````

Delete everything else. Save this file (File -> Save) in an appropriate folder.  If you are using your laptop for this guide, it's best to set up a clean and efficient file management structure like we described in lecture.  For example, below is where I would save this file in my Mac laptop (I named the file "Lab2").  Save all other files used in this lab in this same folder. Now your R Markdown file is ready for Lab!  

<center>
![This is what file organization looks like](/Users/noli/Documents/UCD/teaching/CRD150/Lab/Lab2/filestructure.png)

<div style="margin-bottom:25px;">
</div>
## **Downloading Census Data**
\

One of the first steps in the Data Wrangling process is to acquire and read in data. There are two ways to bring Census data into R. 

<div style="margin-bottom:25px;">
</div>
### **Using the Census API**
\

The first way is to bring it directly into R using the [Census Application Program Interface  (API)](https://www.census.gov/data/developers/guidance/api-user-guide.What_is_the_API.html). An API allows for direct requests for data in machine-readable form.  That is, rather than you having to navigate to some website, scroll around to find a dataset, download that dataset once you find it, save that data onto your hard drive, and then bring the data into R, you just tell R to retrieve data directly from that website using one or two lines of code.  In order to download from the Census API, you will need to load in the **tidyverse** package, which we covered in [Lab 1](https://crd150.github.io/lab1.html).  You will also need to install and load in the **tidycensus** package using the `install.packages()` and `library()` functions.  


```r
install.packages("tidycensus")
library(tidyverse)
library(tidycensus)
```



In order to directly download data from the Census API, you need a key.  You can sign up for a free key [here](http://api.census.gov/data/key_signup.html), which you should have already done before the lab. Type your key in quotes using the `census_api_key()` command





```r
census_api_key("YOUR API KEY GOES HERE")
```

The function for downloading American Community Survey (ACS) Census data is `get_acs()`. The command for downloading decennial Census data is `get_decennial()`.  Getting variables using the Census API requires knowing the variable ID - and there are thousands of variables (and thus thousands of IDs) across the different Census files. To rapidly search for variables, use the commands `load_variables()` and `View()`. Because we'll be using the ACS in this guide, let's check the variables in the most recent 5-year ACS (2012-2016)


```r
v16 <- load_variables(2016, "acs5", cache = TRUE)
View(v16)
```

A window in the top left of your RStudio interface should have popped up showing you a record layout of the 2012-16 ACS.  To search for specific data, select "Filter"" located at the top left of this window and use the search boxes that pop up.  For example, type in "Hispanic" in the box under "Label".  You should see at the top of the list the first set of variables we'll want to download - race/ethnicity.  Let's extract that data and total population for California counties using the `get_acs()` command


```r
ca <- get_acs(geography = "county", 
              year = 2016,
              variables = c(tpopr = "B03002_001", 
                            nhwhite = "B03002_003", nhblk = "B03002_004", 
                            nhasn = "B03002_006", hisp = "B03002_012"), 
              state = "CA",
              survey = "acs5")
```

In the above code, we specified the following arguments

* The level of `geography` as county.  Other geographic options can be found [here](https://walkerke.github.io/tidycensus/articles/basic-usage.html#geography-in-tidycensus). 
* The end `year` of the data (because we want 2012-2016, we use 2016).
* The `variables` we want to bring in as specified in a vector you create using the function `c()`. Note that we created variable names of our own (e.g. "nhwhite") and we put the ACS IDs in quotes. ("B03002_003"). Had we not done this, the variable names will come in as they are named in the ACS, which is not all that descriptive.
* The `state` as "CA" - if we don't specify this, we get all counties in the United States.
* The `survey` as "acs5" - remember that the ACS comes in 1-, 3-, and 5-year varieties.  

Type in `? get_acs()` to see the full list of options. If you type in *ca* in your console, you should see a tibble pop up with the variables we selected. Cool, right?


```r
ca
```

```
## # A tibble: 290 x 5
##    GEOID NAME                       variable estimate   moe
##    <chr> <chr>                      <chr>       <dbl> <dbl>
##  1 06001 Alameda County, California tpopr    1605217.   NA 
##  2 06001 Alameda County, California nhwhite   523797.  541.
##  3 06001 Alameda County, California nhblk     176819. 1344.
##  4 06001 Alameda County, California nhasn     449676. 1640.
##  5 06001 Alameda County, California hisp      362070.   NA 
##  6 06003 Alpine County, California  tpopr       1184.  191.
##  7 06003 Alpine County, California  nhwhite      804.  164.
##  8 06003 Alpine County, California  nhblk         10.   15.
##  9 06003 Alpine County, California  nhasn          9.   13.
## 10 06003 Alpine County, California  hisp          92.   54.
## # ... with 280 more rows
```

<div style="margin-bottom:25px;">
</div>
### **Downloading from an online source**
\

The other way to get Census data is to download them directly from the web.  There are several websites where you can download Census data including [Social Explorer](https://www.socialexplorer.com/), which as UC Davis affiliates we have free access to, and [Fact Finder](https://factfinder.census.gov/faces/nav/jsf/pages/index.xhtml), which is free for everyone.  The site we used in lecture is the [National Historical Geographic Information System (NHGIS)](https://www.nhgis.org/).  You may choose to use NHGIS (or any of the other sources listed above) over the API because it is more user friendly in terms of selecting variables.  We went through the NHGIS data downloading process during lecture.  If you need a refresher on the process, I've uploaded a brief step-by-step tutorial [here](http://crd150.github.io/nhgis.html).

To save us time, I've uploaded an NHGIS csv file on GitHub for you to use in this lab. Download the file from [here](https://raw.githubusercontent.com/crd150/data/master/nhgis0086_ds225_20165_2016_county.csv) and save it into the same folder where your Lab 2 R Markdown file resides.  The record layout/codebook for the file can be found [here](https://raw.githubusercontent.com/crd150/data/master/nhgis0086_ds225_20165_2016_county_codebook.txt).  

<div style="margin-bottom:25px;">
</div>
## **Reading in data**
\

Most of the data files you will encounter are comma-delimited (or comma-separated) files, which have `.csv` extensions.  Comma-delimted means that columns are separated by commas.  The file from NHGIS is a `.csv` file.  To import this file in R, use the `read_csv()` command, which is found in the **tidyverse** package. 



To read in the csv file you downloaded from NHGIS, first make sure that R is pointed to the folder you saved your data into.  Type in `getwd()` to find out the current directory and `setwd("directory name")` to set the directory to the folder containing the data.  For me, the NHGIS file is located in the folder shown in Figure 1.

<center>
![Figure 1: Direct R to where your data reside.](/Users/noli/Documents/UCD/teaching/CRD150/Lab/Lab2/setwd.png)

</center>

I type in the following command to set the directory to the folder containing my data on my Mac laptop


```r
setwd("/Users/noli/Desktop/Classes/CRD150/Lab 2")
```

Note that on a Windows system, the file pathway may be indicated with a back slash `\`.  R doesnt like that because it thinks of a single backslash as an escape character.  Use instead two back slahses `\\` or a forward slash `/`.  Use `read_csv()` and plug in the name of the file in quotes inside parentheses  


```r
nhgisfile1 <- read_csv("nhgis0083_ds225_20165_2016_county.csv")
```



<div style="margin-bottom:25px;">
</div>
## **Data Wrangling** 
\

It is rare that the data set you download is in exactly the right form for data analysis.  For example, you might want to analyze just Northern California counties. Or you might want to discard certain variables from the dataset to reduce clutter. Or you encounter missing data. 

In this lab, we won't have time to go through all of the methods and functions in R that are associated with the data wrangling process. We will cover more in later labs and many methods you will have to learn on your own given the specific tasks you will need to accomplish.  In the rest of this guide, we'll go through some of the basic data wrangling techniques using the functions found in the package **dplyr**, which was automatically installed and loaded when you brought in the **tidyverse** package.  These functions can be used for tibbles and regular data frames.

<div style="margin-bottom:25px;">
</div>
### **Selecting and renaming variables**
\

In practice, most of the data files you will download will contain variables you don't need. It is easier to work with a smaller dataset as it reduces clutter and clears up memory space, which is important if you are executing complex tasks on a large number of observations.  Use the command `select()` to keep variables by name.  Visually, we are doing this (taken from the RStudio [cheatsheet](http://www.rstudio.com/wp-content/uploads/2015/02/data-wrangling-cheatsheet.pdf))  

<center>
![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/Lab2/subsetcols.png)

</center>


To see the names of variables in your dataset, use the `names()` command.  


```r
names(ca)
```

```
## [1] "GEOID"    "NAME"     "variable" "estimate" "moe"
```

Let's keep *GEOID*, *NAME*, *variable*, and *estimate* from the *ca* dataset.


```r
select(ca, GEOID, NAME, variable, estimate)
```

```
## # A tibble: 290 x 4
##    GEOID NAME                       variable estimate
##    <chr> <chr>                      <chr>       <dbl>
##  1 06001 Alameda County, California tpopr    1605217.
##  2 06001 Alameda County, California nhwhite   523797.
##  3 06001 Alameda County, California nhblk     176819.
##  4 06001 Alameda County, California nhasn     449676.
##  5 06001 Alameda County, California hisp      362070.
##  6 06003 Alpine County, California  tpopr       1184.
##  7 06003 Alpine County, California  nhwhite      804.
##  8 06003 Alpine County, California  nhblk         10.
##  9 06003 Alpine County, California  nhasn          9.
## 10 06003 Alpine County, California  hisp          92.
## # ... with 280 more rows
```

A shortcut way of doing this is to use the `:` operator.  


```r
select(ca, GEOID:estimate)
```

```
## # A tibble: 290 x 4
##    GEOID NAME                       variable estimate
##    <chr> <chr>                      <chr>       <dbl>
##  1 06001 Alameda County, California tpopr    1605217.
##  2 06001 Alameda County, California nhwhite   523797.
##  3 06001 Alameda County, California nhblk     176819.
##  4 06001 Alameda County, California nhasn     449676.
##  5 06001 Alameda County, California hisp      362070.
##  6 06003 Alpine County, California  tpopr       1184.
##  7 06003 Alpine County, California  nhwhite      804.
##  8 06003 Alpine County, California  nhblk         10.
##  9 06003 Alpine County, California  nhasn          9.
## 10 06003 Alpine County, California  hisp          92.
## # ... with 280 more rows
```

The `:` operator tells R to select all the variables from *GEOID* to *estimate*.  This operator is useful when you've got a lot of variables to keep and they all happen to be ordered sequentially.

You can use the `select()` command to keep variables *except* for the ones you designate.  For example, to keep all variables in *ca* except *moe* and save this into a new tibble called *ca1*, type in


```r
ca1 <- select(ca, -(moe))
```

The negative sign tells R to exclude the variable named within the parentheses. 

You will likely encounter a variable with a name that is not so descriptive.  Use the command `rename()` to, what else, rename a variable!  Let's rename *NAME* to *County* in the *ca* dataset.  Make this permanent by assigning it back to *ca1* using the arrow operator `<-`


```r
ca1 <- rename(ca1, County = NAME)
names(ca1)
```

```
## [1] "GEOID"    "County"   "variable" "estimate"
```

Note that you can rename multiple variables within the same `rename()` command.  

<div style="margin-bottom:25px;">
</div>
### **Creating new variables**
\

The `mutate()` function allows you to create new variables within your dataset.  This is important when you need to transform variables in some way - for example, calculating a ratio or adding two variables together.  Visually, you are doing this

<center>
![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/Lab2/mutate.png)

</center>

You can use the `mutate()` command to generate as many new variables as you would like.  For example, let's construct two new variables in *nhgisfile1* - the percent of the 15+ year olds that are currently married and the percent of 25+ year olds with a bachelors degree or higher. Name these variables *pmar* and *pcol*, respectively.


```r
mutate(nhgisfile1, pmar = (AF4AE004+AF4AE013)/AF4AE001,
                    pcol = (AF4OE022+AF4OE023+AF4OE024+AF4OE025)/AF4OE001)
```

Note that you can create new variables based on the variables you just created in the same line of code. For example, you can calculate the difference between the percent college degree and percent only high school degree after creating both variables within the same `mutate()` command.


```r
mutate(nhgisfile1, pcol = (AF4OE022+AF4OE023+AF4OE024+AF4OE025)/AF4OE001,
                   phs = (AF4OM017+AF4OM018+AF4OM019+AF4OM020+AF4OM021)/AF4OE001,
                   pdiff = pcol - phs)
```

Once again, we need to save our changes by assigning our mutated dataset back to *nhgisfile1*.  


```r
nhgisfile1 <- mutate(nhgisfile1, pmar = (AF4AE004+AF4AE013)/AF4AE001,
                    pcol = (AF4OE022+AF4OE023+AF4OE024+AF4OE025)/AF4OE001)
```

<div style="margin-bottom:25px;">
</div>                            
### **Tidy up**
\

Tidying up a dataset means following the rules outlined on page 149 of RDS: (1) Each variable must have its own column, (2) each observation must have its own row, and (3) each value must have its own cell. The dataset *nhgisfile1* looks "tidy", but the dataset *ca1* is not.  Why?

We'll need to "spread" the dataset. This will convert the dataset from long to wide.  Use the function `spread()` and save the tidy dataset back into *ca1*. 


```r
ca1 <- spread(ca1, key = variable, value = estimate)
ca1
```

```
## # A tibble: 58 x 7
##    GEOID County                        hisp   nhasn  nhblk nhwhite   tpopr
##    <chr> <chr>                        <dbl>   <dbl>  <dbl>   <dbl>   <dbl>
##  1 06001 Alameda County, California 362070. 449676. 1.77e5 523797.  1.61e6
##  2 06003 Alpine County, California      92.      9. 1.00e1    804.  1.18e3
##  3 06005 Amador County, California    4822.    521. 8.60e2  29436.  3.70e4
##  4 06007 Butte County, California    34503.   9497. 3.28e3 164398.  2.24e5
##  5 06009 Calaveras County, Califor…   5028.    448. 2.56e2  36857.  4.48e4
##  6 06011 Colusa County, California   12351.    346. 2.12e2   7881.  2.14e4
##  7 06013 Contra Costa County, Cali… 277676. 169695. 9.38e4 504792.  1.11e6
##  8 06015 Del Norte County, Califor…   5326.    650. 6.32e2  17427.  2.76e4
##  9 06017 El Dorado County, Califor…  22868.   7542. 1.58e3 144069.  1.83e5
## 10 06019 Fresno County, California  501136.  93878. 4.55e4 296265.  9.63e5
## # ... with 48 more rows
```

Compare *ca1* and *ca*.  *ca* is a county by variable level dataset whereas *ca* is a county level dataset.

By tidying up the dataset, we can compute percent non-Hispanic white, non-Hispanic Asian, non-Hispanic black, and Hispanic using the `mutate()` command. 


```r
ca1 <- mutate(ca1, pnhwhite = nhwhite/tpopr, pnhasn = nhasn/tpopr, 
              pnhblk = nhblk/tpopr, phisp = hisp/tpopr)
```
    
<div style="margin-bottom:25px;">
</div>
### **Merging files**
\

Now we can join the two datasets *nhgisfile1* and *ca1* together.  Remember from lecture that the unique Census ID for a county combines the county ID with the state ID.  We have this ID as the single variable GEOID in *ca1*, but separated as *STATEA* and *COUNTYA* in nhgisfile1.  See Figure 2.

<center>
![Figure 2: Geographic IDs](/Users/noli/Documents/UCD/teaching/CRD150/Lab/Lab2/fig2.png)

</center>


We can merge the two files by either merging on a single variable or on the two separate variables.  We just need to make sure it is consistent across the two datasets.  Let's combine *STATEA* and *COUNTYA* into a single variable so it will match *GEOID*.  To do this, use the command `str_c()` in the `mutate()` command.  This function concatenates (joins together) two or more character variables.


```r
nhgisfile1 <- mutate(nhgisfile1, GEOID = str_c(STATEA, COUNTYA))
```

To merge the two datasets together, we'll use the function `left_join()`, which matches pairs of observations whenever their keys are equal. We match on the variable *GEOID* and save the merged data set into a new object called *cacounty*.


```r
cacounty <- left_join(ca1, nhgisfile1, by = "GEOID")
```

The resulting join merges the variables from *nhgisfile1* into *ca1*. As such, *cacounty* should only contain California counties.  You can check by examining the dimensions of *ca1* and *cacounty* - the number of rows should be equal.


```r
dim(cacounty)
```

```
## [1]  58 139
```

```r
dim(ca1)
```

```
## [1] 58 11
```

There are other types of joins, which you can read more about in Chapter 10 of RDS.

Let's keep a dataset containing race/ethnicity and percent college graduates for all 58 counties in California.  You'll be using this data set in Assignment 2.


```r
cacounty <- select(cacounty, County, GEOID, pcol, pnhwhite:phisp)
```


<div style="margin-bottom:25px;">
</div>
### **Pipes**
\

One of the important innovations from the tidy verse is the pipe operator `%>%`.  You use the pipe operator when you want to combine mutiple operations into one line of code.  For example, in the section **Selecting and renaming variables**, we had two lines of code that (1) eliminate the variable *moe* and (2) rename the variable *NAME* to *County*.  A pipe allows us to do this in one line of code


```r
ca2 <- ca %>% 
      select(-(moe)) %>% 
      rename(County = NAME) 
```

Let's break down what the pipe is doing here.  First, you start out with your dataset *ca*.  You "pipe" that into the command `select()`.  Notice that you didn't have to type in *ca* inside that command - `%>%` pipes that in for you.  `select()` deletes *moe* and then pipes this result into the command `rename()`, which renames *NAME* into *County*.  Finally, the code saves the result into *ca2* which we designated at the beginning with the arrow operator.  

The pipe operator is very useful for complex operations, which you will encounter in the coming weeks.  From now on, we'll be using the pipe operator to make our code more efficient.

<div style="margin-bottom:25px;">
</div>
### **Subsetting/Filtering**
\

Subsetting or filtering means selecting rows/obsevervations based on their values.  To subset in R, use the command `filter()`.  Visually, subsetting rows looks like.

<center>
![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/Lab2/subsetrows.png)

</center>

The first argument in the parentheses of this command is the name of the data frame. The second and any subsequent arguments (separated by commas) are the expressions that filter the data frame. For example, we can select Sacramento county using its [FIPS code](https://www.nrcs.usda.gov/wps/portal/nrcs/detail/ca/home/?cid=nrcs143_013697)


```r
filter(cacounty, GEOID == "06067")
```

The double equal operator `==` means equal to.  We can also explicitly exclude cases and keep everything else by using the not equal operator `!=`.  The following code *excludes* Sacramento county


```r
filter(cacounty, GEOID != "06067")
```


What about filtering if a county has a value greater than a specified value?  For example, counties with a percent Hispanic greater than 0.5 (50%). 


```r
filter(cacounty, phisp > 0.50)
```

What about less than 0.5 (50%)?


```r
filter(cacounty, phisp < 0.50)
```

Both lines of code do not include counties that have a percent Hispanic equal to 0.5.  We include it by using the less than or equal operator `<=` or greater than or equal operator `>=`.


```r
filter(cacounty, phisp <= 0.5)
```

In addition to comparison operators, subsetting may also utilize logical operators that make multiple selections.  There are three basic logical operators: `&` (and), `|` is (or), and `!` is (not).  We can keep counties with *phisp* greater than 0.5 **and** *pcol* greater than 15% using `&`


```r
filter(cacounty, phisp > 0.5 & pcol > 0.15)
```

Use `|` to keep counties with a *GEOID* of "06067" (Sacramento) **or** "06113" (Yolo) 


```r
filter(cacounty, GEOID == "06067" | GEOID == "06113")
```


<div style="margin-bottom:25px;">
</div>
## **Assignment 2**
\

Download and open the [Assignment 2 R Markdown Script](). Any response requiring a data analysis task  must be supported by code you generate to produce your result. (Just examining your various objects in the “Environment” section of R Studio is insufficient—you must use scripted commands.). 

1. Identify the type (numeric or categorical) and subtype (nominal, ordinal, etc.) that each of the following variables represent. (5 points).
a. The number of vacant housing units 
b. Percent of persons 25 years and older with a college degree
c. Crimes per population
d. [Census region](https://www.census.gov/geo/reference/gtc/gtc_census_divreg.html) 
e. A variable with the following values

    + Low income tract, low percent black
    + Low income tract, moderate percent black
    + Low income tract, high percent black 
    + Middle income tract, low percent black
    + Middle income tract, moderate percent black
    + Middle income tract, high percent black 
    + High income tract, low percent black
    + High income tract, moderate percent black
    + High income tract, high percent black 

2. How many years of median income will it take to buy a home in California? And how did the Great Recession affect this measure of housing affordability? Let's answer these questions by examining [house-price-to-income ratios](https://www.citylab.com/equity/2018/05/where-the-house-price-to-income-ratio-is-most-out-of-whack/561404/) in California counties pre and post recession.  Do the following data wrangling tasks.  Submit all the code you used to accomplish these tasks.  Where possible, use the pipe operator `%>%`. (5 points)
a. Using either the Census API or NHGIS, bring into R the following county-level variables from the 2005-2009 and 2012-2016 American Community Surveys (ACS): median housing value (variable ID "B25077_100") and median household income (variable ID "B19013_100"). 
b. Calculate the ratio of median housing value to median household income for each years of data.
c. Merge the files into the *cacounty* dataset from the lab guide.
d. Calculate the change in the housing value-to-income ratio from 2005-09 to 2012-16.
f. Keep the following variables: County, GEOID, the housing value-to-income ratio in 2005-09, 2012-16, and the change during this period, pnhwhite, phasn, pnhblk, and phisp.


3. From the dataset you created in Question 2, answer the following questions. 
a. How many years will it take for a household to pay off a house in Yolo County in 2012-16? What about before the recession?  Don't just print the entire data frame to answer these questions - use R code to help you find Yolo in your dataset. (2 points)
b. Which county has the largest housing value-to-income ratio pre recession (2005-09)? Smallest? Which counties had the largest and smallest post recession (2012-16)? Which county experienced the greatest decrease? Which counties experienced an increase? See the function `arrange()` to answer these questions. (5 points)

4. Subset the dataset you saved in Question 2 to keep only two sets of counties: Bay Area counties (Alameda, Contra Costa, Marin, Napa, San Francisco, San Mateo, Santa Clara, Solano, and Sonoma) and counties in Southern California (Imperial, San Diego, Riverside, Orange, Los Angeles, San Bernardino, Ventura, Santa Barbara).  Check [here](https://www.nrcs.usda.gov/wps/portal/nrcs/detail/ca/home/?cid=nrcs143_013697) to find their FIPS codes. Use the `write_csv()` command to save this pared down dataset as a `.csv`.  From this file, create a presentation ready table using the standards we outlined in lecture and in Hoffman Ch. 8-9.  The final table should show racial composition and housing-value-to-income ratios (and their change) for each Bay Area and Southern California county.  Copy and paste this table into a Microsoft Word document and submit this document along with your Rmd and html files. (5 points)



***


Website created and maintained by [Noli Brazil](https://nbrazil.faculty.ucdavis.edu/)