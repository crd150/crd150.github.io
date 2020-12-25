---
title: "Syllabus"
subtitle: <h4 style="font-style:normal">CRD 150 - Quantitative Methods in Community Research</h4>
date: <h4 style="font-style:normal">Winter 2021</h4>
output: 
  html_document:
    toc: true
    toc_depth: 3
    toc_float: true
    theme: cosmo
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

The following is an abridged version of the course syllabus.  A full course syllabus can be found on the Canvas class website.

<div style="margin-bottom:25px;">
</div>
## **Lecture and Lab Times**

* Lecture: 
    + Tuesday and Thursday, 12:10-2:00 pm
    + Combination of asynchronous and live Zoom sessions. See course agenda for schedule
* Labs: 
    + A01: Friday, 10:00-10:50 am
    + A02: Friday, 11:00-11:50 am 
    + Live Zoom session

Zoom links are located on Canvas and pdf syllabus.

<div style="margin-bottom:25px;">
</div>
## **Instructor**

Dr. Noli Brazil  
*Contact*: nbrazil.at.ucdavis.edu  
*Office hours*: Tuesday from 2:00-3:30 pm or by appointment, Zoom.  Please sign up for a slot [here](https://www.wejoinin.com/sheets/wlzxs). Out of courtesy to other students, please do not sign up for more than two 10-minute blocks.  If you do, I will keep only the first two blocks. Zoom link is located on Canvas and pdf syllabus.

<div style="margin-bottom:25px;">
</div>
## **Teaching Assistant**

Mariah Coley  
*Contact*: mlcoley.at.ucdavis.edu  
*Office hours*: Wednesday: 12:30-1:30 pm, Zoom

Zoom link is located on Canvas and pdf syllabus.

<div style="margin-bottom:25px;">
</div>
## **Course Objectives**

In this course, students will gain

* A foundation in critical thinking and reasoning skills based on data
* Skills in acquiring data from a wide range of reliable public and private sources 
* An understanding of the differences between spatial and nonspatial data
* Skills in data cleaning and management 
* An understanding of how to appropriately present nonspatial data in tables and graphs and spatial data in maps
* Skills in descriptive analysis of nonspatial and spatial data
* Proficiency in data analytic tools, specifically R
* An understanding of how these methods are employed in community research

<div style="margin-bottom:25px;">
</div>
## **Course Format**

The course is organized into two phases. 

* Part 1: Analyzing communities using nonspatial data.  Topics include descriptive statistics, exploratory data analysis, data presentation, and visualization.  As the major source of national community-level data in the United States, the U.S. Census will be covered extensively.    

* Part 2: Analyzing communities using spatial data. Topics include big data, government open data, point pattern analysis, spatial clustering, residential segregation, gentrification, and story mapping.

<div style="margin-bottom:25px;">
</div>
### **Lecture Format**


* **Asynchronous lectures**: Most Tuesday lectures will be prerecorded and released every Monday on Canvas.  The accompanying lecture slides will also be posted on Canvas. The lectures will be approximately 15-45 minutes long and will cover the substantive non-programming topics of the week, typically those covered in the week’s readings.  It will be your responsibility to watch these videos on your own time, ideally before Thursday’s lecture.  

* **Synchronous lectures**: Most Thursday lectures will be live computer sessions covering the week’s lab guide, which will be released on the course website every Thursday morning.  The lab guides provide hands on practice using real data. They will provide step-by-step instructions on executing specific tasks using a software program.   Although you do not need to turn in lab guides for a grade, it is expected that you will go through each guide and master its contents.  All sessions will be recorded and uploaded on Canvas to view later. See the document class_zoom_guidelines.pdf on Canvas for complete information regarding Zoom classroom access, etiquette and expectations.



<div style="margin-bottom:25px;">
</div>
### **Lab Format**

The Friday lab will be held synchronously.  The TA will cover lab guide material that we were not able to get to during the Thursday computer sessions. They will also provide additional guidance on higher level points and provide more refined assignment feedback and help.  Labs will not be recorded.

<div style="margin-bottom:25px;">
</div>
## **Required Readings**

Required reading material is composed of a combination of the following 

1.	Journal articles and research reports.

There is no single official textbook for the course.  Instead, I’ve selected journal articles and research reports.

2.	My handouts

For most topics, in lieu of an article or book chapter, I will provide lecture handouts on Canvas in advance of the assigned class.  

<div style="margin-bottom:25px;">
</div>
## **Additional Readings**

The other major course material are lab guides, which will be released before the Thursday lecture.  Many of the R lab guides will closely follow two textbooks.  These textbooks are not required, but are great resources. 
The first textbook covers the first part of the course (nonspatial data)

* (RDS) Wickham, Hadley & Garret Grolemund. (2017). R for Data Science. Sebastopol, CA: O’Reilly Media.

The textbook is free online at: http://r4ds.had.co.nz/introduction.html  

The second textbook covers the second part of the course (spatial data)

* (GWR) Lovelace, Robin, Jakub Nowosad & Jannes Muenchow. (Forthcoming) Geocomputation with R. CRC Press.

The textbook is free online at: https://geocompr.robinlovelace.net/

<div style="margin-bottom:25px;">
</div>
## **Course Software**

[R](https://www.r-project.org/) is the statistical language used in this course, as it has become an increasingly popular program for data analysis in the social sciences.  R is freeware and you can download it on your personal laptop and desktop computers.  We will use [RStudio](https://www.rstudio.com/) as a user friendly interface for R.  

We will also introduce the  program [ArcGIS Online Story Maps](https://storymaps.arcgis.com/).

<div style="margin-bottom:25px;">
</div>
## **Course Requirements** 

1. Assignments (50%)

Assignments will be released on the lab website each week Thursday morning and will be due the following Thursday morning on Canvas.  Assignment questions are located at the end of each lab guide. They will contain a combination of programming tasks and theoretical questions that you will need to answer on your own.  For each assignment, you will need to submit an R Markdown Rmd and html file on Canvas.  Complete assignment guidelines can be found here: https://crd150.github.io/hw_guidelines.html.  Note that assignments will get progressively harder, so it is important that you master the material each week as assignments will build on one another. If you get stuck you can seek help from the TA, who will be available in the scheduled lab sessions and during office hours.  We also encourage you to work with other students, but **you must submit your own assignment.**  

Late submissions will be deducted 10% per 24 hours until 72 hours after the submission due time.  After 72 hours your submission will not be graded.  No exception unless you provide documentation of your illness or bereavement before the due date.  If you cannot upload the assignment on Canvas due to technical issues, you must email it as an attachment to the TA by the submission due time.

2. Quizzes (20%)

There will be two quizzes that will test conceptual material covered in lecture, readings and lab.  Each quiz will be released Thursday morning and will be due the following Tuesday. The quizzes will be take home, open book and done through Canvas. They will consist of computational, multiple choice and short answer questions.  You will not be expected to write or interpret R code. Make-up quizzes will be given ONLY in the case of extreme emergencies (severe illness, death in the immediate family) and when accompanied by appropriate documentation (e.g. doctor’s note). In the case of unexcused absences (travel plans, overslept, etc.), there are no make-up quizzes.

3. Final course project (30%)

The purpose of the final course project is to provide students the opportunity to apply the concepts and methods learned in class on a real-world problem of their choice.  The project is an individual project.  It will be completed in phases, which are designed to ensure progress throughout the quarter.  The project will involve choosing at least one specific community (city or county) and answering a question about that community.  You will (i) identify a community of interest (city or county with a population size in the top 100); (ii) identify a question you want to answer for that community; (iii) find some data that pertain to the community and topic of interest; (iv) organize those data so that you can analyze them; (iv) perform some analysis on the data; (v) present your results through a StoryMap; (vi) give feedback to your peers’ StoryMaps.  More detailed information of project parameters are provided on Canvas in the document final_project_description.pdf in the Final Project folder on Canvas.

<div style="margin-bottom:25px;">
</div>	
## **Other Information**
\

Please see the full syllabus on the Canvas website for information regarding course communication, code of conduct, and grades.

<div style="margin-bottom:25px;">
</div>	
## **Course Agenda**
\

The schedule is subject to revision throughout the quarter.  Please see the full syllabus for a more detailed version of the agenda. *Live (synchronous) lecture/lab.

<table class="table table-striped table-hover table-responsive" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Date </th>
   <th style="text-align:left;"> Class </th>
   <th style="text-align:left;"> Topic </th>
   <th style="text-align:left;"> Readings </th>
   <th style="text-align:left;"> Assignment </th>
   <th style="text-align:left;"> Project </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;width: 5em; "> 5-Jan </td>
   <td style="text-align:left;"> Lecture* </td>
   <td style="text-align:left;"> Intro to class. Intro to R </td>
   <td style="text-align:left;width: 13em; ">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 5em; "> 7-Jan </td>
   <td style="text-align:left;"> Lecture* </td>
   <td style="text-align:left;"> Data analysis framework. Intro to R </td>
   <td style="text-align:left;width: 13em; "> Handout 1 </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 5em; "> 8-Jan </td>
   <td style="text-align:left;"> Lab* </td>
   <td style="text-align:left;"> Intro to R </td>
   <td style="text-align:left;width: 13em; ">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 5em; "> 12-Jan </td>
   <td style="text-align:left;"> Lecture </td>
   <td style="text-align:left;"> Data wrangling </td>
   <td style="text-align:left;width: 13em; "> Handout 2 </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 5em; "> 14-Jan </td>
   <td style="text-align:left;"> Lecture* </td>
   <td style="text-align:left;"> Data wrangling in R </td>
   <td style="text-align:left;width: 13em; ">  </td>
   <td style="text-align:left;"> HW 1 </td>
   <td style="text-align:left;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 5em; "> 15-Jan </td>
   <td style="text-align:left;"> Lab* </td>
   <td style="text-align:left;"> Data wrangling in R </td>
   <td style="text-align:left;width: 13em; ">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 5em; "> 19-Jan </td>
   <td style="text-align:left;"> Lecture </td>
   <td style="text-align:left;"> Intro to the U.S. Census </td>
   <td style="text-align:left;width: 13em; "> Handout 3 </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 5em; "> 21-Jan </td>
   <td style="text-align:left;"> Lecture* </td>
   <td style="text-align:left;"> Working with U.S. Census data in R </td>
   <td style="text-align:left;width: 13em; ">  </td>
   <td style="text-align:left;"> HW 2 </td>
   <td style="text-align:left;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 5em; "> 22-Jan </td>
   <td style="text-align:left;"> Lab* </td>
   <td style="text-align:left;"> Working with U.S. Census data in R </td>
   <td style="text-align:left;width: 13em; ">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 5em; "> 26-Jan </td>
   <td style="text-align:left;"> Lecture </td>
   <td style="text-align:left;"> Descriptive stats </td>
   <td style="text-align:left;width: 13em; "> Handout 4 </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 5em; "> 28-Jan </td>
   <td style="text-align:left;"> Lecture* </td>
   <td style="text-align:left;"> Describing your data in R </td>
   <td style="text-align:left;width: 13em; ">  </td>
   <td style="text-align:left;"> HW 3 </td>
   <td style="text-align:left;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 5em; "> 29-Jan </td>
   <td style="text-align:left;"> Lab* </td>
   <td style="text-align:left;"> Describing your data in R </td>
   <td style="text-align:left;width: 13em; ">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 5em; "> 2-Feb </td>
   <td style="text-align:left;"> Lecture </td>
   <td style="text-align:left;"> Intro to spatial data </td>
   <td style="text-align:left;width: 13em; "> Handout 5 </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 5em; "> 4-Feb </td>
   <td style="text-align:left;"> Lecture* </td>
   <td style="text-align:left;"> Spatial data in R </td>
   <td style="text-align:left;width: 13em; ">  </td>
   <td style="text-align:left;"> HW 4 </td>
   <td style="text-align:left;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 5em; "> 5-Feb </td>
   <td style="text-align:left;"> Lab* </td>
   <td style="text-align:left;"> Spatial data in R </td>
   <td style="text-align:left;width: 13em; ">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 5em; "> 9-Feb </td>
   <td style="text-align:left;"> Lecture </td>
   <td style="text-align:left;"> Spatial autocorrelation </td>
   <td style="text-align:left;width: 13em; "> Handout 6 </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 5em; "> 11-Feb </td>
   <td style="text-align:left;"> Lecture* </td>
   <td style="text-align:left;"> Spatial autocorrelation in R </td>
   <td style="text-align:left;width: 13em; ">  </td>
   <td style="text-align:left;"> HW 5 </td>
   <td style="text-align:left;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 5em; "> 12-Feb </td>
   <td style="text-align:left;"> Lab* </td>
   <td style="text-align:left;"> Spatial autocorrelation in R </td>
   <td style="text-align:left;width: 13em; ">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 5em; "> 16-Feb </td>
   <td style="text-align:left;"> Lecture </td>
   <td style="text-align:left;"> Big data and open data </td>
   <td style="text-align:left;width: 13em; "> Handout 7 </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 5em; "> 18-Feb </td>
   <td style="text-align:left;"> Lecture* </td>
   <td style="text-align:left;"> Point patterns in R </td>
   <td style="text-align:left;width: 13em; ">  </td>
   <td style="text-align:left;"> HW 6 </td>
   <td style="text-align:left;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 5em; "> 19-Feb </td>
   <td style="text-align:left;"> Lab* </td>
   <td style="text-align:left;"> Point patterns in R </td>
   <td style="text-align:left;width: 13em; ">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 5em; "> 23-Feb </td>
   <td style="text-align:left;"> Lecture </td>
   <td style="text-align:left;"> Segregation and gentrification </td>
   <td style="text-align:left;width: 13em; "> Handout 8; Logan and Stults (2011) </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 5em; "> 25-Feb </td>
   <td style="text-align:left;"> Lecture* </td>
   <td style="text-align:left;"> Segregation and gentrification in R </td>
   <td style="text-align:left;width: 13em; ">  </td>
   <td style="text-align:left;"> HW 7 </td>
   <td style="text-align:left;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 5em; "> 26-Feb </td>
   <td style="text-align:left;"> Lab* </td>
   <td style="text-align:left;"> Segregation and gentrification in R </td>
   <td style="text-align:left;width: 13em; ">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> Proposal </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 5em; "> 2-Mar </td>
   <td style="text-align:left;"> Lecture* </td>
   <td style="text-align:left;"> Guest Lecture </td>
   <td style="text-align:left;width: 13em; ">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 5em; "> 4-Mar </td>
   <td style="text-align:left;"> Lecture* </td>
   <td style="text-align:left;"> Story Maps using ArcGIS online </td>
   <td style="text-align:left;width: 13em; "> Lung-Amam &amp; Dawkins (2019) </td>
   <td style="text-align:left;"> HW 8 </td>
   <td style="text-align:left;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 5em; "> 5-Mar </td>
   <td style="text-align:left;"> Lab* </td>
   <td style="text-align:left;"> Story Maps using ArcGIS online </td>
   <td style="text-align:left;width: 13em; ">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 5em; "> 9-Mar </td>
   <td style="text-align:left;"> Lecture* </td>
   <td style="text-align:left;"> Final project in-class workshop </td>
   <td style="text-align:left;width: 13em; ">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 5em; "> 11-Mar </td>
   <td style="text-align:left;"> Lecture </td>
   <td style="text-align:left;"> No lecture </td>
   <td style="text-align:left;width: 13em; ">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 5em; "> 12-Mar </td>
   <td style="text-align:left;"> Lab* </td>
   <td style="text-align:left;"> TBD </td>
   <td style="text-align:left;width: 13em; ">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 5em; "> 16-Mar </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> StoryMap due 12:00 pm </td>
   <td style="text-align:left;width: 13em; ">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> StoryMap </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 5em; "> 18-Mar </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> StoryMap eval due 12:00 pm </td>
   <td style="text-align:left;width: 13em; ">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> StoryMap peer evals </td>
  </tr>
</tbody>
</table>


***


<a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/">Creative Commons Attribution-NonCommercial 4.0 International License</a>.


Website created and maintained by [Noli Brazil](https://nbrazil.faculty.ucdavis.edu/)
