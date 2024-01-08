---
title: "Lab 1: Introduction to R"
subtitle: <font size="4">CRD 150 - Quantitative Methods in Community Research</font>
author: Professor Noli Brazil
date: January 10, 2024
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
  font-family: Arial
}

</style>


<style type="text/css">
#TOC {
  font-size: 13px;
  font-family: Arial;
}
</style>


\



In this guide you will learn the basic fundamentals of the statistical software program R.  Because R is not a prerequisite for the class, this guide assumes no background in the language.  The objectives of the guide are as follows:

1. Download R and RStudio
2. Get familiar with the RStudio interface
3. Understand R data types
4. Understand R data structures, in particular vectors and data frames
5. Understand R functions
6. Understand R Markdown and the process for submitting assignments


This lab guide follows closely and supplements the material presented in Chapters 2, 4, and 20 in the textbook [R for Data Science](http://r4ds.had.co.nz/index.html) (RDS).

<p class="comment">**Assignment 1 is due by 10:00 am, January 17th on Canvas.**  See [here](https://crd150.github.io/hw_guidelines.html) for assignment guidelines.  You must submit an `.Rmd` file and its associated `.html` file. Name the files: yourLastName_firstInitial_asgn01. For example: brazil_n_asgn01</p>

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

**If you already have R on your computer, make sure you have the most updated version of R on your personal computer (4.3.2 "Eye Holes").**


<div style="margin-bottom:25px;">
</div>
### **Mac OS X**


1. On the “R for macOS” page, there are multiple packages that could be downloaded. If you have a Mac with [Apple Silicon](https://support.apple.com/en-us/HT211814), click on R-4.3.2-arm64.pkg; if you don't have Silicon and are running on macOS 11 (Big Sur) or higher, click on R-4.3.2-x86_64.pkg; if you are running an earlier version of OS X, download the appropriate version listed under "Binary for legacy macOS/OS X systems." 

2. After the package finishes downloading, locate the installer on your hard drive, double-click on the installer package, and after a few screens, select a destination for the installation of the R framework (the program) and the R.app GUI. Note that you will have to supply your computer's Administrator’s password. Close the window when the installation is done.

3. An application will appear in the Applications folder: R.app. 

4. Browse to the [XQuartz download page](https://www.xquartz.org/). Click on the most recent version of XQuartz to download the application.

5. Run the XQuartz installer. XQuartz is needed to create windows to display many types of R graphics: this used to be included in MacOS until version 10.8 but now must be downloaded separately.


<div style="margin-bottom:25px;">
</div>
### **Windows**


1. On the “R for Windows” page, click on the “base” link, which should take you to the “R-4.3.2 for Windows” page

2. On this page, click "Download R 4.3.2 for Windows", and save the exe file to your hard disk when prompted. Saving to the desktop is fine.

3. To begin the installation, double-click on the downloaded file. Don’t be alarmed if you get unknown publisher type warnings. Window’s User Account Control will also worry about an unidentified program wanting access to your computer. Click on “Run” or "Yes".

4. Select the proposed options in each part of the install dialog. When the “Select Components” screen appears, just accept the standard choices (the default). For Startup options, keep the default.

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
2. Click on the "Download RStudio Desktop" link under the header "2: Install RStudio". This will prompt you to save an installer package on your drive.
3. Click on the installer that you downloaded.  Follow the installation wizard's directions, making sure to keep all defaults intact.  After installation, RStudio should pop up in your Applications or Programs folder/menu.

Note that the most recent version of RStudio works only for certain operating systems (OS). If you have an older OS, you will need to download an older version RStudio, which you can find [here](https://docs.posit.co/previous-versions/rstudio/).



***

<a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/">Creative Commons Attribution-NonCommercial 4.0 International License</a>.


Website created and maintained by [Noli Brazil](https://nbrazil.faculty.ucdavis.edu/)
