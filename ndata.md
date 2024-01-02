---
title: "Neighborhood Data Sources"
subtitle: <font size="4">CRD 150 - Quantitative Methods in Community Research</font>
author: Winter 2024
output: 
  html_document:
    theme: cosmo
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





This guide lists and describes online sources that provide data typically in a csv or shapefile format at a local scale, specifically the United States census tract.  A census tract generally encompasses a population between 2,000 to 8,000 residents.  Given empirical, software, data, and theoretical advancements, social scientists are utilizing more flexible geographic scales to measure the neighborhood environment.  However, as a convenient source used by various stakeholders for making decisions at the local level, census tracts are still quite relevant in research, policy and applied practice.  Below are online data sources organized by topic or theme.


**Comprehensive neighborhood data sources**

* [PolicyMap](https://ucdavis.policymap.com/maps) 
    + PolicyMap is a data and mapping resource that provides a wealth of policy, education, socioeconomic, demographic, health and neighborhood dimension data at various geographic scales including census tracts.  As UC Davis affiliates, we have access to the subscription or paid edition. You either need to be on campus or on [VPN](https://www.library.ucdavis.edu/service/connect-from-off-campus/) setup.  Although allowing the user to upload and map shapefiles, the site does not allow you to download shapefiles.

* [Social Explorer](https://www.socialexplorer.com/)
    + Similar to PolicyMap, but focuses more on historical data, including Census data going back to the first Census in 1790. Also like PolicyMap, UC Davis affiliates have access to all Social Explorer tools. Focuses on census data, but provides data from other sources, including religious organizations.
    

* [National Neighborhood Data Archive](https://www.icpsr.umich.edu/web/ICPSR/series/1920)  
  + The National Neighborhood Data Archive is a publicly available data archive containing contextual measures for neighborhoods, typically census tracts, across the United States. NaNDA offers theoretically derived, spatially referenced, nationwide measures of the physical and social environment at local levels.    

**Decennial Census and American Community Survey**

The Census represents the most comprehensive source for demographic and socioeconomic data at the census tract level.  You can download tract level data from the following sources

* [U.S. Census Data Repository](https://data.census.gov/cedsci/)

* [Social Explorer](https://www.socialexplorer.com/)

* [National Historical Geographic Information System](https://www.nhgis.org/)

* [PolicyMap](https://ucdavis.policymap.com/maps) 

You can download Census tract shapefiles (and other spatial data formats) at the following sites

* [United States Census](https://www.census.gov/geographies/mapping-files/time-series/geo/carto-boundary-file.html)

* [National Historical Geographic Information System](https://www.nhgis.org/)

If you want to evaluate tract characteristics over a long time period, you'll need to account for changes in tract boundary definitions.  Social explorer allows you to get historical census data in 2010 tract boundaries.  Other resources for getting data normalized to a certain year's boundary definition include

* [United States Census](https://www.census.gov/geographies/reference-files/time-series/geo/relationship-files.html)
    + The U.S. Census provides relationship files that allow you to normalize data to a specific year for the tract (and other small scale geographies).
    
* [Geolytics Neighborhood Change Database](http://demographics.geolytics.com/ncdb2010/login.aspx)
    + As a UC Davis affiliate, you have access to this paid dataset.  Just be on campus or use [VPN](https://www.library.ucdavis.edu/service/connect-from-off-campus/) to access.  The site allows you to download tract data going back to 1970 normalized to 2010 boundaries.
    
* [Longitudinal Tract Database](https://s4.ad.brown.edu/projects/diversity/researcher/bridging.htm)
    + This site's tools are free to the public.  In addition to providing preloaded census data normalized to a certain boundary year, the site provides crosswalks that allow you to normalize *any* tract level data.
    
* [Interpolation](https://walker-data.com/census-r/spatial-analysis-with-us-census-data.html?q=interpolate#area-weighted-areal-interpolation)
    + You can interpolate estimates of census tracts over time using interpolation functions available in the **sf** package. 
    
**Health characteristics**

The following datasets provide health related indicators at small scale geographies.

* [PLACES: Local Data for Better Health](https://www.cdc.gov/places/index.html)
    + This dataset, put together by the Centers for Disease Control and Prevention (CDC), provides city- and census tract-level small area estimates for chronic disease risk factors, health outcomes, and clinical preventive service use for census tracts in the United State.
    
* [Healthy Places Index](https://www.healthyplacesindex.org/) 
  + A project of the Public Health Alliance of Southern California, The Healthy Places Index (HPI) is a powerful and easy-to-use data and policy platform created to advance health equity through open and accessible data. Neighborhood-by-neighborhood, the HPI maps data on social conditions that drive health — like education, job opportunities, clean air and water, and other indicators that are positively associated with life expectancy at birth. 

* [CalEnviroScreen](https://oehha.ca.gov/calenviroscreen/report/calenviroscreen-40)  
    + Developed by California's Office of Environmental Health Hazard Assessment, CalEnviroScreen is is a screening tool that evaluates the burden of pollution from multiple sources in California communities while accounting for potential vulnerability to the adverse effects of pollution.  You can also download a shapefile of census tracts with these indicators [here](https://oehha.ca.gov/calenviroscreen/maps-data/download-data).
  

* [EJScreen](https://www.epa.gov/ejscreen/download-ejscreen-data) 
  + Developed by the Environmental Protection Agency, EJScreen is a new nationwide environmental justice (EJ) mapping and screening tool It is based on nationally consistent data and an approach that combines environmental and demographic indicators 



**Department of Housing and Urban Development (HUD)**

HUD offers a plethora of lower geographic scale datasets on a variety of housing, built environment, and socioeconomic indicators for the country or select Metropolitan Areas.  The main data splash page for the HUD is located [here](https://www.huduser.gov/portal/pdrdatas_landing.html).  Many of the datasets provide indicators of HUD funding, such as tracts that qualify for [Low-Income Housing Tax Credit](https://www.huduser.gov/portal/datasets/qct.html).  They also provide [Fair Area Market Rents](https://www.huduser.gov/portal/datasets/fmr/smallarea/index.html) at the zip code level, and georeferenced data located on their [eGIS open data portal](https://hudgis-hud.opendata.arcgis.com/), which includes point level information.


**Work commuting patterns**

* [OnTheMap](https://onthemap.ces.census.gov/)
    + OnTheMap is an application that shows where workers are employed and where they live. The data come from the [Longitudinal Employer-Household Dynamics](https://lehd.ces.census.gov/) Program, specifically from their Origin-Destination Employment Statistics (LODES).  OnTheMap also provides reports on age, earnings, industry distributions, race, ethnicity, educational attainment, and sex.  You can use functions from the package **lehdr** to bring in data directly into R using an API.  A brief introduction to the package can be found [here](https://jamgreen.github.io/lehdr/articles/getting_started.html).



**Eviction rates**

* [Eviction Lab](https://evictionlab.org/)
    + The Eviction Lab at Princeton University has built the first nationwide database of evictions aggregated to various geographic scales including block groups and tracts. It as an open-source resource, available to researchers, citizen organizers, and journalists to use, disseminate, and even augment with new data that they collect.


**Gentrification**

* [Urban Displacement Project](http://www.urbandisplacement.org/)
    + Developed by researchers at UC Berkeley, the Urban Displacement Project provides census tract level typologies of gentrification in the City of Portland, Southern California, San Francisco Bay Area and other cities.  They also provide the underlying data that they used to create the typologies.
    
**Opportunity Atlas**

The Opportunity Atlas is an an interactive, map-based tool that can trace the root of outcomes, such as poverty and incarceration, back to the neighborhoods in which children grew up.  The atlas, in a nutshell, shows “Which neighborhoods in America offer children the best chances of climbing the income ladder?” You can view the tool and download all the census tract data [here](https://www.opportunityatlas.org/).

**Social Capital Atlas**

The Social Capital Atlas dataset shows new insights on how communities are connected using data from Facebook friendships. The dataset constructs and analyzes measures of social capital (Connectedness, Cohesiveness and Civic Engagement) across counties, ZIP codes, high schools, and colleges in the United States. Explore the dataset [here](https://www.socialcapital.org/).

**Los Angeles Neighborhood Data for Social Change**

A data warehouse created by the [University of Southern California](https://socialinnovation.usc.edu/) that collects a bunch of health, demographic, built environment, and socioeconomic variables at the neighborhood level for the County of Los Angeles.  Check the site out [here](https://la.myneighborhooddata.org/).

**CA Neighborhoods and Renter Vulnerability**

This [project](https://knowledge.luskin.ucla.edu/ca-renter-vulnerability/#top) focuses on identifying the broad vulnerabilities to COVID-19 and their disparities across neighborhoods in California.



**Looking for data?**

* Google has a site for searching datasets akin to Google Scholar, Images, Books and so on.  Check it out [here](https://toolbox.google.com/datasetsearch)

* Kaggle is a crowd-sourced platform for all things data science.  This includes competitions, discussion forums, online tutorials, and most importantly, at least for the purpose of this guide, a repository of big data sources.  A lot of these data are not pertinent to this class, but some are; specifically, those with geographic information that allows you to connect data to geographic locations. Check out their datasets [here](https://www.kaggle.com/datasets).



***

<a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/">Creative Commons Attribution-NonCommercial 4.0 International License</a>.


Website created and maintained by [Noli Brazil](https://nbrazil.faculty.ucdavis.edu/)

