---
title: "R Tips and Fixes"
subtitle: <h4 style="font-style:normal">CRD 150 - Quantitative Methods in Community Research</h4>
author: <h4 style="font-style:normal">Professor Noli Brazil</h4>
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



Pulling your hair out because you're getting an error in R that you can't figure out? Are you banging your head on the table because you can't knit? Are you throwing darts at my picture because I haven't given you enough direction on how to code a task in R properly? This page provides some tips and fixes for dealing with some common problems in R and R Markdown.

Note that we've already provided a detailed list of common R Markdown issues in the [assignment guidelines](https://crd150.github.io/hw_guidelines.html).  We will repeat some of that here, but add a few more tips and fixes, including those for general R coding.

<div style="margin-bottom:25px;">
</div>
## **R help**
\

* **Check for typos.** One of the most common causes of errors are typos, which usually throw an error such as `Error in _____ : could not find function “_____”` due to a function being misspelled.  What kinds of typos are the most common?
  - Misspellings
  - Capitalization: You typed an uppercase letter when you should have typed a lowercase letter (vice versa).
  - Closing punctuation: You forgot a closing parentheses, bracket, or quotation. All too often have I forgotten to add an additional parenthesis at the end of a line. You’ll know that you’ve done this if you see a red X on the left side of your R Markdown document. The red X will appear as you are typing, so wait until you’re finished to assess these warnings.
  - You forgot to add a comma (,), pipe (`%>%`), plus sign (`+`) or comma (`,`).

<br>

* **Did you create the object?**  If you get an error that reads `Error: object '____' not found`, this means that you did not create this object.  Maybe you have a spelling error.  Maybe you just simply did not create it. Look at your Environment window - do you see the object there? Remember, if you are knitting, the code that creates the object should be in the R Markdown file.

* **Check loaded packages.** You also get errors like `Error in data %>% summary() : could not find function “%>%”` when you failed to load a package. 

* **Functions sharing similar names**.  Yes, this exists.  There are two or more packages with the same exact function name.  An example of this is the function `select()` which is in the **dplyr** and **MASS** packages.  When you have both packages loaded, you will need to specify the package you want to use for that shared function name every time you use that function.  For example, `dply::select()`.

* **Missing an argument.** Some functions require you to specify an input for an argument.  For example, type in `cut()` in your console, and you'll get the error `Error in cut.default() : argument "x" is missing, with no default`.  Here, you need to specify an input for the argument `x =`.

* **Incorrect data type.** Some functions require a certain data type (or class) as an input.  For example, `seq("d", "e")` will spit out the error `Error in seq.default("d", "e") : 'from' must be a finite number` because `seq()` only takes in numeric data.

* **Problems with a installing a package.** Sometimes you will get an error installing a package. It might be a server issue so run `install.packages()` again. You might get an error stating that another package is not installed. If the package you are trying to install is dependent on another package also being installed, usually the dependent packages will also be installed automatically. However, you might try installing the dependent packages separately first.

* **Problems with a package loading.** Sometimes, for inexplicable reasons, a package will uninstall spontaneously. Perhaps it’s because the package needs to be updated (newer versions have come out). Perhaps the R goblin stole it. Try loading the package with `library()` again. If the error message states that the package doesn’t exist, manually install the package with `install.packages()`.

* **Reading in data**. You might get "cannot open" errors when trying to bring in data into R. Make sure you are pointing R to the right folder (check using `getwd()` and set the appropriate folder using `setwd()`).  Make sure the file you are trying to bring in actually exists in that folder. Make sure you have the correct file name *and* extension.

* All things fail, close and reopen RStudio and try again.

<br>

Read the error message. Don’t ignore what R is telling you. Be aware that red text that appears in your console is not always an indication of an error. Sometimes it’s just a warning.




<div style="margin-bottom:25px;">
</div>
## **R Markdown help**
\

The [assignment guidelines](https://crd150.github.io/hw_guidelines.html) goes through troubleshooting in R Markdown pretty thoroughly, but here are a few more tips to keep in mind.

* Only functioning R code should be in the grey R code blocks. 

* Only working R code may go inside an R code block. So in these blocks you can’t have:
  - Non-functioning R code
  - Your written answers 
  - Lines of R code that start with a “>” or a “+” sign

<br>

* `View()` doesn’t work in R Markdown. Remove any `View()` calls

* Existence of variables and data sets. Just because a variable exists in your console doesn’t mean it exists in your .Rmd file environment.  You have to copy over any code that creates/defines variables into your .Rmd file.  

*  Error messages. Although error messages may appear cryptic, they can sometimes at least tell you where the error is. Look for the Quitting from lines part of the error message and see if you can narrow down which line the error is on.

* Filename of .Rmd File. Ensure that the filename of your .Rmd file does not have any special characters at the end.  Example: no files named analysis_(1).Rmd, but rather analysis.Rmd. 


<div style="margin-bottom:25px;">
</div>
## **Getting help**
\


* Please try the assignment on your own before turning to other people for help. **If you email the professor or TA for help about a problem with your code, you must include the following**:
  + A brief explanation of the task or operation you’re trying to accomplish (e.g. “Assignment 2, Question 1 part a” or “Trying to use get_acs() to access census data”)
  + A description of the error code. Paste the error message into the email or attach a screenshot
  + A brief explanation of steps you have already taken to try to resolve the issue on your own

* You should ask your peers for help before you ask your instructor or TA. Relying on a single person to solve all of your problems is dangerous, because that person won’t be available throughout your career as a data scientist.

* Read our course textbooks [R for Data Science](http://r4ds.had.co.nz/index.html) and [Geocomputation with R](https://geocompr.robinlovelace.net/)

* Look through the R Cheat Sheets we posted on Canvas (Files -> Other Resources -> R Cheatsheets)

* Read the help documentation for the function you are having trouble with.  This also includes reading the package's vignette.  You can search for package vignettes using the [function](https://rdrr.io/r/utils/vignette.html) `vignette()`.

* Google is your friend. Copy the error message, maybe strip out anything highly specific, such as the name of your R objects, surround with quotes and Google it!

* Finding answers on Google are not always quick. Add as much context as possible to your search query. For example, let's say that I want to know how to rename a column in my dataset. I could Google: “How to rename a column in R with dplyr/tidyverse” and read the answers posted in Stacked Overflow (www.stackoverflow.com). Notice how I covered the following in my google search: (1) The specific action (how to rename a column); (2) The programming language (R statistics); (3) The specific style/technique for coding (dplyr or tidyverse package).

* The following online resources are great for getting help.

  - [RStudio Cheatsheets](https://rstudio.com/resources/cheatsheets/)
  - [Getting Help with R](https://www.r-project.org/help.html)
  - [What they forget to teach you about R](https://rstats.wtf/)
  - [Data wrangling cheatsheet](https://raw.githubusercontent.com/rstudio/cheatsheets/main/data-transformation.pdf)
  - [Stackoverflow](https://stackoverflow.com/questions/tagged/r)
  - Roger Peng's video on [How to get help](https://www.youtube.com/watch?v=ZFaWxxzouCY&feature=youtu.be)

<br>

Still having trouble? Maybe you need to take a break.  Go for a walk. Eat a cookie. Pet your dog. Step away for a bit and look at your code from a different emotional state.

***


<a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/">Creative Commons Attribution-NonCommercial 4.0 International License</a>.


Website created and maintained by [Noli Brazil](https://nbrazil.faculty.ucdavis.edu/)
