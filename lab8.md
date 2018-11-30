---
title: "Lab 8: Opportunity Mapping"
subtitle: <h4 style="font-style:normal">CRD 150 - Quantitative Methods in Community Research</h4>
author: <h4 style="font-style:normal">Professor Noli Brazil</h4>
date: <h4 style="font-style:normal">November 30, 2018</h4>
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





In this guide you will learn how to condense a suite of neighborhood variables into a numeric opportunity index.  The objectives of the guide are as follows

1. Understand the data workflow for computing indices
2. Learn about standardization
3. Create a numeric index of opportunity

<p class="comment", style="font-style:normal">**Assignment 8 is an extra credit assignment.  It is due by 9:00 am, December 7th on Canvas.**  See [here](https://crd150.github.io/hw_guidelines.html) for assignment guidelines.  You must submit an `.Rmd` file and its associated `.html` file. Name the files: yourLastName_firstInitial_asgn08. For example: brazil_n_asgn08.</p>

<div style="margin-bottom:25px;">
</div>
## **Workflow**
\

As we discussed in lecture and outlined in more detail in the handout, the basic workflow for creating a neighborhood index or typology is as follows

1. Establish the theoretical framework for the model
2. Collect data on variables that capture important contextual features of a neighborhood
3. Clean, process, and transform input variables
4. Select modelling approach: numeric index or categorical typology
5. Run, refine, alter and expand model
6. Map your index/typology

Because of the campus closure, we were not able to go through how to create a neighborhood typology.  As such, this lab will focus on creating numeric indices.

<div style="margin-bottom:25px;">
</div>
## **Load necessary packages**
\

We will not be introducing new packages in this lab. All the packages we need to load should be pretty familiar to you at this point.


```r
library(tidyverse)
library(sf)
library(tigris)
options(tigris_class = "sf")
library(VIM)
library(tidyimpute)
library(tmap)
```


<div style="margin-bottom:25px;">
</div>
## **Opportunity Indices**
\

In this section, we're going to use the underlying 2014 tract-level data that make up the the [Regional Opportunity Index (ROI)](https://interact.regionalchange.ucdavis.edu/roi/data.html), which is a numeric index of opportunity for California neighborhoods created by the [Center for Regional Change](https://regionalchange.ucdavis.edu/) at UC Davis.  The variables were chosen based on a critical review of the literature, which accomplishes steps 1 and 2 in the above workflow.  Bring in the ROI data, which are available on Github, into R


```r
roi.tract.data <- read_csv("https://raw.githubusercontent.com/crd150/data/master/roi_data_2014.csv")
```

The data are largely cleaned, so step 3 is partially done. This includes converting variable counts to percentages, ratios, and rates where appropriate.  The variables correspond to different place dimensions: Education, Economic, Housing, Health/Environment, and Civic Life.  Detailed information on these domains and their variables can be found on the [ROI website](https://interact.regionalchange.ucdavis.edu/roi/Download_Data/ROI%20Metadata.pdf). You can view the record layout for the variables in *roi.tract.data* [here](https://raw.githubusercontent.com/crd150/data/master/record_layout.xlsx).  Note that the ROI has two indices: one for people and another for place.  We will be working on data for the place index.

I said that the data are *largely* cleaned.  We still have some missingness to deal with.


```r
summary(aggr(roi.tract.data))
```

Use the `impute_mean()` function to impute the mean for missing values. The mean percent Hispanic is likely very different in Butte county than in Los Angeles county. Rather than imputing the California state mean, let's use `group_by()` to impute the county means.  The variable *cntyfips* provides the unique county ID.


```r
roi.tract.data <- roi.tract.data %>%
    group_by(cntyfips) %>%
    impute_mean(edplc1:soplc2) %>%
    ungroup()
summary(aggr(roi.tract.data))
```

The one variable still missing values is *placenm* which provides the name of the place/city, which we don't need to worry about in this guide. 

<div style="margin-bottom:25px;">
</div>
### **Standardizing variables**
\

In order to combine variables into either an index or typology, we need to standardize them.  We do this to get the variables onto the same scale.  That is, variables are measured across multiple measurement scales, from percentages such as percent non-Hispanic black to ratios such as population density.  A common approach to standardizing a variable is to calculate its z-score, which we've covered a couple time throughout the quarter, including in [Lab 7](https://crd150.github.io/lab7.html).  The z-score is a measure of distance from the mean, in this case the mean of all tracts in an area.  

Higher values on an opportunity index should mean more opportunity. This means the variables used in the index should also be scaled that way. However, not all variables follow this format.  For example, the variable *edplc4* is the percentage of high school students in the school district who were suspended or expelled.  Higher values here indicate lower opportunity.  These indicators need to be inverted before including them in the index.  For percentages, the inverse is 100-percentage.  Variables on other scales are inverted by the reciprocal of the variable (1 divided by the value). The other variable in the data set that needs inversion is *enplc4*, the annual mean concentration of PM2.5 (exposure to pollution).


```r
roi.tract.data <-roi.tract.data %>%
  mutate(edplc4 = 100-edplc4, enplc4 = 1/enplc4) 
```

Let's calculate the z-score for the variable *hsplc1*.  Create a variable named *hsplc1z* that subtracts from each tract's value on *hsplc1* the total mean of *hsplc1* and then divided by the standard deviation of *hsplc1*.  The mean and standard deviation of *hsplc1* should be 0 and 1 respectively.


```r
roi.tract.data %>%
  mutate(hsplc1z = (hsplc1-mean(hsplc1))/sd(hsplc1)) %>%
  summarize(hsplc1zm = mean(hsplc1z), hsplc1zs = sd(hsplc1z))
```

```
## # A tibble: 1 x 2
##   hsplc1zm hsplc1zs
##      <dbl>    <dbl>
## 1 6.06e-16       1.
```

We need to do this for all variables in the data set. We did this in [Lab 7](https://crd150.github.io/lab7.html) when we calculated concentrated disadvantage.  That exercise involved standardizing 6 variables.  But, in most opportunity index exercises, you'll be dealing with a lot of variables.  For example, the complete (place and people) ROI incorporates 31 variables.  Yes, you can repeat the above code 31 times, but is there a more efficient way? Why yes!  Instead of writing out the above code for every variable, we can *gather* the data as described on page 152-154 in RDS using the function `gather()` 


```r
roi.std <-roi.tract.data %>%
  gather(variable, value, -c(cntyfips, cntyname, tract, placenm)) %>%
  group_by(variable) %>%
  mutate(mean = mean(value), sd = sd(value), z = (value-mean)/sd) %>%
  select(-(c(value, mean, sd))) %>%
  spread(variable, z)
```

The `gather()` function creates a tract by variable data set.  The `group_by()` function groups the data set by *variable*.  In the `mutate()` command, we calculate the mean, standard deviation, and the z-score for each variable.  We discard unnecessary variables in the `select()` command, and then spread the data back to a tract-level data set using the `spread()` function. Instead of 31+ lines of code, we were able to complete the task of standardizing 31 variables in 6 lines of code.  Efficiency is next to godliness. Or something like that.

<div style="margin-bottom:25px;">
</div>
### **Combining into domains**
\

The next step is to take the average of the variables within each of the ROI domains.  The crosswalk between variables and domains is provided in the [record layout](https://raw.githubusercontent.com/crd150/data/master/record_layout.xlsx).  Let's calculate the average for the Economic domain.


```r
roi.std <- mutate(roi.std, Economic = (ecplc1+ecplc2+ecplc3+ecplc4)/4)
```

Calculate the other domains and then average the domain specific averages to get an overall index. We'll let you do this for the Assignment.

<div style="margin-bottom:25px;">
</div>
### **Mapping the indices**
\

We've got our indices, now its time to map them.  The data frame *roi.std* contains tracts for all of California.  Let's bring in a shapefile of California census tracts using the `tracts()` function from the **tigris** package.


```r
ca.tracts <- tracts("CA") %>%
#Converts GEOID from character to numeric to match roi.std
              mutate(tract = as.numeric(GEOID))
```

Next, we merge the indices into the **sf** object *ca.tracts* using `left_join()`


```r
ca.tracts.z <- left_join(ca.tracts, roi.std, by = "tract")
```

Finally, we use **tmap** to map the indices.  Let's put the map into view mode so we can zoom in and out of different areas of California. Following how the ROI is presented by the CRC, we break the categories into quintiles where darker green indicates higher opportunity and darker brown represents lower opportunity. Here's the Economic index. 




```r
ca.map.ind.ov <- tm_shape(ca.tracts.z) +
  tm_polygons(col = "Economic", style = "quantile", palette = "BrBG",
              border.alpha = 0, alpha = 0.75, title = "Economic Opportunity")
tmap_mode("view")
ca.map.ind.ov + tm_view(basemaps="Hydda.Full")
```

What is the Economic Opportunity landscape like in the City of Davis? Zoom in and find out.

The legend is not very illustrative. We can add labels to the legend to indicate lowest to highest opportunity.  We'll first cut the *Economic* variable into quintiles (five equal groups) using the `cut()` and `quantile()` commands together and then attach labels to the groups.  We did something similar in [Lab 5](https://crd150.github.io/lab5.html#local_spatial_autocorrelation:_getis-ord) when we labelled hot and cold spots.


```r
ca.tracts.z <- mutate(ca.tracts.z, EconomicQ = cut(Economic, breaks=quantile(Economic, c(0,0.2,0.4,0.6,0.8,1), na.rm=TRUE), labels = c("Lowest Opportunity", "Low", "Moderate", "High", "Highest Opportunity")))
```

Now let's map the index with labels.


```r
ca.map.ind.ec <- tm_shape(ca.tracts.z) +
  tm_polygons(col = "EconomicQ",  palette = "BrBG",
              border.alpha = 0, title = "Economic Opportunity", midpoint = NA)
ca.map.ind.ec + tm_view(basemaps="Hydda.Full")
```

The next step is to share your findings.  One way to do it is through a [Story Map](https://storymaps.arcgis.com/en/).  Check the document ArcGIS_Online_StoryMaps_Tutorials.pdf in the Week 9 -> Lab folder for tutorials and examples of making Story Maps using ArcGIS online.


<div style="margin-bottom:25px;">
</div>
## **Assignment 8**
\

Assignment 8 is an extra credit assignment.

Download and open the [Assignment 8 R Markdown Script](https://raw.githubusercontent.com/crd150/data/master/assgn8.Rmd). Any response requiring a data analysis task  must be supported by code you generate to produce your result. (Just examining your various objects in the “Environment” section of R Studio is insufficient—you must use scripted commands.). 

Note that this assignment relies on ca.tracts.z, which we created in the lab guide. Copy and paste the code that creates this object in the beginning of your R Markdown because you will need it to successfully knit your document.

1. Let's share our maps with the outside world! You'll be creating a presentation-ready Story Map of the Regional Opportunity Index (ROI) using ArcGIS online.

a. Using the file ca.tracts.z, which we constructed in lab, create indices for the Housing, Education, Health, and Civic Life ROI subdomains.  (2 points)
b. Create an overall opportunity index. (1 point)
c. In the lab guide, we created labels (High opportunity, High, ... Low Opportunity) for the Economic Opportunity Index in California neighborhoods.  Create labels for the other subdomain indices and the overall index.  (1 point)
d. Filter *ca.tracts.z* to keep tracts in Sacramento city. Save this as a shapefile in an appropriate folder. Zip together all 4 files associated with the shapefile. 
e. Log onto [ArcGIS online](https://www.arcgis.com/home/index.html). Create a map showing the overall Opportunity Index in Sacramento.  Save this map.
f. Create separate maps for the Economic, Education, Housing, Health, and Civic Life indices. Save these maps.
g. Create a [Story Map](https://storymaps.arcgis.com/en/) showing Opportunity in Sacramento. You can use any Story Map type (e.g. Journal, Tour, Cascade, etc.). At the minimum, you should have an appropriate title page, a "slide"" briefly describing the methodology used to create the indices, and "slides" separately showing maps of the overall index and the subdomain indices with appropriate text explaining what is presented in each map. (6 points)

Save the Story Map, make it public, and submit the Story Map URL.  You will be graded primarily on how presentation-ready your Story Map is - if a lay person stumbles upon your Story Map (remember that your story maps can be publicly viewed by the ArcGIS community), will they understand what is being presented?  A Story Map is exactly what is sounds like - a story being told through maps.  Do you like boring stories? Do you like confusing stories? Probably not.


***

Website created and maintained by [Noli Brazil](https://nbrazil.faculty.ucdavis.edu/)
