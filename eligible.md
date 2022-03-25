---
title: "Eligible Cities and Counties"
subtitle: <h4 style="font-style:normal">CRD 150 - Quantitative Methods in Community Research</h4>
date: <h4 style="font-style:normal">Spring 2022</h4>
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




Your final project involves studying an interesting question about a U.S. community.  We define community as a city or county.  Select one (or more if you want to do a comparison study) city or county from the lists below.  The lists show the 100 largest cities and counties according to total population using data from the 2015-2019 American Community Survey.  You are limited to cities or counties on these lists because data are more difficult to find, have higher margins of errors, or contain more missingness in areas with smaller populations. You will need to get approval from the professor if you would like to use a city or county not listed below. [Here](https://www2.census.gov/geo/pdfs/reference/GARM/Ch9GARM.pdf) and [here](https://www2.census.gov/geo/pdfs/reference/GARM/Ch4GARM.pdf) are how the U.S. Census defines cities and counties, respectively.

<div style="margin-bottom:25px;">
</div>
# Cities 
<table class="table table-striped table-hover table-responsive" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> CityID </th>
   <th style="text-align:left;"> City </th>
   <th style="text-align:left;"> StateID </th>
   <th style="text-align:left;"> State </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> 51000 </td>
   <td style="text-align:left;"> New York </td>
   <td style="text-align:left;"> 36 </td>
   <td style="text-align:left;width: 15em; "> New York </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 44000 </td>
   <td style="text-align:left;"> Los Angeles </td>
   <td style="text-align:left;"> 06 </td>
   <td style="text-align:left;width: 15em; "> California </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 14000 </td>
   <td style="text-align:left;"> Chicago </td>
   <td style="text-align:left;"> 17 </td>
   <td style="text-align:left;width: 15em; "> Illinois </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 35000 </td>
   <td style="text-align:left;"> Houston </td>
   <td style="text-align:left;"> 48 </td>
   <td style="text-align:left;width: 15em; "> Texas </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 55000 </td>
   <td style="text-align:left;"> Phoenix </td>
   <td style="text-align:left;"> 04 </td>
   <td style="text-align:left;width: 15em; "> Arizona </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 60000 </td>
   <td style="text-align:left;"> Philadelphia </td>
   <td style="text-align:left;"> 42 </td>
   <td style="text-align:left;width: 15em; "> Pennsylvania </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 65000 </td>
   <td style="text-align:left;"> San Antonio </td>
   <td style="text-align:left;"> 48 </td>
   <td style="text-align:left;width: 15em; "> Texas </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 66000 </td>
   <td style="text-align:left;"> San Diego </td>
   <td style="text-align:left;"> 06 </td>
   <td style="text-align:left;width: 15em; "> California </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 19000 </td>
   <td style="text-align:left;"> Dallas </td>
   <td style="text-align:left;"> 48 </td>
   <td style="text-align:left;width: 15em; "> Texas </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 68000 </td>
   <td style="text-align:left;"> San Jose </td>
   <td style="text-align:left;"> 06 </td>
   <td style="text-align:left;width: 15em; "> California </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 05000 </td>
   <td style="text-align:left;"> Austin </td>
   <td style="text-align:left;"> 48 </td>
   <td style="text-align:left;width: 15em; "> Texas </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 35000 </td>
   <td style="text-align:left;"> Jacksonville </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;width: 15em; "> Florida </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 67000 </td>
   <td style="text-align:left;"> San Francisco </td>
   <td style="text-align:left;"> 06 </td>
   <td style="text-align:left;width: 15em; "> California </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 36003 </td>
   <td style="text-align:left;"> Indianapolis </td>
   <td style="text-align:left;"> 18 </td>
   <td style="text-align:left;width: 15em; "> Indiana </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 18000 </td>
   <td style="text-align:left;"> Columbus </td>
   <td style="text-align:left;"> 39 </td>
   <td style="text-align:left;width: 15em; "> Ohio </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 27000 </td>
   <td style="text-align:left;"> Fort Worth </td>
   <td style="text-align:left;"> 48 </td>
   <td style="text-align:left;width: 15em; "> Texas </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 12000 </td>
   <td style="text-align:left;"> Charlotte </td>
   <td style="text-align:left;"> 37 </td>
   <td style="text-align:left;width: 15em; "> North Carolina </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 63000 </td>
   <td style="text-align:left;"> Seattle </td>
   <td style="text-align:left;"> 53 </td>
   <td style="text-align:left;width: 15em; "> Washington </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 22000 </td>
   <td style="text-align:left;"> Detroit </td>
   <td style="text-align:left;"> 26 </td>
   <td style="text-align:left;width: 15em; "> Michigan </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 20000 </td>
   <td style="text-align:left;"> Denver </td>
   <td style="text-align:left;"> 08 </td>
   <td style="text-align:left;width: 15em; "> Colorado </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 24000 </td>
   <td style="text-align:left;"> El Paso </td>
   <td style="text-align:left;"> 48 </td>
   <td style="text-align:left;width: 15em; "> Texas </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 50000 </td>
   <td style="text-align:left;"> Washington </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;width: 15em; "> District of Columbia </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 07000 </td>
   <td style="text-align:left;"> Boston </td>
   <td style="text-align:left;"> 25 </td>
   <td style="text-align:left;width: 15em; "> Massachusetts </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 48000 </td>
   <td style="text-align:left;"> Memphis </td>
   <td style="text-align:left;"> 47 </td>
   <td style="text-align:left;width: 15em; "> Tennessee </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 52006 </td>
   <td style="text-align:left;"> Nashville-Davidson </td>
   <td style="text-align:left;"> 47 </td>
   <td style="text-align:left;width: 15em; "> Tennessee </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 59000 </td>
   <td style="text-align:left;"> Portland </td>
   <td style="text-align:left;"> 41 </td>
   <td style="text-align:left;width: 15em; "> Oregon </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 55000 </td>
   <td style="text-align:left;"> Oklahoma City </td>
   <td style="text-align:left;"> 40 </td>
   <td style="text-align:left;width: 15em; "> Oklahoma </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 40000 </td>
   <td style="text-align:left;"> Las Vegas </td>
   <td style="text-align:left;"> 32 </td>
   <td style="text-align:left;width: 15em; "> Nevada </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 04000 </td>
   <td style="text-align:left;"> Baltimore </td>
   <td style="text-align:left;"> 24 </td>
   <td style="text-align:left;width: 15em; "> Maryland </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 48006 </td>
   <td style="text-align:left;"> Louisville </td>
   <td style="text-align:left;"> 21 </td>
   <td style="text-align:left;width: 15em; "> Kentucky </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 53000 </td>
   <td style="text-align:left;"> Milwaukee </td>
   <td style="text-align:left;"> 55 </td>
   <td style="text-align:left;width: 15em; "> Wisconsin </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 02000 </td>
   <td style="text-align:left;"> Albuquerque </td>
   <td style="text-align:left;"> 35 </td>
   <td style="text-align:left;width: 15em; "> New Mexico </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 77000 </td>
   <td style="text-align:left;"> Tucson </td>
   <td style="text-align:left;"> 04 </td>
   <td style="text-align:left;width: 15em; "> Arizona </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 27000 </td>
   <td style="text-align:left;"> Fresno </td>
   <td style="text-align:left;"> 06 </td>
   <td style="text-align:left;width: 15em; "> California </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 64000 </td>
   <td style="text-align:left;"> Sacramento </td>
   <td style="text-align:left;"> 06 </td>
   <td style="text-align:left;width: 15em; "> California </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 46000 </td>
   <td style="text-align:left;"> Mesa </td>
   <td style="text-align:left;"> 04 </td>
   <td style="text-align:left;width: 15em; "> Arizona </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 38000 </td>
   <td style="text-align:left;"> Kansas City </td>
   <td style="text-align:left;"> 29 </td>
   <td style="text-align:left;width: 15em; "> Missouri </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 43000 </td>
   <td style="text-align:left;"> Long Beach </td>
   <td style="text-align:left;"> 06 </td>
   <td style="text-align:left;width: 15em; "> California </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 04000 </td>
   <td style="text-align:left;"> Atlanta </td>
   <td style="text-align:left;"> 13 </td>
   <td style="text-align:left;width: 15em; "> Georgia </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 37000 </td>
   <td style="text-align:left;"> Omaha </td>
   <td style="text-align:left;"> 31 </td>
   <td style="text-align:left;width: 15em; "> Nebraska </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 82000 </td>
   <td style="text-align:left;"> Virginia Beach </td>
   <td style="text-align:left;"> 51 </td>
   <td style="text-align:left;width: 15em; "> Virginia </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 16000 </td>
   <td style="text-align:left;"> Colorado Springs </td>
   <td style="text-align:left;"> 08 </td>
   <td style="text-align:left;width: 15em; "> Colorado </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 55000 </td>
   <td style="text-align:left;"> Raleigh </td>
   <td style="text-align:left;"> 37 </td>
   <td style="text-align:left;width: 15em; "> North Carolina </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 45000 </td>
   <td style="text-align:left;"> Miami </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;width: 15em; "> Florida </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 53000 </td>
   <td style="text-align:left;"> Oakland </td>
   <td style="text-align:left;"> 06 </td>
   <td style="text-align:left;width: 15em; "> California </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 43000 </td>
   <td style="text-align:left;"> Minneapolis </td>
   <td style="text-align:left;"> 27 </td>
   <td style="text-align:left;width: 15em; "> Minnesota </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 75000 </td>
   <td style="text-align:left;"> Tulsa </td>
   <td style="text-align:left;"> 40 </td>
   <td style="text-align:left;width: 15em; "> Oklahoma </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 79000 </td>
   <td style="text-align:left;"> Wichita </td>
   <td style="text-align:left;"> 20 </td>
   <td style="text-align:left;width: 15em; "> Kansas </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 16000 </td>
   <td style="text-align:left;"> Cleveland </td>
   <td style="text-align:left;"> 39 </td>
   <td style="text-align:left;width: 15em; "> Ohio </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 04000 </td>
   <td style="text-align:left;"> Arlington </td>
   <td style="text-align:left;"> 48 </td>
   <td style="text-align:left;width: 15em; "> Texas </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 55000 </td>
   <td style="text-align:left;"> New Orleans </td>
   <td style="text-align:left;"> 22 </td>
   <td style="text-align:left;width: 15em; "> Louisiana </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 03526 </td>
   <td style="text-align:left;"> Bakersfield </td>
   <td style="text-align:left;"> 06 </td>
   <td style="text-align:left;width: 15em; "> California </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 71000 </td>
   <td style="text-align:left;"> Tampa </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;width: 15em; "> Florida </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 04000 </td>
   <td style="text-align:left;"> Aurora </td>
   <td style="text-align:left;"> 08 </td>
   <td style="text-align:left;width: 15em; "> Colorado </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 02000 </td>
   <td style="text-align:left;"> Anaheim </td>
   <td style="text-align:left;"> 06 </td>
   <td style="text-align:left;width: 15em; "> California </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 69000 </td>
   <td style="text-align:left;"> Santa Ana </td>
   <td style="text-align:left;"> 06 </td>
   <td style="text-align:left;width: 15em; "> California </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 17000 </td>
   <td style="text-align:left;"> Corpus Christi </td>
   <td style="text-align:left;"> 48 </td>
   <td style="text-align:left;width: 15em; "> Texas </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 62000 </td>
   <td style="text-align:left;"> Riverside </td>
   <td style="text-align:left;"> 06 </td>
   <td style="text-align:left;width: 15em; "> California </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 46027 </td>
   <td style="text-align:left;"> Lexington-Fayette </td>
   <td style="text-align:left;"> 21 </td>
   <td style="text-align:left;width: 15em; "> Kentucky </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 65000 </td>
   <td style="text-align:left;"> St. Louis </td>
   <td style="text-align:left;"> 29 </td>
   <td style="text-align:left;width: 15em; "> Missouri </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 61000 </td>
   <td style="text-align:left;"> Pittsburgh </td>
   <td style="text-align:left;"> 42 </td>
   <td style="text-align:left;width: 15em; "> Pennsylvania </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 75000 </td>
   <td style="text-align:left;"> Stockton </td>
   <td style="text-align:left;"> 06 </td>
   <td style="text-align:left;width: 15em; "> California </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 58000 </td>
   <td style="text-align:left;"> St. Paul </td>
   <td style="text-align:left;"> 27 </td>
   <td style="text-align:left;width: 15em; "> Minnesota </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 15000 </td>
   <td style="text-align:left;"> Cincinnati </td>
   <td style="text-align:left;"> 39 </td>
   <td style="text-align:left;width: 15em; "> Ohio </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 03000 </td>
   <td style="text-align:left;"> Anchorage </td>
   <td style="text-align:left;"> 02 </td>
   <td style="text-align:left;width: 15em; "> Alaska </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 31900 </td>
   <td style="text-align:left;"> Henderson </td>
   <td style="text-align:left;"> 32 </td>
   <td style="text-align:left;width: 15em; "> Nevada </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 28000 </td>
   <td style="text-align:left;"> Greensboro </td>
   <td style="text-align:left;"> 37 </td>
   <td style="text-align:left;width: 15em; "> North Carolina </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 51000 </td>
   <td style="text-align:left;"> Newark </td>
   <td style="text-align:left;"> 34 </td>
   <td style="text-align:left;width: 15em; "> New Jersey </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 58016 </td>
   <td style="text-align:left;"> Plano </td>
   <td style="text-align:left;"> 48 </td>
   <td style="text-align:left;width: 15em; "> Texas </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 77000 </td>
   <td style="text-align:left;"> Toledo </td>
   <td style="text-align:left;"> 39 </td>
   <td style="text-align:left;width: 15em; "> Ohio </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 28000 </td>
   <td style="text-align:left;"> Lincoln </td>
   <td style="text-align:left;"> 31 </td>
   <td style="text-align:left;width: 15em; "> Nebraska </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 53000 </td>
   <td style="text-align:left;"> Orlando </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;width: 15em; "> Florida </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 36000 </td>
   <td style="text-align:left;"> Jersey City </td>
   <td style="text-align:left;"> 34 </td>
   <td style="text-align:left;width: 15em; "> New Jersey </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 13392 </td>
   <td style="text-align:left;"> Chula Vista </td>
   <td style="text-align:left;"> 06 </td>
   <td style="text-align:left;width: 15em; "> California </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 25000 </td>
   <td style="text-align:left;"> Fort Wayne </td>
   <td style="text-align:left;"> 18 </td>
   <td style="text-align:left;width: 15em; "> Indiana </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 11000 </td>
   <td style="text-align:left;"> Buffalo </td>
   <td style="text-align:left;"> 36 </td>
   <td style="text-align:left;width: 15em; "> New York </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 19000 </td>
   <td style="text-align:left;"> Durham </td>
   <td style="text-align:left;"> 37 </td>
   <td style="text-align:left;width: 15em; "> North Carolina </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 36770 </td>
   <td style="text-align:left;"> Irvine </td>
   <td style="text-align:left;"> 06 </td>
   <td style="text-align:left;width: 15em; "> California </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 63000 </td>
   <td style="text-align:left;"> St. Petersburg </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;width: 15em; "> Florida </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 41464 </td>
   <td style="text-align:left;"> Laredo </td>
   <td style="text-align:left;"> 48 </td>
   <td style="text-align:left;width: 15em; "> Texas </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 48000 </td>
   <td style="text-align:left;"> Madison </td>
   <td style="text-align:left;"> 55 </td>
   <td style="text-align:left;width: 15em; "> Wisconsin </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 45000 </td>
   <td style="text-align:left;"> Lubbock </td>
   <td style="text-align:left;"> 48 </td>
   <td style="text-align:left;width: 15em; "> Texas </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 57000 </td>
   <td style="text-align:left;"> Norfolk </td>
   <td style="text-align:left;"> 51 </td>
   <td style="text-align:left;width: 15em; "> Virginia </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 12000 </td>
   <td style="text-align:left;"> Chandler </td>
   <td style="text-align:left;"> 04 </td>
   <td style="text-align:left;width: 15em; "> Arizona </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 27820 </td>
   <td style="text-align:left;"> Glendale </td>
   <td style="text-align:left;"> 04 </td>
   <td style="text-align:left;width: 15em; "> Arizona </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 75000 </td>
   <td style="text-align:left;"> Winston-Salem </td>
   <td style="text-align:left;"> 37 </td>
   <td style="text-align:left;width: 15em; "> North Carolina </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 60600 </td>
   <td style="text-align:left;"> Reno </td>
   <td style="text-align:left;"> 32 </td>
   <td style="text-align:left;width: 15em; "> Nevada </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 65000 </td>
   <td style="text-align:left;"> Scottsdale </td>
   <td style="text-align:left;"> 04 </td>
   <td style="text-align:left;width: 15em; "> Arizona </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 30000 </td>
   <td style="text-align:left;"> Hialeah </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;width: 15em; "> Florida </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 29000 </td>
   <td style="text-align:left;"> Garland </td>
   <td style="text-align:left;"> 48 </td>
   <td style="text-align:left;width: 15em; "> Texas </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 37000 </td>
   <td style="text-align:left;"> Irving </td>
   <td style="text-align:left;"> 48 </td>
   <td style="text-align:left;width: 15em; "> Texas </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 16000 </td>
   <td style="text-align:left;"> Chesapeake </td>
   <td style="text-align:left;"> 51 </td>
   <td style="text-align:left;width: 15em; "> Virginia </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 51800 </td>
   <td style="text-align:left;"> North Las Vegas </td>
   <td style="text-align:left;"> 32 </td>
   <td style="text-align:left;width: 15em; "> Nevada </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 26000 </td>
   <td style="text-align:left;"> Fremont </td>
   <td style="text-align:left;"> 06 </td>
   <td style="text-align:left;width: 15em; "> California </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 05000 </td>
   <td style="text-align:left;"> Baton Rouge </td>
   <td style="text-align:left;"> 22 </td>
   <td style="text-align:left;width: 15em; "> Louisiana </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 67000 </td>
   <td style="text-align:left;"> Richmond </td>
   <td style="text-align:left;"> 51 </td>
   <td style="text-align:left;width: 15em; "> Virginia </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 08830 </td>
   <td style="text-align:left;"> Boise City </td>
   <td style="text-align:left;"> 16 </td>
   <td style="text-align:left;width: 15em; "> Idaho </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 65000 </td>
   <td style="text-align:left;"> San Bernardino </td>
   <td style="text-align:left;"> 06 </td>
   <td style="text-align:left;width: 15em; "> California </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 21000 </td>
   <td style="text-align:left;"> Des Moines </td>
   <td style="text-align:left;"> 19 </td>
   <td style="text-align:left;width: 15em; "> Iowa </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 67000 </td>
   <td style="text-align:left;"> Spokane </td>
   <td style="text-align:left;"> 53 </td>
   <td style="text-align:left;width: 15em; "> Washington </td>
  </tr>
</tbody>
</table>

<div style="margin-bottom:25px;">
</div>
# Counties

<table class="table table-striped table-hover table-responsive" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> CountyID </th>
   <th style="text-align:left;"> County </th>
   <th style="text-align:left;"> StateID </th>
   <th style="text-align:left;"> State </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> 037 </td>
   <td style="text-align:left;"> Los Angeles </td>
   <td style="text-align:left;"> 06 </td>
   <td style="text-align:left;width: 15em; "> California </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 031 </td>
   <td style="text-align:left;"> Cook </td>
   <td style="text-align:left;"> 17 </td>
   <td style="text-align:left;width: 15em; "> Illinois </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 201 </td>
   <td style="text-align:left;"> Harris </td>
   <td style="text-align:left;"> 48 </td>
   <td style="text-align:left;width: 15em; "> Texas </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 013 </td>
   <td style="text-align:left;"> Maricopa </td>
   <td style="text-align:left;"> 04 </td>
   <td style="text-align:left;width: 15em; "> Arizona </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 073 </td>
   <td style="text-align:left;"> San Diego </td>
   <td style="text-align:left;"> 06 </td>
   <td style="text-align:left;width: 15em; "> California </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 059 </td>
   <td style="text-align:left;"> Orange </td>
   <td style="text-align:left;"> 06 </td>
   <td style="text-align:left;width: 15em; "> California </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 086 </td>
   <td style="text-align:left;"> Miami-Dade </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;width: 15em; "> Florida </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 047 </td>
   <td style="text-align:left;"> Kings </td>
   <td style="text-align:left;"> 36 </td>
   <td style="text-align:left;width: 15em; "> New York </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 113 </td>
   <td style="text-align:left;"> Dallas </td>
   <td style="text-align:left;"> 48 </td>
   <td style="text-align:left;width: 15em; "> Texas </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 065 </td>
   <td style="text-align:left;"> Riverside </td>
   <td style="text-align:left;"> 06 </td>
   <td style="text-align:left;width: 15em; "> California </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 081 </td>
   <td style="text-align:left;"> Queens </td>
   <td style="text-align:left;"> 36 </td>
   <td style="text-align:left;width: 15em; "> New York </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 071 </td>
   <td style="text-align:left;"> San Bernardino </td>
   <td style="text-align:left;"> 06 </td>
   <td style="text-align:left;width: 15em; "> California </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 033 </td>
   <td style="text-align:left;"> King </td>
   <td style="text-align:left;"> 53 </td>
   <td style="text-align:left;width: 15em; "> Washington </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 003 </td>
   <td style="text-align:left;"> Clark </td>
   <td style="text-align:left;"> 32 </td>
   <td style="text-align:left;width: 15em; "> Nevada </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 439 </td>
   <td style="text-align:left;"> Tarrant </td>
   <td style="text-align:left;"> 48 </td>
   <td style="text-align:left;width: 15em; "> Texas </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 085 </td>
   <td style="text-align:left;"> Santa Clara </td>
   <td style="text-align:left;"> 06 </td>
   <td style="text-align:left;width: 15em; "> California </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 029 </td>
   <td style="text-align:left;"> Bexar </td>
   <td style="text-align:left;"> 48 </td>
   <td style="text-align:left;width: 15em; "> Texas </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 011 </td>
   <td style="text-align:left;"> Broward </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;width: 15em; "> Florida </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 163 </td>
   <td style="text-align:left;"> Wayne </td>
   <td style="text-align:left;"> 26 </td>
   <td style="text-align:left;width: 15em; "> Michigan </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 061 </td>
   <td style="text-align:left;"> New York </td>
   <td style="text-align:left;"> 36 </td>
   <td style="text-align:left;width: 15em; "> New York </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 001 </td>
   <td style="text-align:left;"> Alameda </td>
   <td style="text-align:left;"> 06 </td>
   <td style="text-align:left;width: 15em; "> California </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 017 </td>
   <td style="text-align:left;"> Middlesex </td>
   <td style="text-align:left;"> 25 </td>
   <td style="text-align:left;width: 15em; "> Massachusetts </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 101 </td>
   <td style="text-align:left;"> Philadelphia </td>
   <td style="text-align:left;"> 42 </td>
   <td style="text-align:left;width: 15em; "> Pennsylvania </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 103 </td>
   <td style="text-align:left;"> Suffolk </td>
   <td style="text-align:left;"> 36 </td>
   <td style="text-align:left;width: 15em; "> New York </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 067 </td>
   <td style="text-align:left;"> Sacramento </td>
   <td style="text-align:left;"> 06 </td>
   <td style="text-align:left;width: 15em; "> California </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 005 </td>
   <td style="text-align:left;"> Bronx </td>
   <td style="text-align:left;"> 36 </td>
   <td style="text-align:left;width: 15em; "> New York </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 099 </td>
   <td style="text-align:left;"> Palm Beach </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;width: 15em; "> Florida </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 059 </td>
   <td style="text-align:left;"> Nassau </td>
   <td style="text-align:left;"> 36 </td>
   <td style="text-align:left;width: 15em; "> New York </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 057 </td>
   <td style="text-align:left;"> Hillsborough </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;width: 15em; "> Florida </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 095 </td>
   <td style="text-align:left;"> Orange </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;width: 15em; "> Florida </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 035 </td>
   <td style="text-align:left;"> Cuyahoga </td>
   <td style="text-align:left;"> 39 </td>
   <td style="text-align:left;width: 15em; "> Ohio </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 049 </td>
   <td style="text-align:left;"> Franklin </td>
   <td style="text-align:left;"> 39 </td>
   <td style="text-align:left;width: 15em; "> Ohio </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 125 </td>
   <td style="text-align:left;"> Oakland </td>
   <td style="text-align:left;"> 26 </td>
   <td style="text-align:left;width: 15em; "> Michigan </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 003 </td>
   <td style="text-align:left;"> Allegheny </td>
   <td style="text-align:left;"> 42 </td>
   <td style="text-align:left;width: 15em; "> Pennsylvania </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 053 </td>
   <td style="text-align:left;"> Hennepin </td>
   <td style="text-align:left;"> 27 </td>
   <td style="text-align:left;width: 15em; "> Minnesota </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 453 </td>
   <td style="text-align:left;"> Travis </td>
   <td style="text-align:left;"> 48 </td>
   <td style="text-align:left;width: 15em; "> Texas </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 059 </td>
   <td style="text-align:left;"> Fairfax </td>
   <td style="text-align:left;"> 51 </td>
   <td style="text-align:left;width: 15em; "> Virginia </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 013 </td>
   <td style="text-align:left;"> Contra Costa </td>
   <td style="text-align:left;"> 06 </td>
   <td style="text-align:left;width: 15em; "> California </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 035 </td>
   <td style="text-align:left;"> Salt Lake </td>
   <td style="text-align:left;"> 49 </td>
   <td style="text-align:left;width: 15em; "> Utah </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 031 </td>
   <td style="text-align:left;"> Montgomery </td>
   <td style="text-align:left;"> 24 </td>
   <td style="text-align:left;width: 15em; "> Maryland </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 119 </td>
   <td style="text-align:left;"> Mecklenburg </td>
   <td style="text-align:left;"> 37 </td>
   <td style="text-align:left;width: 15em; "> North Carolina </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 183 </td>
   <td style="text-align:left;"> Wake </td>
   <td style="text-align:left;"> 37 </td>
   <td style="text-align:left;width: 15em; "> North Carolina </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 121 </td>
   <td style="text-align:left;"> Fulton </td>
   <td style="text-align:left;"> 13 </td>
   <td style="text-align:left;width: 15em; "> Georgia </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 019 </td>
   <td style="text-align:left;"> Pima </td>
   <td style="text-align:left;"> 04 </td>
   <td style="text-align:left;width: 15em; "> Arizona </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 189 </td>
   <td style="text-align:left;"> St. Louis </td>
   <td style="text-align:left;"> 29 </td>
   <td style="text-align:left;width: 15em; "> Missouri </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 003 </td>
   <td style="text-align:left;"> Honolulu </td>
   <td style="text-align:left;"> 15 </td>
   <td style="text-align:left;width: 15em; "> Hawaii </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 119 </td>
   <td style="text-align:left;"> Westchester </td>
   <td style="text-align:left;"> 36 </td>
   <td style="text-align:left;width: 15em; "> New York </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 019 </td>
   <td style="text-align:left;"> Fresno </td>
   <td style="text-align:left;"> 06 </td>
   <td style="text-align:left;width: 15em; "> California </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 079 </td>
   <td style="text-align:left;"> Milwaukee </td>
   <td style="text-align:left;"> 55 </td>
   <td style="text-align:left;width: 15em; "> Wisconsin </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 103 </td>
   <td style="text-align:left;"> Pinellas </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;width: 15em; "> Florida </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 001 </td>
   <td style="text-align:left;"> Fairfield </td>
   <td style="text-align:left;"> 09 </td>
   <td style="text-align:left;width: 15em; "> Connecticut </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 097 </td>
   <td style="text-align:left;"> Marion </td>
   <td style="text-align:left;"> 18 </td>
   <td style="text-align:left;width: 15em; "> Indiana </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 003 </td>
   <td style="text-align:left;"> Bergen </td>
   <td style="text-align:left;"> 34 </td>
   <td style="text-align:left;width: 15em; "> New Jersey </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 157 </td>
   <td style="text-align:left;"> Shelby </td>
   <td style="text-align:left;"> 47 </td>
   <td style="text-align:left;width: 15em; "> Tennessee </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 043 </td>
   <td style="text-align:left;"> DuPage </td>
   <td style="text-align:left;"> 17 </td>
   <td style="text-align:left;width: 15em; "> Illinois </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 029 </td>
   <td style="text-align:left;"> Erie </td>
   <td style="text-align:left;"> 36 </td>
   <td style="text-align:left;width: 15em; "> New York </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 085 </td>
   <td style="text-align:left;"> Collin </td>
   <td style="text-align:left;"> 48 </td>
   <td style="text-align:left;width: 15em; "> Texas </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 031 </td>
   <td style="text-align:left;"> Duval </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;width: 15em; "> Florida </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 033 </td>
   <td style="text-align:left;"> Prince George's </td>
   <td style="text-align:left;"> 24 </td>
   <td style="text-align:left;width: 15em; "> Maryland </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 003 </td>
   <td style="text-align:left;"> Hartford </td>
   <td style="text-align:left;"> 09 </td>
   <td style="text-align:left;width: 15em; "> Connecticut </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 135 </td>
   <td style="text-align:left;"> Gwinnett </td>
   <td style="text-align:left;"> 13 </td>
   <td style="text-align:left;width: 15em; "> Georgia </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 029 </td>
   <td style="text-align:left;"> Kern </td>
   <td style="text-align:left;"> 06 </td>
   <td style="text-align:left;width: 15em; "> California </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 075 </td>
   <td style="text-align:left;"> San Francisco </td>
   <td style="text-align:left;"> 06 </td>
   <td style="text-align:left;width: 15em; "> California </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 099 </td>
   <td style="text-align:left;"> Macomb </td>
   <td style="text-align:left;"> 26 </td>
   <td style="text-align:left;width: 15em; "> Michigan </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 009 </td>
   <td style="text-align:left;"> New Haven </td>
   <td style="text-align:left;"> 09 </td>
   <td style="text-align:left;width: 15em; "> Connecticut </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 111 </td>
   <td style="text-align:left;"> Ventura </td>
   <td style="text-align:left;"> 06 </td>
   <td style="text-align:left;width: 15em; "> California </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 053 </td>
   <td style="text-align:left;"> Pierce </td>
   <td style="text-align:left;"> 53 </td>
   <td style="text-align:left;width: 15em; "> Washington </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 215 </td>
   <td style="text-align:left;"> Hidalgo </td>
   <td style="text-align:left;"> 48 </td>
   <td style="text-align:left;width: 15em; "> Texas </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 023 </td>
   <td style="text-align:left;"> Middlesex </td>
   <td style="text-align:left;"> 34 </td>
   <td style="text-align:left;width: 15em; "> New Jersey </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 141 </td>
   <td style="text-align:left;"> El Paso </td>
   <td style="text-align:left;"> 48 </td>
   <td style="text-align:left;width: 15em; "> Texas </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 005 </td>
   <td style="text-align:left;"> Baltimore </td>
   <td style="text-align:left;"> 24 </td>
   <td style="text-align:left;width: 15em; "> Maryland </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 091 </td>
   <td style="text-align:left;"> Montgomery </td>
   <td style="text-align:left;"> 42 </td>
   <td style="text-align:left;width: 15em; "> Pennsylvania </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 027 </td>
   <td style="text-align:left;"> Worcester </td>
   <td style="text-align:left;"> 25 </td>
   <td style="text-align:left;width: 15em; "> Massachusetts </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 061 </td>
   <td style="text-align:left;"> Hamilton </td>
   <td style="text-align:left;"> 39 </td>
   <td style="text-align:left;width: 15em; "> Ohio </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 013 </td>
   <td style="text-align:left;"> Essex </td>
   <td style="text-align:left;"> 34 </td>
   <td style="text-align:left;width: 15em; "> New Jersey </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 051 </td>
   <td style="text-align:left;"> Multnomah </td>
   <td style="text-align:left;"> 41 </td>
   <td style="text-align:left;width: 15em; "> Oregon </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 121 </td>
   <td style="text-align:left;"> Denton </td>
   <td style="text-align:left;"> 48 </td>
   <td style="text-align:left;width: 15em; "> Texas </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 025 </td>
   <td style="text-align:left;"> Suffolk </td>
   <td style="text-align:left;"> 25 </td>
   <td style="text-align:left;width: 15em; "> Massachusetts </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 009 </td>
   <td style="text-align:left;"> Essex </td>
   <td style="text-align:left;"> 25 </td>
   <td style="text-align:left;width: 15em; "> Massachusetts </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 109 </td>
   <td style="text-align:left;"> Oklahoma </td>
   <td style="text-align:left;"> 40 </td>
   <td style="text-align:left;width: 15em; "> Oklahoma </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 061 </td>
   <td style="text-align:left;"> Snohomish </td>
   <td style="text-align:left;"> 53 </td>
   <td style="text-align:left;width: 15em; "> Washington </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 111 </td>
   <td style="text-align:left;"> Jefferson </td>
   <td style="text-align:left;"> 21 </td>
   <td style="text-align:left;width: 15em; "> Kentucky </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 081 </td>
   <td style="text-align:left;"> San Mateo </td>
   <td style="text-align:left;"> 06 </td>
   <td style="text-align:left;width: 15em; "> California </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 055 </td>
   <td style="text-align:left;"> Monroe </td>
   <td style="text-align:left;"> 36 </td>
   <td style="text-align:left;width: 15em; "> New York </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 067 </td>
   <td style="text-align:left;"> Cobb </td>
   <td style="text-align:left;"> 13 </td>
   <td style="text-align:left;width: 15em; "> Georgia </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 089 </td>
   <td style="text-align:left;"> DeKalb </td>
   <td style="text-align:left;"> 13 </td>
   <td style="text-align:left;width: 15em; "> Georgia </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 077 </td>
   <td style="text-align:left;"> San Joaquin </td>
   <td style="text-align:left;"> 06 </td>
   <td style="text-align:left;width: 15em; "> California </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 157 </td>
   <td style="text-align:left;"> Fort Bend </td>
   <td style="text-align:left;"> 48 </td>
   <td style="text-align:left;width: 15em; "> Texas </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 097 </td>
   <td style="text-align:left;"> Lake </td>
   <td style="text-align:left;"> 17 </td>
   <td style="text-align:left;width: 15em; "> Illinois </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 071 </td>
   <td style="text-align:left;"> Lee </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;width: 15em; "> Florida </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 021 </td>
   <td style="text-align:left;"> Norfolk </td>
   <td style="text-align:left;"> 25 </td>
   <td style="text-align:left;width: 15em; "> Massachusetts </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 095 </td>
   <td style="text-align:left;"> Jackson </td>
   <td style="text-align:left;"> 29 </td>
   <td style="text-align:left;width: 15em; "> Missouri </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 197 </td>
   <td style="text-align:left;"> Will </td>
   <td style="text-align:left;"> 17 </td>
   <td style="text-align:left;width: 15em; "> Illinois </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 017 </td>
   <td style="text-align:left;"> Hudson </td>
   <td style="text-align:left;"> 34 </td>
   <td style="text-align:left;width: 15em; "> New Jersey </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 031 </td>
   <td style="text-align:left;"> Denver </td>
   <td style="text-align:left;"> 08 </td>
   <td style="text-align:left;width: 15em; "> Colorado </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 037 </td>
   <td style="text-align:left;"> Davidson </td>
   <td style="text-align:left;"> 47 </td>
   <td style="text-align:left;width: 15em; "> Tennessee </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 001 </td>
   <td style="text-align:left;"> Bernalillo </td>
   <td style="text-align:left;"> 35 </td>
   <td style="text-align:left;width: 15em; "> New Mexico </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 041 </td>
   <td style="text-align:left;"> El Paso </td>
   <td style="text-align:left;"> 08 </td>
   <td style="text-align:left;width: 15em; "> Colorado </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 001 </td>
   <td style="text-align:left;"> District of Columbia </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;width: 15em; "> District of Columbia </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 073 </td>
   <td style="text-align:left;"> Jefferson </td>
   <td style="text-align:left;"> 01 </td>
   <td style="text-align:left;width: 15em; "> Alabama </td>
  </tr>
</tbody>
</table>



***

<a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/">Creative Commons Attribution-NonCommercial 4.0 International License</a>.


Website created and maintained by [Noli Brazil](https://nbrazil.faculty.ucdavis.edu/)
