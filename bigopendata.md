---
title: "Big Data and Open Data Sources"
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



\

This guide lists and describes online sources that provide [Big Data](https://en.wikipedia.org/wiki/Big_data) or [Open Data](https://ash.harvard.edu/files/open_government.pdf).  Remember to look at the meta data to figure out what kinds of information you can download.
\


* [Airbnb](http://insideairbnb.com/get-the-data.html): Provides csv files containing detailed information on data on airbnb hosts.  The data are in longitude/latitude.  They don't provide historical data.

* Bikesharing: Web sites providing public use data on bikesharing.  Provides station-to-station data.
    + [San Francisco](https://www.lyft.com/bikes/bay-wheels/system-data)  
    + [New York City](https://www.citibikenyc.com/system-data) 
    + [Chicago](https://www.divvybikes.com/system-data) 
    + [Washington D.C.](https://www.capitalbikeshare.com/system-data)

* [OpenStreetMaps](https://ropensci.github.io/osmdata/).  **osmdata** is an R package for downloading OpenStreetMaps data.  The site provides a couple of vignettes on using the package.

* [Array of things](https://arrayofthings.github.io/).  The City of Chicago installed modular sensor boxes around Chicago to collect real-time data on the city’s environment, infrastructure, and activity for research and public use. Other cities have followed.

* [Zillow](https://www.zillow.com/research/data/). Provides housing price data at the metro, city and zipcode levels.  R has a [package](https://cran.r-project.org/web/packages/ZillowR/index.html) for downloading Zillow data directly.

* [Yelp](https://www.yelp.com/dataset).  A public use dataset put together by Yelp specifically for personal and educational purposes, but has been used in academic and applied research.  You can use the Yelp API, and here is a [tutorial](https://billpetti.github.io/2017-12-23-use-yelp-api-r-rstats/), and [another](https://www.youtube.com/watch?v=qyGYItbMKkM), but there are some restrictions, specifically getting an access ID and creating your own app.  Here is another [tutorial](https://github.com/richierocks/yelp) for a specific R package that uses the Yelp API.

* [Twitter](https://developer.twitter.com/en/docs/tweets/search/api-reference/get-search-tweets). Twitter provides access to a sample of their tweets.  You'll need to register for an API.  Here are some guides to collect and manage tweets in R: [here](https://www.earthdatascience.org/courses/earth-analytics/get-data-using-apis/use-twitter-api-r/), [here](https://info5940.infosci.cornell.edu/notes/webdata/twitter-api-practice/), and [here](https://cran.r-hub.io/web/packages/rtweet/vignettes/intro.html).


**Open data portals**

Many city, county and even state governments maintain open data portals.  These portals provide various datasets held and maintained by the public sectors.  Some of the data are measured at a fine spatial scale, going doing to longitude/latitude.  

There are a couple of sites that maintain open data portal directories, including

* [Data.gov](https://www.data.gov/open-gov/)

* [Open Data Inception](https://opendatainception.io/)

* [Open Knowledge Foundation](https://dataportals.org/)

Here are links to various open data portals in US cities (updated 01/08/24)

*California*

* [Southern California Association of Governments](http://gisdata-scag.opendata.arcgis.com/)

* [Sacramento Area Council of Governments](https://data.sacog.org/)

* [Sacramento City](http://data.cityofsacramento.org/)

* [Sacramento County](http://data-sacramentocounty.opendata.arcgis.com/)

* [San Francisco City](https://datasf.org/opendata/)

* [Alameda County](https://data.acgov.org/)

* [Oakland City](https://data.oaklandca.gov/)

* [Oakland City](http://data.openoakland.org/)

* [Long Beach City](http://www.longbeach.gov/openlb/)

* [San Jose City](https://data.sanjoseca.gov/)

* [Kern County](https://geodat-kernco.opendata.arcgis.com/)

* [Chula Vista City](https://chulavista-cvgis.opendata.arcgis.com/)

* [Anaheim City](http://data-anaheim.opendata.arcgis.com/)

* [Riverside County](https://data.countyofriverside.us/)

* [Fresno City](https://gis-cityoffresno.hub.arcgis.com/)

* [Los Angeles City](https://data.lacity.org/)

* [Los Angeles City](http://geohub.lacity.org/)

* [Los Angeles County](https://data.lacounty.gov/)

* [Los Angeles County](https://egis-lacounty.hub.arcgis.com/)

* [Orange County](http://data-ocpw.opendata.arcgis.com/)

* [San Francisco City/County](https://datasf.org/)

* [Santa Clara County](https://data.sccgov.org/)

* [San Diego City](https://data.sandiego.gov/)

* [California State](https://data.ca.gov/)

*Major Cities*

* [Boston](https://data.boston.gov/)

* [New York](https://data.ny.gov/)

* [New York](https://opendata.cityofnewyork.us/data/)

* [Chicago](https://data.cityofchicago.org/)

* [Philadelphia](https://www.opendataphilly.org/)

* [Phoenix](https://www.phoenixopendata.com/)

* [Detroit](https://data.detroitmi.gov/)

* [Baltimore](https://data.baltimorecity.gov/)

* [Portland](https://gis-pdx.opendata.arcgis.com/)

* [Seattle](https://data.seattle.gov/)

* [Washington D.C.](http://opendata.dc.gov/)

* [Milwaukee](https://data.milwaukee.gov/)

* [Houston](http://data.houstontx.gov/)

Your city/county not listed above? Use Google. It's your friend.

**Looking for data?**

* Kaggle is a crowd-sourced platform for all things data science.  This includes competitions, discussion forums, online tutorials, and most importantly, at least for the purpose of this guide, a repository of big data sources.  A lot of these data are not pertinent to this class, but some are; specifically, those with geographic information that allows you to connect data to geographic locations. Check out their datasets [here](https://www.kaggle.com/datasets).

* Esri provides a repository that many of its members use to store various big and open data all in shapefile format.  Check out what's available [here](http://hub.arcgis.com/pages/open-data).

* [Awesome Public Datasets](https://github.com/awesomedata/awesome-public-datasets)

* [Amazon AWS Public Data Sets](https://registry.opendata.aws/)


***

<a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/">Creative Commons Attribution-NonCommercial 4.0 International License</a>.


Website created and maintained by [Noli Brazil](https://nbrazil.faculty.ucdavis.edu/)
