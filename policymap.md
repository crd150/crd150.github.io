---
title: 'Downoading data from PolicyMap'
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




This mini guide provides step-by-step instructions for downloading data from [PolicyMap](https://ucdavis.policymap.com/maps). PolicyMap is a fully web-based online data and mapping application that gives you access to over 15,000 indicators related to demographics, housing, crime, mortgages, health, jobs and more. Data are available at all common geographies (address, block group, census tract, zip code, county, city, state, Metropolitan area) as well as unique geographies like school districts and political boundaries. 

In this guide, we will download PolicyMap census tract data for the City of Oakland. We will download median household income, percent Hispanic, percent black, a categorical variable of whether the tract is designated as an [Opportunity Zone](http://dof.ca.gov/Forecasting/Demographics/opportunity_zones/) (a federally funded neighborhood-based economic development program initiated earlier this year) and the home mortgage loan-to-income leverage ratio. This is the same data we used in [Lab 3](https://crd150.github.io/lab3.html) except just for Oakland.   UC Davis provides full access to all PolicyMap tools for staff, students, and faculty.  You can access the full site only if you are on campus or logged onto the UC Davis [VPN](https://www.library.ucdavis.edu/service/connect-from-off-campus/). We will download data from the UCD PolicyMap portal and clean up the files in Excel and R.

<div style="margin-bottom:25px;">
</div>
##  **Download data**
\


1. Navigate to the UC Davis [PolicyMap portal](https://ucdavis.policymap.com/maps).  You should see a webpage that looks like the figure below.  Note the UC Davis logo on the top right.  Go Aggies!

<center>
![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/pmpage.png)

</center>


2. You should see a *Location* search bar somewhere near the top of the page.  Type in "Oakland, CA" in the search bar and *Oakland, CA (City)* should pop up below - select it.

<center>
![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/typeoakland.png)

</center>

You should get a map that highlights Oakland's boundaries.

<center>
![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/oaklandmap1.png)

</center>

3. The map does not show any data.  Let's add the "Loan to Income Leverage Ratio." Click on the *Lending* tab, followed by *Loan to Income "Leverage"" Ratio* and then *All Loans*.

<center>
![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/levratio.png)

</center>

Now your map should look like the following

<center>
![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/levratiomap.png)

</center>

4. Notice in the legend window you can change various aspects of the variable, including the year

<center>
![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/pmyear.png)

</center>

the data type

<center>
![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/pmdata.png)

</center>

and the geographic level.  

<center>
![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/pmgeo.png)

</center>

Leave the defaults (Year: 2012-2016, Variable: Number, and Shaded by: Census Tract, 2010).  

5. Let's download these data.  At the top right of the site, click on the download icon ![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/download.png).  

6. A window should pop up. The first screen asks you what data to download - it should be "Median leverage ratio for all loans in 2016" under Layer. Click on the *Next, Select Location* button

<center>
![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/pmfirst.png)

</center>


7. The next screen asks you to select a location.  It should be *Oakland City, CA (City, 2010)* and *Shaded by Census Tract*.  Click on *Next, Confirm Download*.  


<center>
![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/pmsecond.png)

</center>


8. The next screen asks you to confirm the download - just click on Download CSV ![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/dlcsv.png)

9. After a minute or two, a screen like below (on a Mac laptop) should pop up.  

<center>
![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/downloadcsv.png)

</center>

Save the file into an appropriate folder, such as below (Mac laptop)

<center>
![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/pmfolder.png)

</center>


10. PolicyMap allows you to download only one variable at the time.  So, you'll need to go through the above steps again to get the other variables.  To download Opportunity Zone designation, navigate to the *Federal Guidelines* tab, then under *Additional CDFI Fund Data* select *Opportunity Zones (QOZ)*.  

<center>
![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/pmozone.png)

</center>

Which should give you a map that looks like

<center>
![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/ozonemap.png)

</center>

Follow the same steps above to download these data as a csv into an appropriate folder on your hard drive. 

To get percent black, navigate to the *Demographics* tab, then under *Race* select *Black*. To download percent Hispanic, navigate to the *Demographics* tab, then under *Ethnicity* select *Hispanic* and finally *All*.  To download median household income, navigate to the *Incomes & Spending* tab, then under *Household*, select *All Households* under *Affordability*.     You should have 5 separate csv files representing each variable.


<div style="margin-bottom:25px;">
</div>
##  **Deleting footers**
\

The files you download from PolicyMap are in csv format.  The bottom of every PolicyMap csv will contain information on the Location, geographic scale, data source, and reminders to cite PolicyMap. 

<center>
![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/pmfooter.png)

</center>

These text will screw up how R reads in the files, so we need to delete them. Although you can set up R code to do this, for now let's just manually delete the text in Microsoft Excel.  Open up the csv file in Microsoft Excel, scroll to the bottom, select the rows containing the unnecessary text, right click, and then select Delete.  
<center>
![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/pmdelete.png)

</center>

After you've deleted the footers, save the file.

<div style="margin-bottom:25px;">
</div>
##  **Bring data into R**
\

The next step is to bring the PolicyMap csv files into R one at a time.  

1. First thing to do is load in the necessary R packages.


```r
library(tidyverse)
```

2. Next, set your working directory to the folder where your PolicyMap files are located.




```r
setwd("file path to your PolicyMap csvs")
```

3. Next, bring in the csv files using the function `read_csv()`.  Note in the code below that the file names in parentheses will differ from yours, but *file1* contains the Loan to Income ratio data, *file2* contains the Opportunity Zone data, *file3* contains percent Hispanic, *file4* contains percent black, and *file5* contains median household income.


```r
file1 <- read_csv("PolicyMap Data 2018-10-06 0004UTC.csv")
file1
```

```
## # A tibble: 113 x 4
##    `Census Tract`  `FIPS Code` `Formatted FIPS` `Median leverage ratio for all …
##    <chr>                 <dbl> <chr>            <chr>                           
##  1 06001409000, CA  6001409000 06001409000      3.19                            
##  2 06001401700, CA  6001401700 06001401700      3.07                            
##  3 06001408100, CA  6001408100 06001408100      3.11                            
##  4 06001410000, CA  6001410000 06001410000      3.51                            
##  5 06001400100, CA  6001400100 06001400100      3.01                            
##  6 06001981900, CA  6001981900 06001981900      N/A                             
##  7 06001404600, CA  6001404600 06001404600      3.31                            
##  8 06001409900, CA  6001409900 06001409900      3.37                            
##  9 06001404400, CA  6001404400 06001404400      3.04                            
## 10 06001404502, CA  6001404502 06001404502      3.1                             
## # … with 103 more rows
```

```r
file2 <- read_csv("PolicyMap Data 2018-10-06 0007UTC.csv")
file2
```

```
## # A tibble: 113 x 4
##    `Census Tract`  `FIPS Code` `Formatted FIPS` `Designated Qualified Opportuni…
##    <chr>                 <dbl> <chr>            <chr>                           
##  1 06001409000, CA  6001409000 06001409000      Designated Qualified Opportunit…
##  2 06001401700, CA  6001401700 06001401700      Designated Qualified Opportunit…
##  3 06001408100, CA  6001408100 06001408100      Not Designated                  
##  4 06001410000, CA  6001410000 06001410000      Not Designated                  
##  5 06001400100, CA  6001400100 06001400100      Not Designated                  
##  6 06001981900, CA  6001981900 06001981900      Not Designated                  
##  7 06001404600, CA  6001404600 06001404600      Not Designated                  
##  8 06001409900, CA  6001409900 06001409900      Not Designated                  
##  9 06001404400, CA  6001404400 06001404400      Not Designated                  
## 10 06001404502, CA  6001404502 06001404502      Not Designated                  
## # … with 103 more rows
```

```r
file3 <- read_csv("PolicyMap Data 2018-10-07 2245UTC.csv")
file3
```

```
## # A tibble: 113 x 4
##    `Census Tract`  `FIPS Code` `Formatted FIPS` `Estimated percent of all peopl…
##    <chr>                 <dbl> <chr>                                       <dbl>
##  1 06001409000, CA  6001409000 06001409000                                 53.2 
##  2 06001401700, CA  6001401700 06001401700                                 31.4 
##  3 06001408100, CA  6001408100 06001408100                                 11.2 
##  4 06001410000, CA  6001410000 06001410000                                  6.36
##  5 06001400100, CA  6001400100 06001400100                                  2.75
##  6 06001981900, CA  6001981900 06001981900                                  0   
##  7 06001404600, CA  6001404600 06001404600                                  3.77
##  8 06001409900, CA  6001409900 06001409900                                 14.7 
##  9 06001404400, CA  6001404400 06001404400                                  6.62
## 10 06001404502, CA  6001404502 06001404502                                  8.13
## # … with 103 more rows
```

```r
file4 <- read_csv("PolicyMap Data 2018-10-07 2223UTC.csv")
file4
```

```
## # A tibble: 113 x 4
##    `Census Tract`  `FIPS Code` `Formatted FIPS` `Estimated percent of all peopl…
##    <chr>                 <dbl> <chr>                                       <dbl>
##  1 06001409000, CA  6001409000 06001409000                                 34.9 
##  2 06001401700, CA  6001401700 06001401700                                 24.0 
##  3 06001408100, CA  6001408100 06001408100                                 22.4 
##  4 06001410000, CA  6001410000 06001410000                                 44.3 
##  5 06001400100, CA  6001400100 06001400100                                  3.05
##  6 06001981900, CA  6001981900 06001981900                                  0   
##  7 06001404600, CA  6001404600 06001404600                                  4.65
##  8 06001409900, CA  6001409900 06001409900                                 46.9 
##  9 06001404400, CA  6001404400 06001404400                                  2.04
## 10 06001404502, CA  6001404502 06001404502                                  4.9 
## # … with 103 more rows
```

```r
file5 <- read_csv("PolicyMap Data 2018-10-07 2224UTC.csv")
file5
```

```
## # A tibble: 113 x 4
##    `Census Tract`  `FIPS Code` `Formatted FIPS` `Estimated typical (median) inc…
##    <chr>                 <dbl> <chr>                                       <dbl>
##  1 06001409000, CA  6001409000 06001409000                                 44125
##  2 06001401700, CA  6001401700 06001401700                                 66308
##  3 06001408100, CA  6001408100 06001408100                                103670
##  4 06001410000, CA  6001410000 06001410000                                107083
##  5 06001400100, CA  6001400100 06001400100                                177417
##  6 06001981900, CA  6001981900 06001981900                                105714
##  7 06001404600, CA  6001404600 06001404600                                163322
##  8 06001409900, CA  6001409900 06001409900                                 97689
##  9 06001404400, CA  6001404400 06001404400                                150074
## 10 06001404502, CA  6001404502 06001404502                                133068
## # … with 103 more rows
```

4. Using the function `left_join()`, we then merge all the files together using the Census tract ID *FIPS Code* (the variables *Census Tract* or *Formatted FIPS* also work as IDs).  We save the merged files into a tibble named *oakland*.


```r
oakland <- file1 %>%
        left_join(file2, by ="FIPS Code") %>%
        left_join(file3, by ="FIPS Code") %>%
        left_join(file4, by ="FIPS Code") %>%
        left_join(file5, by ="FIPS Code")
oakland
```

```
## # A tibble: 113 x 16
##    `Census Tract.x` `FIPS Code` `Formatted FIPS… `Median leverag…
##    <chr>                  <dbl> <chr>            <chr>           
##  1 06001409000, CA   6001409000 06001409000      3.19            
##  2 06001401700, CA   6001401700 06001401700      3.07            
##  3 06001408100, CA   6001408100 06001408100      3.11            
##  4 06001410000, CA   6001410000 06001410000      3.51            
##  5 06001400100, CA   6001400100 06001400100      3.01            
##  6 06001981900, CA   6001981900 06001981900      N/A             
##  7 06001404600, CA   6001404600 06001404600      3.31            
##  8 06001409900, CA   6001409900 06001409900      3.37            
##  9 06001404400, CA   6001404400 06001404400      3.04            
## 10 06001404502, CA   6001404502 06001404502      3.1             
## # … with 103 more rows, and 12 more variables: `Census Tract.y` <chr>,
## #   `Formatted FIPS.y` <chr>, `Designated Qualified Opportunity Zones, as of
## #   2018.` <chr>, `Census Tract.x.x` <chr>, `Formatted FIPS.x.x` <chr>,
## #   `Estimated percent of all people who were Hispanic between 2012-2` <dbl>,
## #   `Census Tract.y.y` <chr>, `Formatted FIPS.y.y` <chr>, `Estimated percent of
## #   all people who were Black between 2012-2016` <dbl>, `Census Tract` <chr>,
## #   `Formatted FIPS` <chr>, `Estimated typical (median) income of a household
## #   between 2012-20` <dbl>
```

<div style="margin-bottom:25px;">
</div>
## **Data Wrangling in R**
\

We need to clean up the file to get it ready for analysis. 

<div style="margin-bottom:25px;">
</div>
### **Basic cleaning tasks**
\

We need to subset columns, rename variables, and deal with badly coded values.


```r
oakland<- oakland %>% 
  rename(levratio="Median leverage ratio for all loans in 2016.", 
  oppzone ="Designated Qualified Opportunity Zones, as of 2018.", 
  phisp = "Estimated percent of all people who were Hispanic between 2012-2",
  pblk = "Estimated percent of all people who were Black between 2012-2016",
  medincome = "Estimated typical (median) income of a household between 2012-20",
  fips = "FIPS Code") %>%
  select(levratio, oppzone, phisp, pblk, medincome, fips) %>%
  mutate(levratio = as.double(replace(levratio, levratio == "N/A", "NA")))
```

What did we just do? 

* `rename()` renames some of the variables such that labels are easier to process in R (e.g. no spaces, concise).
* The `select()` function keeps only the necessary variables to reduce the clutter.
* R read the variable *Median leverage ratio for all loans in 2016* as a character and not a numeric, which is incorrect.  This happened because missing values are designated as "N/A" in PolicyMap not "NA", which is how R designates missing values.  In order to get the variable into its proper numeric form, convert "N/A" to "NA". The `replace()` function tells R to replace values in *levratio* that are equal to "N/A" to the value "NA". The function `as.double()` then tells R to convert the character variable *levratio* to a double. 

The tibble should now look like the following


```r
oakland
```

```
## # A tibble: 113 x 6
##    levratio oppzone                              phisp  pblk medincome      fips
##       <dbl> <chr>                                <dbl> <dbl>     <dbl>     <dbl>
##  1     3.19 Designated Qualified Opportunity Zo… 53.2  34.9      44125    6.00e9
##  2     3.07 Designated Qualified Opportunity Zo… 31.4  24.0      66308    6.00e9
##  3     3.11 Not Designated                       11.2  22.4     103670    6.00e9
##  4     3.51 Not Designated                        6.36 44.3     107083    6.00e9
##  5     3.01 Not Designated                        2.75  3.05    177417    6.00e9
##  6    NA    Not Designated                        0     0       105714    6.00e9
##  7     3.31 Not Designated                        3.77  4.65    163322    6.00e9
##  8     3.37 Not Designated                       14.7  46.9      97689    6.00e9
##  9     3.04 Not Designated                        6.62  2.04    150074    6.00e9
## 10     3.1  Not Designated                        8.13  4.9     133068    6.00e9
## # … with 103 more rows
```

<div style="margin-bottom:25px;">
</div>
### **Dealing with missing values**
\

Missing values are a part of a social scientist's life.  You can't avoid them.  Read the mini lab [dealing with missing data](https://crd150.github.io/missingdata.html) for a tutorial on how to deal with missing data. Briefly, below are the steps to tackle missing data in our PolicyMap data set.

1. The first step is to determine what percentage of your cases are missing data.  The best function for doing this in R is `aggr()`, which is in the **VIM** package.  If you already haven't, install this package using `install.packages()`.  Then load it into R using `library()`. 


```r
install.packages("VIM")
library(VIM)
```



Then run the `aggr()` function as follows


```r
summary(aggr(oakland))
```

![](policymap_files/figure-html/unnamed-chunk-10-1.png)<!-- -->

```
## 
##  Missings per variable: 
##   Variable Count
##   levratio     2
##    oppzone     0
##      phisp     0
##       pblk     0
##  medincome     0
##       fips     0
## 
##  Missings in combinations of variables: 
##  Combinations Count   Percent
##   0:0:0:0:0:0   111 98.230088
##   1:0:0:0:0:0     2  1.769912
```

The results show two tables and two plots.  The left-hand side plot shows the proportion of cases that are missing values for each variable in the data set.  The right-hand side plot shows which combinations of variables are missing.  The first table shows the number of cases that are missing values for each variable in the data set. The second table shows the percent of cases missing values based on combinations of variables.  The results show that 2 or 1.8% of census tracts are missing values on the variable *levratio*. 

2. Recall from Week 2 the two basic methods for dealing with missing values: (1) Ignore the observations with missing values or (2) Impute the mean.  Usually, it is better to keep observations than discard or ignore them, so let's go with strategy (2).  To impute the mean, we need to use the `impute_mean()` function in the **tidyimpute** package.  Install this package using `install.packages()` and load it into R.  


```r
install.packages("tidyimpute")
library(tidyimpute)
```



Then use the function `impute_mean()`. To use this function, pipe in the data set *oakland*.  Then type in the variables you want to impute missing values for. 


```r
oakland <- oakland %>%
    impute_mean(levratio)
```

We should now have no missing values (I suppressed the plot using the argument `plot=FALSE`).


```r
summary(aggr(oakland, plot=FALSE))
```

```
## 
##  Missings per variable: 
##   Variable Count
##   levratio     0
##    oppzone     0
##      phisp     0
##       pblk     0
##  medincome     0
##       fips     0
## 
##  Missings in combinations of variables: 
##  Combinations Count Percent
##   0:0:0:0:0:0   113     100
```

Note that you can impute more than one variable within `impute_mean()`. 

Save the data set using the function `write_csv()` in an appropriate folder on your hard drive.  The data set is now ready for analysis!  [Applause](https://www.youtube.com/watch?v=pco91kroVgQ).

***

<a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/">Creative Commons Attribution-NonCommercial 4.0 International License</a>.


Website created and maintained by [Noli Brazil](https://nbrazil.faculty.ucdavis.edu/)
