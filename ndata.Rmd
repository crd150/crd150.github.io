---
title: "Neighborhood Data Sources"
subtitle: <h4 style="font-style:normal">CRD 150 - Quantitative Methods in Community Research</h4>
date: <h4 style="font-style:normal">Fall 2018</h4>
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
font-style: italic;
}

h1.title {
  font-weight: bold;
}

</style>

\

This guide is a reference tool describing online sources that provide data typically in a csv or shapefile format at a local scale, specifically the United States census tract.  A census tract generally encompasses a population between 2,000 to 8,000 residents.  Given empirical, software, data, and theoretical advancements, social scientists are utilizing more flexible geographic scales to measure the neighborhood environment.  However, as a convenient source used by various stakeholders for making decisions at the local level, census tracts are still quite relevant in research, policy and applied practice.  Below are online data sources organized by topic or theme.


**Comprehensive neighborhood data sources**

* [PolicyMap](https://ucdavis.policymap.com/maps) 
    + PolicyMap is a data and mapping resource that provides a wealth of policy, education, socioeconomic, demographic, health and neighborhood dimension data at various geographic scales including census tracts.  As UC Davis affiliates, we have access to the subscription or paid edition. You either need to be on campus or on [VPN](https://www.library.ucdavis.edu/service/connect-from-off-campus/) setup.  Although allowing the user to upload and map shapefiles, the site does not all you to download shapefiles.

* [Social Explorer](https://www.socialexplorer.com/)
    + Similar to PolicyMap, but focuses more on historical data, including Census data going back to the first Census in 1790. Also like PolicyMap, UC Davis affiliates have access to all Social Explorer tools. Focuses on census data, but provides data from other sources, including religious organizations.

**Decennial Census and American Community Survey**

The Census represents the most comprehensive source for demographic and socioeconomic data at the census tract level.  You can download tract level data from the following sources

* [American Fact Finder](https://factfinder.census.gov/faces/nav/jsf/pages/index.xhtml)

* [Social Explorer](https://www.socialexplorer.com/)

* [National Historical Geographic Information System](https://www.nhgis.org/)

* [PolicyMap](https://ucdavis.policymap.com/maps) 

You can download Census tract shapefiles (and other spatial data formats) at the following sites

* [United States Census](https://www.census.gov/geo/maps-data/data/cbf/cbf_tracts.html)

* [National Historical Geographic Information System](https://www.nhgis.org/)

If you want to evaluate tract characteristics over an extensive time period, you'll need to account for changes in tract boundary definitions.  Social explorer allows you to get historical census data in 2010 tract boundaries.  Other resources for getting data normalized to a certain year's boundary definition include

* [United States Census](https://www.census.gov/geo/maps-data/data/relationship.html)
    + The U.S. Census provides relationship files that allow you to normalize data to a specific year for the tract (and other small scale geographies).
    
* [Geolytics Neighborhood Change Database](http://demographics.geolytics.com/ncdb2010/login.aspx)
    + As a UC Davis affiliate, you have access to this paid dataset.  Just be on campus or use [VPN](https://www.library.ucdavis.edu/service/connect-from-off-campus/) to access.  The site allows you to download tract data going back to 1970 normalized to 2010 boundaries.
    
* [Longitudinal Tract Database](https://s4.ad.brown.edu/projects/diversity/researcher/bridging.htm)
    + This site's tools are free to the public.  In addition to providing preloaded census data normalized to a certain boundary year, the site provides crosswalks that allow you to normalize *any* tract level data.

**Health characteristics**

The following datasets provide health related indicators at small scale geographies.

* [500 Cities: Local Data for Better Health](https://www.cdc.gov/500cities/).
    + This dataset, put together by the Centers for Disease Control and Prevention (CDC), provides city- and census tract-level small area estimates for chronic disease risk factors, health outcomes, and clinical preventive service use for the largest 500 cities in the United State.

* [CalEnviroScreen](https://oehha.ca.gov/calenviroscreen/report/calenviroscreen-30)  
    + Developed by California's Office of Environmental Health Hazard Assessment, CalEnviroScreen is is a screening tool that evaluates the burden of pollution from multiple sources in California communities while accounting for potential vulnerability to the adverse effects of pollution.  You can also download a shapefile of census tracts with these indicators [here](https://oehha.ca.gov/calenviroscreen/maps-data/download-data).
  

**Department of Housing and Urban Development (HUD)**

HUD offers a plethora of lower geographic scale datasets on a variety of housing, built environment, and socioeconomic indicators for the country or select Metropolitan Areas.  The main data splash page for the HUD is located [here](https://www.huduser.gov/portal/pdrdatas_landing.html).  Many of the datasets provide indicators of HUD funding, such as tracts that qualify for [Low-Income Housing Tax Credit](https://www.huduser.gov/portal/datasets/qct.html).  They also provide [Fair Area Market Rents](https://www.huduser.gov/portal/datasets/fmr/smallarea/index.html) at the zip code level, and georeferenced data located on their [eGIS open data portal](https://hudgis-hud.opendata.arcgis.com/), which includes point level information.


**Work commuting patterns**

* [OnTheMap](https://onthemap.ces.census.gov/)
    + OnTheMap is an application that shows where workers are employed and where they live. The data come from the [Longitudinal Employer-Household Dynamics](https://lehd.ces.census.gov/) Program, specifically from their Origin-Destination Employment Statistics (LODES).  OnTheMap also provides reports on age, earnings, industry distributions, race, ethnicity, educational attainment, and sex.  

**Eviction rates**

* [Eviction Lab](https://evictionlab.org/)
    + The Eviction Lab at Princeton University has built the first nationwide database of evictions aggregated to various geographic scales including block groups and tracts. It as an open-source resource, available to researchers, citizen organizers, and journalists to use, disseminate, and even augment with new data that they collect.

**Gentrification**

* [Urban Displacement Project](http://www.urbandisplacement.org/)
    + Developed by researchers at UC Berkeley, the Urban Displacement Project provides census tract level typologies of gentrification in the City of Portland, Southern California, and the San Francisco Bay Area.  They also provide the underlying data that they used to create the typologies.
    
**Opportunity Mapping Indices**

Opportunity mapping is used to illustrate where opportunity rich communities exist (and assess who has access to these communities) and to examine where disadvantage or opportunity poor communities are located.  Rather than present neighborhood characteristics separately, opportunity mapping consolidates characteristics into single indices of opportunity.  This is fast becoming a popular tool in the applied and policy worlds, with indicators being developed for an assortment of different neighborhood dimensions. The indices themselves may not be as relevant for you given the type of question you want to answer; however, all of these indices rely on a consolidation of a bunch of variables that are not available in a clean format at a local level, and many of the websites below provide these variables for download.

* [Regional Opportunity Index (ROI)](https://interact.regionalchange.ucdavis.edu/roi/index.html)
    + The ROI is developed and maintained by the UC Davis Center for Regional Change.  The ROI is specific to California tracts.  The site provides mapping features but also allows you to download the indices and the underlying data.

* [Diversity Data Kids](http://www.diversitydatakids.org/getdata)
    + The site provides opportunity indices specific to the school-aged population.

* [Neighborhood Atlas](https://www.neighborhoodatlas.medicine.wisc.edu/)
    + Another index, this time the Area Deprivation Index, developed by the Health Resources and Services Administration.  You'll need to sign up for a free account to download the data.

* [Social Vulnerability Index](https://svi.cdc.gov/SVIDataToolsDownload.html)
    + An index maintained by the CDC, it uses Census data to determine tracts that are socially vulnerable to the after effects of a hazardous event.

**Opportunity Atlas**

The Opportunity Atlas is an an interactive, map-based tool that can trace the root of outcomes, such as poverty and incarceration, back to the neighborhoods in which children grew up.  The atlas, in a nutshell, shows “Which neighborhoods in America offer children the best chances of climbing the income ladder?” You can view the tool and download all the census tract data [here](https://www.opportunityatlas.org/).


**Los Angeles Neighborhood Data for Social Change**

A data warehouse created by the [University of Southern California](https://socialinnovation.usc.edu/) that collects a bunch of health, demographic, built environment, and socioeconomic variables at the neighborhood level for the County of Los Angeles.  Check the site out [here](https://data.myneighborhooddata.org/stories/s/xs7g-jqmb).

**Looking for data?**

* Google released a Beta site for a dataset search site akin to Google Scholar, Images, Books and so on.  Check it out [here](https://toolbox.google.com/datasetsearch)

* Kaggle is a crowd-sourced platform for all things data science.  This includes competitions, discussion forums, online tutorials, and most importantly, at least for the purpose of this guide, a repository of big data sources.  A lot of these data are not pertinent to this class, but some are; specifically, those with geographic information that allows you to connect data to geographic locations. Check out their datasets [here](https://www.kaggle.com/datasets).



***

Website created and maintained by [Noli Brazil](https://nbrazil.faculty.ucdavis.edu/)


