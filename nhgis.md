---
title: 'National Historical Geographic Information System'
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



This mini guide provides step-by-step instructions for downloading data from the [National Historical Geographic Information System](https://www.nhgis.org/) (NHGIS). NHGIS provides Census population, housing, agricultural, and economic data, along with GIS-compatible boundary files, for geographic units in the United States from 1790 to the present.  It offers a user-friendly system for selecting and downloading raw data for processing in R.

We will download the tabular data that was used in [Lab 2](https://crd150.github.io/lab2.html). The guide will also describe how to download shapefiles, which won't be relevant until Week 4.

<div style="margin-bottom:25px;">
</div>
##  **Download tabular data**
\

Navigate to the [NHGIS](https://www.nhgis.org/) home page.  You will need to sign up for a free account.  Click on *LOG IN*  located at the top right of the screen.  Click on *Create an account*, fill out the required info.  You should get an email verifying your registration.

Go back to the NHGIS home page.  We're going to download county-level data on marriage and educational attainment.  

1. Click on *Get Data* next to *Start Here*.
2. On the next page, you should see the following 4 filters

<center>
![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/nhgis1.png)


</center>
\

Select on *Geographic Levels*.  A window pops up allowing you to select the level of geography at which you want your data in.  Select ![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/nhgis2.png) underneath *County*.  Then hit the *Submit* button.

3. Select *Years*.  This will bring up a window allowing you to select which years you want to grab data for.  We want the 2012-2016 5-year ACS - select the checkbox next to *2012-2016* underneath the heading *5-year ranges*. Click *Submit*.

4. Click on *Topics*. This allows you to filter which variables appear for selection by broad topic.  Click ![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/nhgis2.png) next to *Marriage* under *Core Demographics* and *Educational Attainment* under *Education* in the *Table Topic Filter* column (not the *Breakdown Filter*). Click on *Submit*.

5. On the next page you should see the following

<center>
![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/nhgis3.png)

</center>


This will give you variables that contain information on Marriage AND Education.  We want variables that contain info on each topic separately.  Select the pull down menu next to *AND* and select *OR*.

6. Leave the *Datasets* filter alone.  Below the filters are the variables available to download given the filters we selected.  Click on the *Popularity* column. This will sort the variables by the most downloaded by NHGIS users. 

<center>
![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/popularity.png)

</center>


7. Select ![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/nhgis2.png) next to *Educational Attainment for the Population 25 Years and Over*.  That's our education variable.

8. Select ![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/nhgis2.png) next to *Sex by Marital Status for the Population 15 Years and Over*.  That's our marriage variable.

9. Select *Continue* located in the *Data Cart* box at the top right.

10. No need to change anything in the next screen. Select *Continue* in the *Data Cart* box.

11. Keep the defaults in the next page. You can add a description under the *Description* box if you want to remind yourself what these data represent. Otherwise, click on *Submit*.

12. When the data are ready to download, you will get an email.  In that email, click on the link it provides to download the data.  On that page, select *tables* under *Download Table Data*. This will download your data in a zipped folder. Save this download in an appropriate folder on your hard drive.

13. Unzip the folder you downloaded. The unzipped folder should contain two files. A csv file containing your data and a txt file containing meta data.  The record layout/codebook for the file can be found [here](https://raw.githubusercontent.com/crd150/data/master/nhgis0086_ds225_20165_2016_county_codebook.txt).  

<div style="margin-bottom:25px;">
</div>
## **Download shapefiles**
\

You can also download spatial shapefiles of different Census boundaries through NHGIS.  To download Census tract shapefile boundaries, follow the steps below

1. Click on *Get Data* next to *Start Here* from the NHGIS homepage.
2. On the next page, select the *Geographic Levels* filter at the top.
3. A window pops up allowing you to select the level of geography at which you want your data in.  Select ![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/nhgis2.png) underneath *Census Tract*.  Click on the *Submit* button.
4. Click on the *Years* filter.
5. Select the year you want your boundaries in.  The Census changes boundaries for most geographies every 10 years. So, if you select, for example, the 5-year range 2012-2016, you will get Census tract boundaries from 2010.  
6. Click on the *GIS FILES* tab (see figure below) under the *Select Data* section.  Then click on ![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/nhgis2.png) next to the appropriate Census tract year.

<center>
![](/Users/noli/Documents/UCD/teaching/CRD150/Lab/crd150.github.io/gis.png)

</center>


7. Select *Continue* located in the *Data Cart* box at the top right.

8. No need to change anything in the next screen. Select *Continue* in the *Data Cart* box.

9. Keep the defaults in the next page. You can add a description under the *Description* box if you want to remind yourself what these data represent. Otherwise, click on *Submit*.

10. When the data are ready to download, you will get an email.  In that email, click on the link it provides to download the data.  On that page, select *tables* under *Download Table Data*. This will download your data in a zipped folder. Save this download in an appropriate folder on your hard drive.

13. Unzip the folder you downloaded. You will likely need to unzip another folder found within that unzipped folder.  After that you should find Census tract shapefiles.  Note that you will get a shapefile of census tracts for the entire United States.  Unlike with the Census API, you can't subset your geometry to a lower scale of geography like the state.  You'll need to use a function like `st_within()` in the **sf** package or `ms_clip()` in the *rmapshaper*.

<div style="margin-bottom:25px;">
</div>
## **Resources**
\

Check out NHGIS' [User Resources](https://nhgis.org/user-resources) page for more tutorials, answers to Frequently Asked Questions, and other information.


***

<a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/">Creative Commons Attribution-NonCommercial 4.0 International License</a>.


Website created and maintained by [Noli Brazil](https://nbrazil.faculty.ucdavis.edu/)
