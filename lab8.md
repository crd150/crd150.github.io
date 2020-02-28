---
title: "Lab 8: Opportunity Mapping"
subtitle: <h4 style="font-style:normal">CRD 150 - Quantitative Methods in Community Research</h4>
author: <h4 style="font-style:normal">Professor Noli Brazil</h4>
date: <h4 style="font-style:normal">February 28, 2020</h4>
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





In this guide you will learn how to condense a suite of neighborhood variables into a numeric opportunity index. The objectives of the guide are as follows.

1. Understand the data workflow for computing opportunity indices
2. Learn about standardization
3. Create and map a numeric index of opportunity

To accomplish these objectives, we will use data from the UC Davis [Center for Regional Change](https://regionalchange.ucdavis.edu/) [Regional Opportunity Index](https://interact.regionalchange.ucdavis.edu/roi/data.html). This lab guide follows closely the material presented in class Handout 5.

<p class="comment", style="font-style:normal">**Assignment 8 is due by 11:59 pm, March 5th on Canvas.**  See [here](https://crd150.github.io/hw_guidelines.html) for assignment guidelines.  You must submit an `.Rmd` file and its associated `.html` file. Name the files: yourLastName_firstInitial_asgn08. For example: brazil_n_asgn08.</p>


<div style="margin-bottom:25px;">
</div>
## **Open up a R Markdown file**
\

Download the [Lab template](https://raw.githubusercontent.com/crd150/data/master/labtemplate.Rmd) into an appropriate folder on your hard drive (preferably, a folder named 'Lab 8'), open it in R Studio, and type and run your code there.  Change the title ("Lab 8") and insert your name and date. Don't change anything else inside the YAML (the stuff at the top in between the `---`).  

<div style="margin-bottom:25px;">
</div>
## **Installing and loading packages**
\

We will not be introducing any new packages in this lab, so no installing.

You’ll need to load the following packages. Unlike installing, you will always need to load packages whenever you start a new R session. You’ll also always need to use `library()` in your R Markdown file.


```r
library(tidyverse)
library(sf)
library(tigris)
options(tigris_class = "sf")
library(tmap)
```

If you get an error indicating that any of the above packages do not exist, install them (once and never again).

<div style="margin-bottom:25px;">
</div>
## **Workflow**
\

As fully discussed in Handout 5, the basic workflow for creating an opportunity index or typology is as follows

1. Establish the theoretical framework based on an extensive literature review and, if possible, feedback from community members
2. Collect data on variables that capture important contextual features of a neighborhood based on each subdomain
3. Clean, process, and transform input variables
4. Select modelling approach
5. Run, refine, alter and expand model
6. Map your index

Following this workflow, we're going to recreate the  [Regional Opportunity Index](https://interact.regionalchange.ucdavis.edu/roi/data.html) (ROI), which is a numeric index of opportunity for California neighborhoods created by the [Center for Regional Change](https://regionalchange.ucdavis.edu/) (CRC) at UC Davis.  

<div style="margin-bottom:25px;">
</div>
## **Regional Opportunity Index**
\

Using census tract data and a combination of people and place-based indicators relating to education, economy, housing, mobility/transportation, health, and civic life, the CRC's Regional Opportunity Index (ROI) assesses factors driving community and regional opportunity and well-being.  The index, which includes an [online mapping tool](https://interact.regionalchange.ucdavis.edu/roi/webmap/webmap.html), is intended to help banks, policymakers, and advocates identify the most vulnerable communities for investment and policy efforts.  See examples of its applications [here](https://viewperformance.deltacouncil.ca.gov/pm/delta-economy), [here](https://www.shfcenter.org/assets/SJVHF/SJV_Mapping_Opportunity_Report_Feb_2015.pdf), and [here](https://www.tandfonline.com/doi/full/10.1080/21513732.2017.1412355)

The variables that were chosen to construct the index were based on a critical review of the literature, which accomplishes step 1 in the above workflow.  Because this is a quantitative class, we're not going to go through how the CRC accomplished this step, but as was discussed in Handout 1, one's theoretical framework sets the table for the rest of the analysis, which also applies to the creation of an opportunity index, and thus step 1 is not to be taken lightly.  

The CRC also took care of step 2 for us. This step is also non-trivial.  If you go through the ROI [methodology](https://interact.regionalchange.ucdavis.edu/roi/Download_Data/ROI%20Metadata.pdf), you will find that they took data of all types from an assortment of sources.  Finding the data, downloading it, and wrangling it to the form that they needed required an enormous amount of effort and time.   

We'll bring into R the underlying 2014 tract-level data that make up the ROI. Bring in the data, which are available on Github.


```r
roi.tract.data <- read_csv("https://raw.githubusercontent.com/crd150/data/master/roi_data_2014.csv")
```

<br>

The variables correspond to different place dimensions: Education, Economic, Housing, Health/Environment, and Civic Life.  Detailed information on these domains and their variables can be found on the [ROI website](https://interact.regionalchange.ucdavis.edu/roi/Download_Data/ROI%20Metadata.pdf). You can view the record layout for the variables in *roi.tract.data* [here](https://raw.githubusercontent.com/crd150/data/master/record_layout.xlsx).  Note that the ROI has two indices: one for people and another for place.  We will be working on data for the place index.

The data are largely cleaned, so step 3 is mostly done. This includes converting variable counts to percentages, ratios, and rates where appropriate.  There is some missingness in the data. Rather than using the techniques outlined in the missing data [minilab](https://crd150.github.io/missingdata.html) to fill in this missingness, let's follow the CRC and not impute for it.  This means that when we calculate values like the mean or standard deviation, we need to use the option `na.rm=TRUE` within the command. Also, we'll have gray areas designating tracts with missing data when we map.

The CRC did a lot of the heavy lifting by selecting, collecting and cleaning the data.  But, we still have a few data wrangling tasks to take care of.  

<div style="margin-bottom:25px;">
</div>
### **Variables point in the same direction**
\

As described in section 4.2 in Handout 5, we need to make sure all the variables point in the same direction.  Higher values on an opportunity index should mean more opportunity. This means the variables used in the index should also be scaled that way. With the ROI data, we have two variables that we need to rescale.  First, the variable *edplc4* is the percentage of high school students in the school district who were suspended or expelled.  Higher values here indicate lower opportunity, but we want the reverse.  For percentages, you need to subtract them from 100.  Variables on other scales are inverted by taking the reciprocal of the variable (1 divided by the value). The other variable in the data set that needs inversion is *enplc4*, the annual mean concentration of PM2.5 (exposure to pollution).

We use the `mutate()` function to make these transformations.


```r
roi.tract.data <- mutate(roi.tract.data, edplc4 = 100-edplc4, enplc4 = 1/enplc4) 
```


<div style="margin-bottom:25px;">
</div>
### **Standardizing variables**
\

In order to combine variables into an index, we need to standardize them, which is described in section 4.3 in the handout.  We do this to get the variables onto the same scale.  That is, variables are measured across multiple measurement scales, from percentages such as percent non-Hispanic black to ratios such as population density, and we need to get these variables on the same scale.  A common approach to standardizing a variable is to calculate its z-score.  The z-score is a measure of distance from the mean, in this case the mean of all tracts in an area.  So, after standardization, the variables will have the same units, specifically units of standard deviations.

Let's calculate the z-score for the variable *hsplc1* (% of households with no more than 1 occupant per room) using equation 1 in Handout 5.  Relying on our compadre `mutate()`, we can create a variable named *hsplc1z* that subtracts the total mean of *hsplc1* from each tract's value on *hsplc1* and then divide by the standard deviation of *hsplc1*.  The ROI uses the California mean, but read the section "Standardize variables using the appropriate comparison mean" in the Handout to understand the potential issues with using the statewide mean. 



```r
roi.tract.data %>%
  mutate(hsplc1z = (hsplc1-mean(hsplc1, na.rm=TRUE))/sd(hsplc1, na.rm=TRUE)) %>%
  select(tract,hsplc1z)
```

```
## # A tibble: 8,035 x 2
##         tract hsplc1z
##         <dbl>   <dbl>
##  1 6001400100   0.867
##  2 6001400200   0.928
##  3 6001400300   0.928
##  4 6001400400   0.874
##  5 6001400500   0.828
##  6 6001400600   0.846
##  7 6001400700   0.422
##  8 6001400800   0.784
##  9 6001400900   0.664
## 10 6001401000   0.754
## # … with 8,025 more rows
```

We just standardized *hsplc1*, but we need to do this for all variables in the data set. Standardizing one variable at a time by repeating the code above is fine and dandy if you have a small number of variables to standardize.  But, for most opportunity indices, you'll be dealing with a lot of variables.  For example, the complete (place and people) ROI incorporates 31 variables.  Yes, you can repeat the above code 31 times, but is there a more efficient way? 

Why yes!  

Instead of writing out the above code for every variable, we can use a combination of the `scale()` function, which is a canned function that standardizes a variable, and `mutate()`'s hidden yet very powerful sister `mutate_at()`.  Let's create a new tibble called *roi.std* that contains all 31 variables standardized using the following code.


```r
roi.std <- mutate_at(roi.tract.data, scale, .vars = vars(-c(cntyfips, cntyname, tract, placenm)))
```

Let's break the above code down a bit so we're all on the same page. The function `mutate_at()` tells R to run a function on all variables in the dataset. The first argument *roi.tract.data* is our dataset. The second argument is the name of our function `scale`.  

If we ended our function there, we will get an error


```r
mutate_at(roi.tract.data, scale)
```

```
## Error: `.vars` must be a character/numeric vector or a `vars()` object, not a function
```

Why? Because we have variables in our dataset that are characters.  The larger issue, however, is that we have multiple variables, numeric and character, in our dataset *roi.tract.data* that we don't need to standardize.  This is why we use the `.vars = vars()` argument. The argument `.vars = vars(-c(cntyfips, cntyname, tract, placenm))` tells `mutate_at()` that R will execute `scale` for all variables in  *roi.tract.data* **except** *cntyfips*, *cntyname*, *tract*, and *placenm*.

At this point in the quarter, you should now understand the power of the **tidyverse**. Instead of 31+ lines of code, we were able to complete the task of standardizing 31 variables in 1 line of code.  Efficiency is next to godliness. Or something like that.


<div style="margin-bottom:25px;">
</div>
### **Combining into domains**
\

The next step is to calculate ROI domain indices by averaging the variables within each of the  domains.  ROI has five domains: Education, Economic, Housing, Health/Environment, and Civic Life.  The crosswalk between variables and domains is provided in the [record layout](https://raw.githubusercontent.com/crd150/data/master/record_layout.xlsx).  Let's calculate the average for the Economic domain, which contains the variables *ecplc1*, *ecplc2*, *ecplc3*, and *ecplc4*.  Add these and divide by 4 and we get the mean!


```r
roi.std <- mutate(roi.std, Economic = (ecplc1+ecplc2+ecplc3+ecplc4)/4)
```

Calculate the other domains (Education, Health/Environment, and Civic) and then average the domain specific averages to get an overall index. We'll let you do this on your own.

Keep in mind that the Center for Regional Change computed a geometric mean instead of an arithmetic mean. In order to calculate the geometric mean, they had to use a method called Min-Max scaling to standardize variables. You can read more about Min-Max scaling and the geometric mean on page 25 in the [ROI methods document](https://interact.regionalchange.ucdavis.edu/roi/Download_Data/ROI%20Metadata.pdf).  

<div style="margin-bottom:25px;">
</div>
### **Mapping the indices**
\

We've got our indices, overall and by domain, so now it's time to map them, which is the final step of the workflow.  Let's bring in a shapefile of California census tracts using the `tracts()` function from the **tigris** package.


```r
ca.tracts <- tracts("CA") 
```

We want to merge the tibble *roi.std* into *ca.tracts*. The variable we want to merge on is *GEOID*, but it is a character in *ca.tracts* and a numeric in *roi.std*.  To make them match, convert *GEOID* into a numeric in *ca.tracts*.



```r
ca.tracts <-  mutate(ca.tracts, tract = as.numeric(GEOID))
```

Next, we merge using `left_join()`. 


```r
ca.tracts <- left_join(ca.tracts, roi.std, by = "tract")
```


Following how the ROI is [presented](https://interact.regionalchange.ucdavis.edu/roi/webmap/webmap.html) online, we break the numeric indices into quintiles (five equal groups) where the top 20% indicates highest opportunity and the bottom 20% represents lowest opportunity. We'll cut the *Economic* variable into quintiles using the `cut()` and `quantile()` commands within `mutate()`.  


```r
ca.tracts <- mutate(ca.tracts, EconomicQ = cut(Economic, breaks=quantile(Economic, c(0,0.2,0.4,0.6,0.8,1), na.rm=TRUE), include.lowest = TRUE))
```


The above code creates a variable named *EconomicQ* in the dataset *ca.tracts* that breaks up the variable *Economic* into quintiles (top 20%, next 20%, ... bottom 20%). The argument `include.lowest = TRUE` tells R to keep the lowest value (if you don't specify this, the function `cut()` will ignore the lowest value).

Finally, we use `tm_shape()` to map the indices.  Let's put the map into view mode so we can zoom in and out of different areas of California. 


```r
tmap_mode("view")
```

Following the ROI, we will label the bottom 20% "Lowest Opportunity", 20th-40th percentiles "Low", 40th-60th percentiles "Moderate", 60th-80th percentiles "High", and 80th-100th percentiles "Highest Opportunity".



```r
#this will take some time because you are mapping all of California
ca.map.ind.ec <- tm_shape(ca.tracts) +
  tm_polygons(col = "EconomicQ",  palette = "BrBG",
              border.alpha = 0, title = "Economic Opportunity", midpoint = NA, 
              labels = c("Lowest Opportunity", "Low", "Moderate", "High", "Highest Opportunity"))

#add a basemap to give us some context
ca.map.ind.ec + tm_view(basemaps="OpenStreetMap")
```

<br>

What is the Economic Opportunity landscape like in the City of Davis? Zoom in and find out.

We've just recreated the Regional Opportunity Index! Tell [Dr. London](https://regionalchange.ucdavis.edu/people/jonathan-k-london) when you take his class or see him in the hallways. He'll be proud (and might hire you!).



<div style="margin-bottom:25px;">
</div>
## **Assignment 8**
\



Download and open the [Assignment 8 R Markdown Script](https://raw.githubusercontent.com/crd150/data/master/yourLastName_firstInitial_asgn08.Rmd). Any response requiring a data analysis task  must be supported by code you generate to produce your result. (Just examining your various objects in the “Environment” section of R Studio is insufficient—you must use scripted commands.). 

<br>

| 1. In the lab guide, we created and mapped the Economic domain of the Regional Opportunity Index.  For this question, you will create the other four domains and the overall index.   You will also conduct some exploratory analyses to examine the socioeconomic and demographic characteristics associated with opportunity.  We're going to examine opportunity in the following counties: El Dorado, Placer, Sacramento, and Yolo.  These are the non-rural counties that make up [California's Capital Region](https://regionalchange.ucdavis.edu/sites/g/files/dgvnsk986/files/inline-files/Capital_Region_Place_In_Progress.pdf).  

<br>

Rather than having you recreate *ca.tracts* from the lab guide, I've loaded it up on GitHub.  In addition to the original variables from the lab guide, I've included the variables percent non-Hispanic black (*pblk*), percent non-Hispanic Asian (*pasn*), percent Hispanic (*phisp*) and percent of residents under 18 year olds (*p18und*), which I downloaded from the 2013-17 American Community Survey.   Use the following code to download the files.

````
download.file(url = "https://raw.githubusercontent.com/crd150/data/master/assign8files.zip", destfile = "assign8files.zip")
unzip(zipfile = "assign8files.zip")
````

You should see the file *capitaltracts.shp* (and the other files associated with the shapefile) in your current working directory (`getwd()`). Load that file into R using the `st_read()` function like as follows

````
capitaltracts <- st_read("capitaltracts.shp", stringsAsFactors = FALSE)
````

<br>


| a. Calculate the Education, Housing, Health/Environment, Civic Life and overall ROI indices. The crosswalk between variables and domains is provided in the [record layout](https://raw.githubusercontent.com/crd150/data/master/record_layout.xlsx). (2 points)

<br>

| b. Using the quintile-based breaks to categorize tracts as Lowest Opportunity, Low, Moderate, High, and Highest Opportunity that we used in the lab guide, map the Education, Housing, Health/Environment, Civic Life, and overall ROI indices for the Capital region.  You should have five separate maps for the four domains and the overall index. (3 points)

<br>

| c. Map percent of residents under 18 year olds for the capital region using `style = quantile`. Based on a visual comparisons of the maps,  do you think that youth are located in high overall opportunity places? (3 points)

<br>

| d. Calculate the correlation between percent under 18 year olds and all of the indices (overall and the 5 domains). Summarize your results. (Hint: When you use the `cor()` function to calculate the correlations, use the argument `use = "complete.obs"` to ignore the missing values). (2 points)

<br>

| e. Calculate the correlation between percent black, percent Asian, and percent Hispanic and the *overall* ROI index.  Summarize your results. (3 points)

<br>
<br>

| 2. Box 1 in Handout 5 describes the opportunity index that the State of California created to help identify high resource neighborhoods to allocate affordable housing units.  In this question, we're going to learn more about their [2019 index](https://haasinstitute.berkeley.edu/sites/default/files/mappings/TCAC/opportunity_map_2019.html). 

<br>

| a. Scan the Task Force's [Opportunity Mapping Methodology](https://www.treasurer.ca.gov/ctcac/opportunity/final-opportunity-mapping-methodology.pdf) and answer the following questions regarding how they constructed the index. (5 points)

+ How many domains did the Task Force include? What are they?
+ What were the three criteria they used to select the variables that were included to construct the domains? 
+ What kinds of tracts did they exclude from the index?
+ Did they take into account regional differences when calculating the index? If so, how?
+ Explain why they incorporated a Poverty and Racial Segregation filter.
+ For 2020, the state is planning to make some changes to the map methodology.  Read their [summary of changes](https://www.treasurer.ca.gov/ctcac/opportunity/memo-on-2019-updates-with-reasons-2-4-20.pdf).  In your own words, succinctly summarize these changes and their reasons.  

<br>

| b. Bring in the State's opportunity data, which I've loaded onto GitHub.

````
state <- read_csv("https://raw.githubusercontent.com/crd150/data/master/lihtccapital.csv")
````

The data contain the index values for all the domains (Economic: *economicc*, Environment: *environc*, Education *educc*) and the composite index (*composite* with the five categories *category* and labels *label*) for urban tracts in the Capital Region.  Merge this file with the file used in Question 1 (*capitaltracts*) using the *GEOID* as the ID.  Map the State's overall opportunity index (*category*)  using the appropriate labels.  (2 points)

***

Website created and maintained by [Noli Brazil](https://nbrazil.faculty.ucdavis.edu/)
