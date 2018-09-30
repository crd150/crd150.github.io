---
title: "Eligible Metros, Cities and Counties"
subtitle: <h4 style="font-style:normal">CRD 150 - Quantitative Methods in Community Research</h4>
date: <h4 style="font-style:normal">Fall 2018</h4>
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

h1.title {
  font-weight: bold;
}

</style>

\


Your final project involves studying an interesting question about a U.S. community.  We define community as a [metropolitan area](https://www.census.gov/geo/reference/gtc/gtc_cbsa.html#mesa), [city](https://www.census.gov/geo/reference/gtc/gtc_place.html), or [county](https://www.census.gov/geo/reference/gtc/gtc_cou.html).  You must select a metropolitan area, city, or county with a population size greater than 250,000.  The eligible metro areas, cities, and counties using 2012-2016 American Community Survey estimates are shown below in order of population size.

<div style="margin-bottom:25px;">
</div>
#Metropolitan Areas

<table class="table table-striped table-hover table-responsive" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Metro </th>
   <th style="text-align:right;"> MetroID </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> New York-Newark-Jersey City, NY-NJ-PA </td>
   <td style="text-align:right;width: 15em; "> 35620 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Los Angeles-Long Beach-Anaheim, CA </td>
   <td style="text-align:right;width: 15em; "> 31080 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Chicago-Naperville-Elgin, IL-IN-WI </td>
   <td style="text-align:right;width: 15em; "> 16980 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Dallas-Fort Worth-Arlington, TX </td>
   <td style="text-align:right;width: 15em; "> 19100 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Houston-The Woodlands-Sugar Land, TX </td>
   <td style="text-align:right;width: 15em; "> 26420 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Philadelphia-Camden-Wilmington, PA-NJ-DE-MD </td>
   <td style="text-align:right;width: 15em; "> 37980 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Washington-Arlington-Alexandria, DC-VA-MD-WV </td>
   <td style="text-align:right;width: 15em; "> 47900 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Miami-Fort Lauderdale-West Palm Beach, FL </td>
   <td style="text-align:right;width: 15em; "> 33100 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Atlanta-Sandy Springs-Roswell, GA </td>
   <td style="text-align:right;width: 15em; "> 12060 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Boston-Cambridge-Newton, MA-NH </td>
   <td style="text-align:right;width: 15em; "> 14460 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> San Francisco-Oakland-Hayward, CA </td>
   <td style="text-align:right;width: 15em; "> 41860 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Phoenix-Mesa-Scottsdale, AZ </td>
   <td style="text-align:right;width: 15em; "> 38060 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Riverside-San Bernardino-Ontario, CA </td>
   <td style="text-align:right;width: 15em; "> 40140 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Detroit-Warren-Dearborn, MI </td>
   <td style="text-align:right;width: 15em; "> 19820 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Seattle-Tacoma-Bellevue, WA </td>
   <td style="text-align:right;width: 15em; "> 42660 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Minneapolis-St. Paul-Bloomington, MN-WI </td>
   <td style="text-align:right;width: 15em; "> 33460 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> San Diego-Carlsbad, CA </td>
   <td style="text-align:right;width: 15em; "> 41740 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Tampa-St. Petersburg-Clearwater, FL </td>
   <td style="text-align:right;width: 15em; "> 45300 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> St. Louis, MO-IL </td>
   <td style="text-align:right;width: 15em; "> 41180 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Baltimore-Columbia-Towson, MD </td>
   <td style="text-align:right;width: 15em; "> 12580 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Denver-Aurora-Lakewood, CO </td>
   <td style="text-align:right;width: 15em; "> 19740 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Charlotte-Concord-Gastonia, NC-SC </td>
   <td style="text-align:right;width: 15em; "> 16740 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Pittsburgh, PA </td>
   <td style="text-align:right;width: 15em; "> 38300 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Portland-Vancouver-Hillsboro, OR-WA </td>
   <td style="text-align:right;width: 15em; "> 38900 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> San Antonio-New Braunfels, TX </td>
   <td style="text-align:right;width: 15em; "> 41700 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Orlando-Kissimmee-Sanford, FL </td>
   <td style="text-align:right;width: 15em; "> 36740 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Sacramento--Roseville--Arden-Arcade, CA </td>
   <td style="text-align:right;width: 15em; "> 40900 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Cincinnati, OH-KY-IN </td>
   <td style="text-align:right;width: 15em; "> 17140 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Las Vegas-Henderson-Paradise, NV </td>
   <td style="text-align:right;width: 15em; "> 29820 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Kansas City, MO-KS </td>
   <td style="text-align:right;width: 15em; "> 28140 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Cleveland-Elyria, OH </td>
   <td style="text-align:right;width: 15em; "> 17460 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Columbus, OH </td>
   <td style="text-align:right;width: 15em; "> 18140 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Indianapolis-Carmel-Anderson, IN </td>
   <td style="text-align:right;width: 15em; "> 26900 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> San Jose-Sunnyvale-Santa Clara, CA </td>
   <td style="text-align:right;width: 15em; "> 41940 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Austin-Round Rock, TX </td>
   <td style="text-align:right;width: 15em; "> 12420 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Nashville-Davidson--Murfreesboro--Franklin, TN </td>
   <td style="text-align:right;width: 15em; "> 34980 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Virginia Beach-Norfolk-Newport News, VA-NC </td>
   <td style="text-align:right;width: 15em; "> 47260 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Providence-Warwick, RI-MA </td>
   <td style="text-align:right;width: 15em; "> 39300 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Milwaukee-Waukesha-West Allis, WI </td>
   <td style="text-align:right;width: 15em; "> 33340 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Jacksonville, FL </td>
   <td style="text-align:right;width: 15em; "> 27260 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Memphis, TN-MS-AR </td>
   <td style="text-align:right;width: 15em; "> 32820 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Oklahoma City, OK </td>
   <td style="text-align:right;width: 15em; "> 36420 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Louisville/Jefferson County, KY-IN </td>
   <td style="text-align:right;width: 15em; "> 31140 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Richmond, VA </td>
   <td style="text-align:right;width: 15em; "> 40060 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> New Orleans-Metairie, LA </td>
   <td style="text-align:right;width: 15em; "> 35380 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Raleigh, NC </td>
   <td style="text-align:right;width: 15em; "> 39580 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Hartford-West Hartford-East Hartford, CT </td>
   <td style="text-align:right;width: 15em; "> 25540 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Salt Lake City, UT </td>
   <td style="text-align:right;width: 15em; "> 41620 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Birmingham-Hoover, AL </td>
   <td style="text-align:right;width: 15em; "> 13820 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Buffalo-Cheektowaga-Niagara Falls, NY </td>
   <td style="text-align:right;width: 15em; "> 15380 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Rochester, NY </td>
   <td style="text-align:right;width: 15em; "> 40380 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Grand Rapids-Wyoming, MI </td>
   <td style="text-align:right;width: 15em; "> 24340 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Tucson, AZ </td>
   <td style="text-align:right;width: 15em; "> 46060 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Urban Honolulu, HI </td>
   <td style="text-align:right;width: 15em; "> 46520 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Tulsa, OK </td>
   <td style="text-align:right;width: 15em; "> 46140 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fresno, CA </td>
   <td style="text-align:right;width: 15em; "> 23420 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Bridgeport-Stamford-Norwalk, CT </td>
   <td style="text-align:right;width: 15em; "> 14860 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Worcester, MA-CT </td>
   <td style="text-align:right;width: 15em; "> 49340 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Omaha-Council Bluffs, NE-IA </td>
   <td style="text-align:right;width: 15em; "> 36540 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Albuquerque, NM </td>
   <td style="text-align:right;width: 15em; "> 10740 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Albany-Schenectady-Troy, NY </td>
   <td style="text-align:right;width: 15em; "> 10580 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Bakersfield, CA </td>
   <td style="text-align:right;width: 15em; "> 12540 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Greenville-Anderson-Mauldin, SC </td>
   <td style="text-align:right;width: 15em; "> 24860 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> New Haven-Milford, CT </td>
   <td style="text-align:right;width: 15em; "> 35300 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Knoxville, TN </td>
   <td style="text-align:right;width: 15em; "> 28940 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Oxnard-Thousand Oaks-Ventura, CA </td>
   <td style="text-align:right;width: 15em; "> 37100 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> El Paso, TX </td>
   <td style="text-align:right;width: 15em; "> 21340 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Allentown-Bethlehem-Easton, PA-NJ </td>
   <td style="text-align:right;width: 15em; "> 10900 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> McAllen-Edinburg-Mission, TX </td>
   <td style="text-align:right;width: 15em; "> 32580 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Baton Rouge, LA </td>
   <td style="text-align:right;width: 15em; "> 12940 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Dayton, OH </td>
   <td style="text-align:right;width: 15em; "> 19380 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Columbia, SC </td>
   <td style="text-align:right;width: 15em; "> 17900 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> North Port-Sarasota-Bradenton, FL </td>
   <td style="text-align:right;width: 15em; "> 35840 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Greensboro-High Point, NC </td>
   <td style="text-align:right;width: 15em; "> 24660 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Charleston-North Charleston, SC </td>
   <td style="text-align:right;width: 15em; "> 16700 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Little Rock-North Little Rock-Conway, AR </td>
   <td style="text-align:right;width: 15em; "> 30780 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Stockton-Lodi, CA </td>
   <td style="text-align:right;width: 15em; "> 44700 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Akron, OH </td>
   <td style="text-align:right;width: 15em; "> 10420 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Colorado Springs, CO </td>
   <td style="text-align:right;width: 15em; "> 17820 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Cape Coral-Fort Myers, FL </td>
   <td style="text-align:right;width: 15em; "> 15980 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Boise City, ID </td>
   <td style="text-align:right;width: 15em; "> 14260 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Syracuse, NY </td>
   <td style="text-align:right;width: 15em; "> 45060 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Winston-Salem, NC </td>
   <td style="text-align:right;width: 15em; "> 49180 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Wichita, KS </td>
   <td style="text-align:right;width: 15em; "> 48620 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Lakeland-Winter Haven, FL </td>
   <td style="text-align:right;width: 15em; "> 29460 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Madison, WI </td>
   <td style="text-align:right;width: 15em; "> 31540 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Ogden-Clearfield, UT </td>
   <td style="text-align:right;width: 15em; "> 36260 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Springfield, MA </td>
   <td style="text-align:right;width: 15em; "> 44140 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Deltona-Daytona Beach-Ormond Beach, FL </td>
   <td style="text-align:right;width: 15em; "> 19660 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Des Moines-West Des Moines, IA </td>
   <td style="text-align:right;width: 15em; "> 19780 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Toledo, OH </td>
   <td style="text-align:right;width: 15em; "> 45780 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Augusta-Richmond County, GA-SC </td>
   <td style="text-align:right;width: 15em; "> 12260 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Jackson, MS </td>
   <td style="text-align:right;width: 15em; "> 27140 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Provo-Orem, UT </td>
   <td style="text-align:right;width: 15em; "> 39340 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Harrisburg-Carlisle, PA </td>
   <td style="text-align:right;width: 15em; "> 25420 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Palm Bay-Melbourne-Titusville, FL </td>
   <td style="text-align:right;width: 15em; "> 37340 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Scranton--Wilkes-Barre--Hazleton, PA </td>
   <td style="text-align:right;width: 15em; "> 42540 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Youngstown-Warren-Boardman, OH-PA </td>
   <td style="text-align:right;width: 15em; "> 49660 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Chattanooga, TN-GA </td>
   <td style="text-align:right;width: 15em; "> 16860 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Spokane-Spokane Valley, WA </td>
   <td style="text-align:right;width: 15em; "> 44060 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Durham-Chapel Hill, NC </td>
   <td style="text-align:right;width: 15em; "> 20500 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Lancaster, PA </td>
   <td style="text-align:right;width: 15em; "> 29540 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Modesto, CA </td>
   <td style="text-align:right;width: 15em; "> 33700 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Portland-South Portland, ME </td>
   <td style="text-align:right;width: 15em; "> 38860 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fayetteville-Springdale-Rogers, AR-MO </td>
   <td style="text-align:right;width: 15em; "> 22220 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Santa Rosa, CA </td>
   <td style="text-align:right;width: 15em; "> 42220 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Lexington-Fayette, KY </td>
   <td style="text-align:right;width: 15em; "> 30460 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Lafayette, LA </td>
   <td style="text-align:right;width: 15em; "> 29180 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Pensacola-Ferry Pass-Brent, FL </td>
   <td style="text-align:right;width: 15em; "> 37860 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Lansing-East Lansing, MI </td>
   <td style="text-align:right;width: 15em; "> 29620 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Visalia-Porterville, CA </td>
   <td style="text-align:right;width: 15em; "> 47300 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Springfield, MO </td>
   <td style="text-align:right;width: 15em; "> 44180 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Corpus Christi, TX </td>
   <td style="text-align:right;width: 15em; "> 18580 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Port St. Lucie, FL </td>
   <td style="text-align:right;width: 15em; "> 38940 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Shreveport-Bossier City, LA </td>
   <td style="text-align:right;width: 15em; "> 43340 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Reno, NV </td>
   <td style="text-align:right;width: 15em; "> 39900 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Asheville, NC </td>
   <td style="text-align:right;width: 15em; "> 11700 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> York-Hanover, PA </td>
   <td style="text-align:right;width: 15em; "> 49620 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Huntsville, AL </td>
   <td style="text-align:right;width: 15em; "> 26620 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Santa Maria-Santa Barbara, CA </td>
   <td style="text-align:right;width: 15em; "> 42200 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Salinas, CA </td>
   <td style="text-align:right;width: 15em; "> 41500 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Vallejo-Fairfield, CA </td>
   <td style="text-align:right;width: 15em; "> 46700 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Killeen-Temple, TX </td>
   <td style="text-align:right;width: 15em; "> 28660 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fort Wayne, IN </td>
   <td style="text-align:right;width: 15em; "> 23060 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Myrtle Beach-Conway-North Myrtle Beach, SC-NC </td>
   <td style="text-align:right;width: 15em; "> 34820 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Brownsville-Harlingen, TX </td>
   <td style="text-align:right;width: 15em; "> 15180 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Mobile, AL </td>
   <td style="text-align:right;width: 15em; "> 33660 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Reading, PA </td>
   <td style="text-align:right;width: 15em; "> 39740 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Flint, MI </td>
   <td style="text-align:right;width: 15em; "> 22420 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Beaumont-Port Arthur, TX </td>
   <td style="text-align:right;width: 15em; "> 13140 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Salem, OR </td>
   <td style="text-align:right;width: 15em; "> 41420 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Manchester-Nashua, NH </td>
   <td style="text-align:right;width: 15em; "> 31700 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Canton-Massillon, OH </td>
   <td style="text-align:right;width: 15em; "> 15940 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Anchorage, AK </td>
   <td style="text-align:right;width: 15em; "> 11260 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Salisbury, MD-DE </td>
   <td style="text-align:right;width: 15em; "> 41540 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Gulfport-Biloxi-Pascagoula, MS </td>
   <td style="text-align:right;width: 15em; "> 25060 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Davenport-Moline-Rock Island, IA-IL </td>
   <td style="text-align:right;width: 15em; "> 19340 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Peoria, IL </td>
   <td style="text-align:right;width: 15em; "> 37900 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fayetteville, NC </td>
   <td style="text-align:right;width: 15em; "> 22180 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Tallahassee, FL </td>
   <td style="text-align:right;width: 15em; "> 45220 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Montgomery, AL </td>
   <td style="text-align:right;width: 15em; "> 33860 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Savannah, GA </td>
   <td style="text-align:right;width: 15em; "> 42340 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Trenton, NJ </td>
   <td style="text-align:right;width: 15em; "> 45940 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Hickory-Lenoir-Morganton, NC </td>
   <td style="text-align:right;width: 15em; "> 25860 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Huntington-Ashland, WV-KY-OH </td>
   <td style="text-align:right;width: 15em; "> 26580 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Eugene, OR </td>
   <td style="text-align:right;width: 15em; "> 21660 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Ann Arbor, MI </td>
   <td style="text-align:right;width: 15em; "> 11460 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Naples-Immokalee-Marco Island, FL </td>
   <td style="text-align:right;width: 15em; "> 34940 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Rockford, IL </td>
   <td style="text-align:right;width: 15em; "> 40420 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Ocala, FL </td>
   <td style="text-align:right;width: 15em; "> 36100 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Kalamazoo-Portage, MI </td>
   <td style="text-align:right;width: 15em; "> 28020 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fort Collins, CO </td>
   <td style="text-align:right;width: 15em; "> 22660 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Spartanburg, SC </td>
   <td style="text-align:right;width: 15em; "> 43900 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> South Bend-Mishawaka, IN-MI </td>
   <td style="text-align:right;width: 15em; "> 43780 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Lincoln, NE </td>
   <td style="text-align:right;width: 15em; "> 30700 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Evansville, IN-KY </td>
   <td style="text-align:right;width: 15em; "> 21780 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Green Bay, WI </td>
   <td style="text-align:right;width: 15em; "> 24580 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Boulder, CO </td>
   <td style="text-align:right;width: 15em; "> 14500 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Roanoke, VA </td>
   <td style="text-align:right;width: 15em; "> 40220 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Columbus, GA-AL </td>
   <td style="text-align:right;width: 15em; "> 17980 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Kingsport-Bristol-Bristol, TN-VA </td>
   <td style="text-align:right;width: 15em; "> 28700 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Lubbock, TX </td>
   <td style="text-align:right;width: 15em; "> 31180 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Utica-Rome, NY </td>
   <td style="text-align:right;width: 15em; "> 46540 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fort Smith, AR-OK </td>
   <td style="text-align:right;width: 15em; "> 22900 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Duluth, MN-WI </td>
   <td style="text-align:right;width: 15em; "> 20260 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Erie, PA </td>
   <td style="text-align:right;width: 15em; "> 21500 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> San Luis Obispo-Paso Robles-Arroyo Grande, CA </td>
   <td style="text-align:right;width: 15em; "> 42020 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Greeley, CO </td>
   <td style="text-align:right;width: 15em; "> 24540 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Clarksville, TN-KY </td>
   <td style="text-align:right;width: 15em; "> 17300 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Kennewick-Richland, WA </td>
   <td style="text-align:right;width: 15em; "> 28420 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Atlantic City-Hammonton, NJ </td>
   <td style="text-align:right;width: 15em; "> 12100 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Gainesville, FL </td>
   <td style="text-align:right;width: 15em; "> 23540 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Wilmington, NC </td>
   <td style="text-align:right;width: 15em; "> 48900 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Norwich-New London, CT </td>
   <td style="text-align:right;width: 15em; "> 35980 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Santa Cruz-Watsonville, CA </td>
   <td style="text-align:right;width: 15em; "> 42100 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Olympia-Tumwater, WA </td>
   <td style="text-align:right;width: 15em; "> 36500 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Laredo, TX </td>
   <td style="text-align:right;width: 15em; "> 29700 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Merced, CA </td>
   <td style="text-align:right;width: 15em; "> 32900 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Cedar Rapids, IA </td>
   <td style="text-align:right;width: 15em; "> 16300 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Waco, TX </td>
   <td style="text-align:right;width: 15em; "> 47380 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Amarillo, TX </td>
   <td style="text-align:right;width: 15em; "> 11100 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Hagerstown-Martinsburg, MD-WV </td>
   <td style="text-align:right;width: 15em; "> 25180 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Lynchburg, VA </td>
   <td style="text-align:right;width: 15em; "> 31340 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Bremerton-Silverdale, WA </td>
   <td style="text-align:right;width: 15em; "> 14740 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Crestview-Fort Walton Beach-Destin, FL </td>
   <td style="text-align:right;width: 15em; "> 18880 </td>
  </tr>
</tbody>
</table>

<div style="margin-bottom:25px;">
</div>
#Cities 
<table class="table table-striped table-hover table-responsive" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> City </th>
   <th style="text-align:right;"> CityID </th>
   <th style="text-align:left;"> State </th>
   <th style="text-align:right;"> StateID </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> New York </td>
   <td style="text-align:right;"> 51000 </td>
   <td style="text-align:left;"> New York </td>
   <td style="text-align:right;width: 15em; "> 36 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Los Angeles </td>
   <td style="text-align:right;"> 44000 </td>
   <td style="text-align:left;"> California </td>
   <td style="text-align:right;width: 15em; "> 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Chicago </td>
   <td style="text-align:right;"> 14000 </td>
   <td style="text-align:left;"> Illinois </td>
   <td style="text-align:right;width: 15em; "> 17 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Houston </td>
   <td style="text-align:right;"> 35000 </td>
   <td style="text-align:left;"> Texas </td>
   <td style="text-align:right;width: 15em; "> 48 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Philadelphia </td>
   <td style="text-align:right;"> 60000 </td>
   <td style="text-align:left;"> Pennsylvania </td>
   <td style="text-align:right;width: 15em; "> 42 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Phoenix </td>
   <td style="text-align:right;"> 55000 </td>
   <td style="text-align:left;"> Arizona </td>
   <td style="text-align:right;width: 15em; "> 4 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> San Antonio </td>
   <td style="text-align:right;"> 65000 </td>
   <td style="text-align:left;"> Texas </td>
   <td style="text-align:right;width: 15em; "> 48 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> San Diego </td>
   <td style="text-align:right;"> 66000 </td>
   <td style="text-align:left;"> California </td>
   <td style="text-align:right;width: 15em; "> 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Dallas </td>
   <td style="text-align:right;"> 19000 </td>
   <td style="text-align:left;"> Texas </td>
   <td style="text-align:right;width: 15em; "> 48 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> San Jose </td>
   <td style="text-align:right;"> 68000 </td>
   <td style="text-align:left;"> California </td>
   <td style="text-align:right;width: 15em; "> 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Austin </td>
   <td style="text-align:right;"> 5000 </td>
   <td style="text-align:left;"> Texas </td>
   <td style="text-align:right;width: 15em; "> 48 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Jacksonville </td>
   <td style="text-align:right;"> 35000 </td>
   <td style="text-align:left;"> Florida </td>
   <td style="text-align:right;width: 15em; "> 12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> San Francisco </td>
   <td style="text-align:right;"> 67000 </td>
   <td style="text-align:left;"> California </td>
   <td style="text-align:right;width: 15em; "> 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Indianapolis </td>
   <td style="text-align:right;"> 36003 </td>
   <td style="text-align:left;"> Indiana </td>
   <td style="text-align:right;width: 15em; "> 18 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Columbus </td>
   <td style="text-align:right;"> 18000 </td>
   <td style="text-align:left;"> Ohio </td>
   <td style="text-align:right;width: 15em; "> 39 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fort Worth </td>
   <td style="text-align:right;"> 27000 </td>
   <td style="text-align:left;"> Texas </td>
   <td style="text-align:right;width: 15em; "> 48 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Charlotte </td>
   <td style="text-align:right;"> 12000 </td>
   <td style="text-align:left;"> North Carolina </td>
   <td style="text-align:right;width: 15em; "> 37 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Detroit </td>
   <td style="text-align:right;"> 22000 </td>
   <td style="text-align:left;"> Michigan </td>
   <td style="text-align:right;width: 15em; "> 26 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> El Paso </td>
   <td style="text-align:right;"> 24000 </td>
   <td style="text-align:left;"> Texas </td>
   <td style="text-align:right;width: 15em; "> 48 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Seattle </td>
   <td style="text-align:right;"> 63000 </td>
   <td style="text-align:left;"> Washington </td>
   <td style="text-align:right;width: 15em; "> 53 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Denver </td>
   <td style="text-align:right;"> 20000 </td>
   <td style="text-align:left;"> Colorado </td>
   <td style="text-align:right;width: 15em; "> 8 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Washington </td>
   <td style="text-align:right;"> 50000 </td>
   <td style="text-align:left;"> District of Columbia </td>
   <td style="text-align:right;width: 15em; "> 11 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Boston </td>
   <td style="text-align:right;"> 7000 </td>
   <td style="text-align:left;"> Massachusetts </td>
   <td style="text-align:right;width: 15em; "> 25 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Memphis </td>
   <td style="text-align:right;"> 48000 </td>
   <td style="text-align:left;"> Tennessee </td>
   <td style="text-align:right;width: 15em; "> 47 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Nashville-Davidson </td>
   <td style="text-align:right;"> 52006 </td>
   <td style="text-align:left;"> Tennessee </td>
   <td style="text-align:right;width: 15em; "> 47 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Baltimore </td>
   <td style="text-align:right;"> 4000 </td>
   <td style="text-align:left;"> Maryland </td>
   <td style="text-align:right;width: 15em; "> 24 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Portland </td>
   <td style="text-align:right;"> 59000 </td>
   <td style="text-align:left;"> Oregon </td>
   <td style="text-align:right;width: 15em; "> 41 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Oklahoma City </td>
   <td style="text-align:right;"> 55000 </td>
   <td style="text-align:left;"> Oklahoma </td>
   <td style="text-align:right;width: 15em; "> 40 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Las Vegas </td>
   <td style="text-align:right;"> 40000 </td>
   <td style="text-align:left;"> Nevada </td>
   <td style="text-align:right;width: 15em; "> 32 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Louisville </td>
   <td style="text-align:right;"> 48006 </td>
   <td style="text-align:left;"> Kentucky </td>
   <td style="text-align:right;width: 15em; "> 21 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Milwaukee </td>
   <td style="text-align:right;"> 53000 </td>
   <td style="text-align:left;"> Wisconsin </td>
   <td style="text-align:right;width: 15em; "> 55 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Albuquerque </td>
   <td style="text-align:right;"> 2000 </td>
   <td style="text-align:left;"> New Mexico </td>
   <td style="text-align:right;width: 15em; "> 35 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Tucson </td>
   <td style="text-align:right;"> 77000 </td>
   <td style="text-align:left;"> Arizona </td>
   <td style="text-align:right;width: 15em; "> 4 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fresno </td>
   <td style="text-align:right;"> 27000 </td>
   <td style="text-align:left;"> California </td>
   <td style="text-align:right;width: 15em; "> 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Sacramento </td>
   <td style="text-align:right;"> 64000 </td>
   <td style="text-align:left;"> California </td>
   <td style="text-align:right;width: 15em; "> 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Kansas City </td>
   <td style="text-align:right;"> 38000 </td>
   <td style="text-align:left;"> Missouri </td>
   <td style="text-align:right;width: 15em; "> 29 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Mesa </td>
   <td style="text-align:right;"> 46000 </td>
   <td style="text-align:left;"> Arizona </td>
   <td style="text-align:right;width: 15em; "> 4 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Long Beach </td>
   <td style="text-align:right;"> 43000 </td>
   <td style="text-align:left;"> California </td>
   <td style="text-align:right;width: 15em; "> 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Atlanta </td>
   <td style="text-align:right;"> 4000 </td>
   <td style="text-align:left;"> Georgia </td>
   <td style="text-align:right;width: 15em; "> 13 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Virginia Beach </td>
   <td style="text-align:right;"> 82000 </td>
   <td style="text-align:left;"> Virginia </td>
   <td style="text-align:right;width: 15em; "> 51 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Colorado Springs </td>
   <td style="text-align:right;"> 16000 </td>
   <td style="text-align:left;"> Colorado </td>
   <td style="text-align:right;width: 15em; "> 8 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Omaha </td>
   <td style="text-align:right;"> 37000 </td>
   <td style="text-align:left;"> Nebraska </td>
   <td style="text-align:right;width: 15em; "> 31 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Raleigh </td>
   <td style="text-align:right;"> 55000 </td>
   <td style="text-align:left;"> North Carolina </td>
   <td style="text-align:right;width: 15em; "> 37 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Miami </td>
   <td style="text-align:right;"> 45000 </td>
   <td style="text-align:left;"> Florida </td>
   <td style="text-align:right;width: 15em; "> 12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Oakland </td>
   <td style="text-align:right;"> 53000 </td>
   <td style="text-align:left;"> California </td>
   <td style="text-align:right;width: 15em; "> 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Minneapolis </td>
   <td style="text-align:right;"> 43000 </td>
   <td style="text-align:left;"> Minnesota </td>
   <td style="text-align:right;width: 15em; "> 27 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Tulsa </td>
   <td style="text-align:right;"> 75000 </td>
   <td style="text-align:left;"> Oklahoma </td>
   <td style="text-align:right;width: 15em; "> 40 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Cleveland </td>
   <td style="text-align:right;"> 16000 </td>
   <td style="text-align:left;"> Ohio </td>
   <td style="text-align:right;width: 15em; "> 39 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Wichita </td>
   <td style="text-align:right;"> 79000 </td>
   <td style="text-align:left;"> Kansas </td>
   <td style="text-align:right;width: 15em; "> 20 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Arlington </td>
   <td style="text-align:right;"> 4000 </td>
   <td style="text-align:left;"> Texas </td>
   <td style="text-align:right;width: 15em; "> 48 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> New Orleans </td>
   <td style="text-align:right;"> 55000 </td>
   <td style="text-align:left;"> Louisiana </td>
   <td style="text-align:right;width: 15em; "> 22 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Bakersfield </td>
   <td style="text-align:right;"> 3526 </td>
   <td style="text-align:left;"> California </td>
   <td style="text-align:right;width: 15em; "> 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Tampa </td>
   <td style="text-align:right;"> 71000 </td>
   <td style="text-align:left;"> Florida </td>
   <td style="text-align:right;width: 15em; "> 12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Aurora </td>
   <td style="text-align:right;"> 4000 </td>
   <td style="text-align:left;"> Colorado </td>
   <td style="text-align:right;width: 15em; "> 8 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Honolulu </td>
   <td style="text-align:right;"> 71550 </td>
   <td style="text-align:left;"> Hawaii </td>
   <td style="text-align:right;width: 15em; "> 15 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Anaheim </td>
   <td style="text-align:right;"> 2000 </td>
   <td style="text-align:left;"> California </td>
   <td style="text-align:right;width: 15em; "> 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Santa Ana </td>
   <td style="text-align:right;"> 69000 </td>
   <td style="text-align:left;"> California </td>
   <td style="text-align:right;width: 15em; "> 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Corpus Christi </td>
   <td style="text-align:right;"> 17000 </td>
   <td style="text-align:left;"> Texas </td>
   <td style="text-align:right;width: 15em; "> 48 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Riverside </td>
   <td style="text-align:right;"> 62000 </td>
   <td style="text-align:left;"> California </td>
   <td style="text-align:right;width: 15em; "> 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> St. Louis </td>
   <td style="text-align:right;"> 65000 </td>
   <td style="text-align:left;"> Missouri </td>
   <td style="text-align:right;width: 15em; "> 29 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Lexington-Fayette </td>
   <td style="text-align:right;"> 46027 </td>
   <td style="text-align:left;"> Kentucky </td>
   <td style="text-align:right;width: 15em; "> 21 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Pittsburgh </td>
   <td style="text-align:right;"> 61000 </td>
   <td style="text-align:left;"> Pennsylvania </td>
   <td style="text-align:right;width: 15em; "> 42 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Stockton </td>
   <td style="text-align:right;"> 75000 </td>
   <td style="text-align:left;"> California </td>
   <td style="text-align:right;width: 15em; "> 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Anchorage </td>
   <td style="text-align:right;"> 3000 </td>
   <td style="text-align:left;"> Alaska </td>
   <td style="text-align:right;width: 15em; "> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Cincinnati </td>
   <td style="text-align:right;"> 15000 </td>
   <td style="text-align:left;"> Ohio </td>
   <td style="text-align:right;width: 15em; "> 39 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> St. Paul </td>
   <td style="text-align:right;"> 58000 </td>
   <td style="text-align:left;"> Minnesota </td>
   <td style="text-align:right;width: 15em; "> 27 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Greensboro </td>
   <td style="text-align:right;"> 28000 </td>
   <td style="text-align:left;"> North Carolina </td>
   <td style="text-align:right;width: 15em; "> 37 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Toledo </td>
   <td style="text-align:right;"> 77000 </td>
   <td style="text-align:left;"> Ohio </td>
   <td style="text-align:right;width: 15em; "> 39 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Newark </td>
   <td style="text-align:right;"> 51000 </td>
   <td style="text-align:left;"> New Jersey </td>
   <td style="text-align:right;width: 15em; "> 34 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Plano </td>
   <td style="text-align:right;"> 58016 </td>
   <td style="text-align:left;"> Texas </td>
   <td style="text-align:right;width: 15em; "> 48 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Henderson </td>
   <td style="text-align:right;"> 31900 </td>
   <td style="text-align:left;"> Nevada </td>
   <td style="text-align:right;width: 15em; "> 32 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Lincoln </td>
   <td style="text-align:right;"> 28000 </td>
   <td style="text-align:left;"> Nebraska </td>
   <td style="text-align:right;width: 15em; "> 31 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Orlando </td>
   <td style="text-align:right;"> 53000 </td>
   <td style="text-align:left;"> Florida </td>
   <td style="text-align:right;width: 15em; "> 12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Jersey City </td>
   <td style="text-align:right;"> 36000 </td>
   <td style="text-align:left;"> New Jersey </td>
   <td style="text-align:right;width: 15em; "> 34 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fort Wayne </td>
   <td style="text-align:right;"> 25000 </td>
   <td style="text-align:left;"> Indiana </td>
   <td style="text-align:right;width: 15em; "> 18 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Chula Vista </td>
   <td style="text-align:right;"> 13392 </td>
   <td style="text-align:left;"> California </td>
   <td style="text-align:right;width: 15em; "> 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Buffalo </td>
   <td style="text-align:right;"> 11000 </td>
   <td style="text-align:left;"> New York </td>
   <td style="text-align:right;width: 15em; "> 36 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> St. Petersburg </td>
   <td style="text-align:right;"> 63000 </td>
   <td style="text-align:left;"> Florida </td>
   <td style="text-align:right;width: 15em; "> 12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Durham </td>
   <td style="text-align:right;"> 19000 </td>
   <td style="text-align:left;"> North Carolina </td>
   <td style="text-align:right;width: 15em; "> 37 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Laredo </td>
   <td style="text-align:right;"> 41464 </td>
   <td style="text-align:left;"> Texas </td>
   <td style="text-align:right;width: 15em; "> 48 </td>
  </tr>
</tbody>
</table>

<div style="margin-bottom:25px;">
</div>
#Counties

<table class="table table-striped table-hover table-responsive" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> County </th>
   <th style="text-align:right;"> CountyID </th>
   <th style="text-align:left;"> State </th>
   <th style="text-align:right;"> StateID </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Los Angeles </td>
   <td style="text-align:right;"> 37 </td>
   <td style="text-align:left;"> California </td>
   <td style="text-align:right;width: 15em; "> 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Cook </td>
   <td style="text-align:right;"> 31 </td>
   <td style="text-align:left;"> Illinois </td>
   <td style="text-align:right;width: 15em; "> 17 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Harris </td>
   <td style="text-align:right;"> 201 </td>
   <td style="text-align:left;"> Texas </td>
   <td style="text-align:right;width: 15em; "> 48 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Maricopa </td>
   <td style="text-align:right;"> 13 </td>
   <td style="text-align:left;"> Arizona </td>
   <td style="text-align:right;width: 15em; "> 4 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> San Diego </td>
   <td style="text-align:right;"> 73 </td>
   <td style="text-align:left;"> California </td>
   <td style="text-align:right;width: 15em; "> 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Orange </td>
   <td style="text-align:right;"> 59 </td>
   <td style="text-align:left;"> California </td>
   <td style="text-align:right;width: 15em; "> 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Miami-Dade </td>
   <td style="text-align:right;"> 86 </td>
   <td style="text-align:left;"> Florida </td>
   <td style="text-align:right;width: 15em; "> 12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Kings </td>
   <td style="text-align:right;"> 47 </td>
   <td style="text-align:left;"> New York </td>
   <td style="text-align:right;width: 15em; "> 36 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Dallas </td>
   <td style="text-align:right;"> 113 </td>
   <td style="text-align:left;"> Texas </td>
   <td style="text-align:right;width: 15em; "> 48 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Riverside </td>
   <td style="text-align:right;"> 65 </td>
   <td style="text-align:left;"> California </td>
   <td style="text-align:right;width: 15em; "> 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Queens </td>
   <td style="text-align:right;"> 81 </td>
   <td style="text-align:left;"> New York </td>
   <td style="text-align:right;width: 15em; "> 36 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> San Bernardino </td>
   <td style="text-align:right;"> 71 </td>
   <td style="text-align:left;"> California </td>
   <td style="text-align:right;width: 15em; "> 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> King </td>
   <td style="text-align:right;"> 33 </td>
   <td style="text-align:left;"> Washington </td>
   <td style="text-align:right;width: 15em; "> 53 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Clark </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:left;"> Nevada </td>
   <td style="text-align:right;width: 15em; "> 32 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Tarrant </td>
   <td style="text-align:right;"> 439 </td>
   <td style="text-align:left;"> Texas </td>
   <td style="text-align:right;width: 15em; "> 48 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Santa Clara </td>
   <td style="text-align:right;"> 85 </td>
   <td style="text-align:left;"> California </td>
   <td style="text-align:right;width: 15em; "> 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Broward </td>
   <td style="text-align:right;"> 11 </td>
   <td style="text-align:left;"> Florida </td>
   <td style="text-align:right;width: 15em; "> 12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Bexar </td>
   <td style="text-align:right;"> 29 </td>
   <td style="text-align:left;"> Texas </td>
   <td style="text-align:right;width: 15em; "> 48 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Wayne </td>
   <td style="text-align:right;"> 163 </td>
   <td style="text-align:left;"> Michigan </td>
   <td style="text-align:right;width: 15em; "> 26 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> New York </td>
   <td style="text-align:right;"> 61 </td>
   <td style="text-align:left;"> New York </td>
   <td style="text-align:right;width: 15em; "> 36 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Alameda </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:left;"> California </td>
   <td style="text-align:right;width: 15em; "> 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Middlesex </td>
   <td style="text-align:right;"> 17 </td>
   <td style="text-align:left;"> Massachusetts </td>
   <td style="text-align:right;width: 15em; "> 25 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Philadelphia </td>
   <td style="text-align:right;"> 101 </td>
   <td style="text-align:left;"> Pennsylvania </td>
   <td style="text-align:right;width: 15em; "> 42 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Suffolk </td>
   <td style="text-align:right;"> 103 </td>
   <td style="text-align:left;"> New York </td>
   <td style="text-align:right;width: 15em; "> 36 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Sacramento </td>
   <td style="text-align:right;"> 67 </td>
   <td style="text-align:left;"> California </td>
   <td style="text-align:right;width: 15em; "> 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Bronx </td>
   <td style="text-align:right;"> 5 </td>
   <td style="text-align:left;"> New York </td>
   <td style="text-align:right;width: 15em; "> 36 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Palm Beach </td>
   <td style="text-align:right;"> 99 </td>
   <td style="text-align:left;"> Florida </td>
   <td style="text-align:right;width: 15em; "> 12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Nassau </td>
   <td style="text-align:right;"> 59 </td>
   <td style="text-align:left;"> New York </td>
   <td style="text-align:right;width: 15em; "> 36 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Hillsborough </td>
   <td style="text-align:right;"> 57 </td>
   <td style="text-align:left;"> Florida </td>
   <td style="text-align:right;width: 15em; "> 12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Cuyahoga </td>
   <td style="text-align:right;"> 35 </td>
   <td style="text-align:left;"> Ohio </td>
   <td style="text-align:right;width: 15em; "> 39 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Orange </td>
   <td style="text-align:right;"> 95 </td>
   <td style="text-align:left;"> Florida </td>
   <td style="text-align:right;width: 15em; "> 12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Oakland </td>
   <td style="text-align:right;"> 125 </td>
   <td style="text-align:left;"> Michigan </td>
   <td style="text-align:right;width: 15em; "> 26 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Franklin </td>
   <td style="text-align:right;"> 49 </td>
   <td style="text-align:left;"> Ohio </td>
   <td style="text-align:right;width: 15em; "> 39 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Allegheny </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:left;"> Pennsylvania </td>
   <td style="text-align:right;width: 15em; "> 42 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Hennepin </td>
   <td style="text-align:right;"> 53 </td>
   <td style="text-align:left;"> Minnesota </td>
   <td style="text-align:right;width: 15em; "> 27 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Travis </td>
   <td style="text-align:right;"> 453 </td>
   <td style="text-align:left;"> Texas </td>
   <td style="text-align:right;width: 15em; "> 48 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fairfax </td>
   <td style="text-align:right;"> 59 </td>
   <td style="text-align:left;"> Virginia </td>
   <td style="text-align:right;width: 15em; "> 51 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Contra Costa </td>
   <td style="text-align:right;"> 13 </td>
   <td style="text-align:left;"> California </td>
   <td style="text-align:right;width: 15em; "> 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Salt Lake </td>
   <td style="text-align:right;"> 35 </td>
   <td style="text-align:left;"> Utah </td>
   <td style="text-align:right;width: 15em; "> 49 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Montgomery </td>
   <td style="text-align:right;"> 31 </td>
   <td style="text-align:left;"> Maryland </td>
   <td style="text-align:right;width: 15em; "> 24 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Mecklenburg </td>
   <td style="text-align:right;"> 119 </td>
   <td style="text-align:left;"> North Carolina </td>
   <td style="text-align:right;width: 15em; "> 37 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Pima </td>
   <td style="text-align:right;"> 19 </td>
   <td style="text-align:left;"> Arizona </td>
   <td style="text-align:right;width: 15em; "> 4 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> St. Louis </td>
   <td style="text-align:right;"> 189 </td>
   <td style="text-align:left;"> Missouri </td>
   <td style="text-align:right;width: 15em; "> 29 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Wake </td>
   <td style="text-align:right;"> 183 </td>
   <td style="text-align:left;"> North Carolina </td>
   <td style="text-align:right;width: 15em; "> 37 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fulton </td>
   <td style="text-align:right;"> 121 </td>
   <td style="text-align:left;"> Georgia </td>
   <td style="text-align:right;width: 15em; "> 13 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Honolulu </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:left;"> Hawaii </td>
   <td style="text-align:right;width: 15em; "> 15 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Westchester </td>
   <td style="text-align:right;"> 119 </td>
   <td style="text-align:left;"> New York </td>
   <td style="text-align:right;width: 15em; "> 36 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fresno </td>
   <td style="text-align:right;"> 19 </td>
   <td style="text-align:left;"> California </td>
   <td style="text-align:right;width: 15em; "> 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Milwaukee </td>
   <td style="text-align:right;"> 79 </td>
   <td style="text-align:left;"> Wisconsin </td>
   <td style="text-align:right;width: 15em; "> 55 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fairfield </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:left;"> Connecticut </td>
   <td style="text-align:right;width: 15em; "> 9 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Pinellas </td>
   <td style="text-align:right;"> 103 </td>
   <td style="text-align:left;"> Florida </td>
   <td style="text-align:right;width: 15em; "> 12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Shelby </td>
   <td style="text-align:right;"> 157 </td>
   <td style="text-align:left;"> Tennessee </td>
   <td style="text-align:right;width: 15em; "> 47 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Marion </td>
   <td style="text-align:right;"> 97 </td>
   <td style="text-align:left;"> Indiana </td>
   <td style="text-align:right;width: 15em; "> 18 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> DuPage </td>
   <td style="text-align:right;"> 43 </td>
   <td style="text-align:left;"> Illinois </td>
   <td style="text-align:right;width: 15em; "> 17 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Bergen </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:left;"> New Jersey </td>
   <td style="text-align:right;width: 15em; "> 34 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Erie </td>
   <td style="text-align:right;"> 29 </td>
   <td style="text-align:left;"> New York </td>
   <td style="text-align:right;width: 15em; "> 36 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Duval </td>
   <td style="text-align:right;"> 31 </td>
   <td style="text-align:left;"> Florida </td>
   <td style="text-align:right;width: 15em; "> 12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Prince George's </td>
   <td style="text-align:right;"> 33 </td>
   <td style="text-align:left;"> Maryland </td>
   <td style="text-align:right;width: 15em; "> 24 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Hartford </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:left;"> Connecticut </td>
   <td style="text-align:right;width: 15em; "> 9 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Collin </td>
   <td style="text-align:right;"> 85 </td>
   <td style="text-align:left;"> Texas </td>
   <td style="text-align:right;width: 15em; "> 48 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Gwinnett </td>
   <td style="text-align:right;"> 135 </td>
   <td style="text-align:left;"> Georgia </td>
   <td style="text-align:right;width: 15em; "> 13 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Kern </td>
   <td style="text-align:right;"> 29 </td>
   <td style="text-align:left;"> California </td>
   <td style="text-align:right;width: 15em; "> 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> New Haven </td>
   <td style="text-align:right;"> 9 </td>
   <td style="text-align:left;"> Connecticut </td>
   <td style="text-align:right;width: 15em; "> 9 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Macomb </td>
   <td style="text-align:right;"> 99 </td>
   <td style="text-align:left;"> Michigan </td>
   <td style="text-align:right;width: 15em; "> 26 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> San Francisco </td>
   <td style="text-align:right;"> 75 </td>
   <td style="text-align:left;"> California </td>
   <td style="text-align:right;width: 15em; "> 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Ventura </td>
   <td style="text-align:right;"> 111 </td>
   <td style="text-align:left;"> California </td>
   <td style="text-align:right;width: 15em; "> 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> El Paso </td>
   <td style="text-align:right;"> 141 </td>
   <td style="text-align:left;"> Texas </td>
   <td style="text-align:right;width: 15em; "> 48 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Pierce </td>
   <td style="text-align:right;"> 53 </td>
   <td style="text-align:left;"> Washington </td>
   <td style="text-align:right;width: 15em; "> 53 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Middlesex </td>
   <td style="text-align:right;"> 23 </td>
   <td style="text-align:left;"> New Jersey </td>
   <td style="text-align:right;width: 15em; "> 34 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Hidalgo </td>
   <td style="text-align:right;"> 215 </td>
   <td style="text-align:left;"> Texas </td>
   <td style="text-align:right;width: 15em; "> 48 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Baltimore </td>
   <td style="text-align:right;"> 5 </td>
   <td style="text-align:left;"> Maryland </td>
   <td style="text-align:right;width: 15em; "> 24 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Montgomery </td>
   <td style="text-align:right;"> 91 </td>
   <td style="text-align:left;"> Pennsylvania </td>
   <td style="text-align:right;width: 15em; "> 42 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Worcester </td>
   <td style="text-align:right;"> 27 </td>
   <td style="text-align:left;"> Massachusetts </td>
   <td style="text-align:right;width: 15em; "> 25 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Hamilton </td>
   <td style="text-align:right;"> 61 </td>
   <td style="text-align:left;"> Ohio </td>
   <td style="text-align:right;width: 15em; "> 39 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Essex </td>
   <td style="text-align:right;"> 13 </td>
   <td style="text-align:left;"> New Jersey </td>
   <td style="text-align:right;width: 15em; "> 34 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Multnomah </td>
   <td style="text-align:right;"> 51 </td>
   <td style="text-align:left;"> Oregon </td>
   <td style="text-align:right;width: 15em; "> 41 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Essex </td>
   <td style="text-align:right;"> 9 </td>
   <td style="text-align:left;"> Massachusetts </td>
   <td style="text-align:right;width: 15em; "> 25 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Suffolk </td>
   <td style="text-align:right;"> 25 </td>
   <td style="text-align:left;"> Massachusetts </td>
   <td style="text-align:right;width: 15em; "> 25 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Oklahoma </td>
   <td style="text-align:right;"> 109 </td>
   <td style="text-align:left;"> Oklahoma </td>
   <td style="text-align:right;width: 15em; "> 40 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Jefferson </td>
   <td style="text-align:right;"> 111 </td>
   <td style="text-align:left;"> Kentucky </td>
   <td style="text-align:right;width: 15em; "> 21 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Snohomish </td>
   <td style="text-align:right;"> 61 </td>
   <td style="text-align:left;"> Washington </td>
   <td style="text-align:right;width: 15em; "> 53 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> San Mateo </td>
   <td style="text-align:right;"> 81 </td>
   <td style="text-align:left;"> California </td>
   <td style="text-align:right;width: 15em; "> 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Denton </td>
   <td style="text-align:right;"> 121 </td>
   <td style="text-align:left;"> Texas </td>
   <td style="text-align:right;width: 15em; "> 48 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Monroe </td>
   <td style="text-align:right;"> 55 </td>
   <td style="text-align:left;"> New York </td>
   <td style="text-align:right;width: 15em; "> 36 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Cobb </td>
   <td style="text-align:right;"> 67 </td>
   <td style="text-align:left;"> Georgia </td>
   <td style="text-align:right;width: 15em; "> 13 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> DeKalb </td>
   <td style="text-align:right;"> 89 </td>
   <td style="text-align:left;"> Georgia </td>
   <td style="text-align:right;width: 15em; "> 13 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> San Joaquin </td>
   <td style="text-align:right;"> 77 </td>
   <td style="text-align:left;"> California </td>
   <td style="text-align:right;width: 15em; "> 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Lake </td>
   <td style="text-align:right;"> 97 </td>
   <td style="text-align:left;"> Illinois </td>
   <td style="text-align:right;width: 15em; "> 17 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Norfolk </td>
   <td style="text-align:right;"> 21 </td>
   <td style="text-align:left;"> Massachusetts </td>
   <td style="text-align:right;width: 15em; "> 25 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Will </td>
   <td style="text-align:right;"> 197 </td>
   <td style="text-align:left;"> Illinois </td>
   <td style="text-align:right;width: 15em; "> 17 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fort Bend </td>
   <td style="text-align:right;"> 157 </td>
   <td style="text-align:left;"> Texas </td>
   <td style="text-align:right;width: 15em; "> 48 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Jackson </td>
   <td style="text-align:right;"> 95 </td>
   <td style="text-align:left;"> Missouri </td>
   <td style="text-align:right;width: 15em; "> 29 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Lee </td>
   <td style="text-align:right;"> 71 </td>
   <td style="text-align:left;"> Florida </td>
   <td style="text-align:right;width: 15em; "> 12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Bernalillo </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:left;"> New Mexico </td>
   <td style="text-align:right;width: 15em; "> 35 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Hudson </td>
   <td style="text-align:right;"> 17 </td>
   <td style="text-align:left;"> New Jersey </td>
   <td style="text-align:right;width: 15em; "> 34 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Davidson </td>
   <td style="text-align:right;"> 37 </td>
   <td style="text-align:left;"> Tennessee </td>
   <td style="text-align:right;width: 15em; "> 47 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> El Paso </td>
   <td style="text-align:right;"> 41 </td>
   <td style="text-align:left;"> Colorado </td>
   <td style="text-align:right;width: 15em; "> 8 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Denver </td>
   <td style="text-align:right;"> 31 </td>
   <td style="text-align:left;"> Colorado </td>
   <td style="text-align:right;width: 15em; "> 8 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Jefferson </td>
   <td style="text-align:right;"> 73 </td>
   <td style="text-align:left;"> Alabama </td>
   <td style="text-align:right;width: 15em; "> 1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> District of Columbia </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:left;"> District of Columbia </td>
   <td style="text-align:right;width: 15em; "> 11 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Polk </td>
   <td style="text-align:right;"> 105 </td>
   <td style="text-align:left;"> Florida </td>
   <td style="text-align:right;width: 15em; "> 12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Providence </td>
   <td style="text-align:right;"> 7 </td>
   <td style="text-align:left;"> Rhode Island </td>
   <td style="text-align:right;width: 15em; "> 44 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Tulsa </td>
   <td style="text-align:right;"> 143 </td>
   <td style="text-align:left;"> Oklahoma </td>
   <td style="text-align:right;width: 15em; "> 40 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Kent </td>
   <td style="text-align:right;"> 81 </td>
   <td style="text-align:left;"> Michigan </td>
   <td style="text-align:right;width: 15em; "> 26 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Monmouth </td>
   <td style="text-align:right;"> 25 </td>
   <td style="text-align:left;"> New Jersey </td>
   <td style="text-align:right;width: 15em; "> 34 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Bucks </td>
   <td style="text-align:right;"> 17 </td>
   <td style="text-align:left;"> Pennsylvania </td>
   <td style="text-align:right;width: 15em; "> 42 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Baltimore city </td>
   <td style="text-align:right;"> 510 </td>
   <td style="text-align:left;"> Maryland </td>
   <td style="text-align:right;width: 15em; "> 24 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Arapahoe </td>
   <td style="text-align:right;"> 5 </td>
   <td style="text-align:left;"> Colorado </td>
   <td style="text-align:right;width: 15em; "> 8 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Ocean </td>
   <td style="text-align:right;"> 29 </td>
   <td style="text-align:left;"> New Jersey </td>
   <td style="text-align:right;width: 15em; "> 34 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Johnson </td>
   <td style="text-align:right;"> 91 </td>
   <td style="text-align:left;"> Kansas </td>
   <td style="text-align:right;width: 15em; "> 20 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Utah </td>
   <td style="text-align:right;"> 49 </td>
   <td style="text-align:left;"> Utah </td>
   <td style="text-align:right;width: 15em; "> 49 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Washington </td>
   <td style="text-align:right;"> 67 </td>
   <td style="text-align:left;"> Oregon </td>
   <td style="text-align:right;width: 15em; "> 41 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Delaware </td>
   <td style="text-align:right;"> 45 </td>
   <td style="text-align:left;"> Pennsylvania </td>
   <td style="text-align:right;width: 15em; "> 42 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Brevard </td>
   <td style="text-align:right;"> 9 </td>
   <td style="text-align:left;"> Florida </td>
   <td style="text-align:right;width: 15em; "> 12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Anne Arundel </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:left;"> Maryland </td>
   <td style="text-align:right;width: 15em; "> 24 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Jefferson </td>
   <td style="text-align:right;"> 59 </td>
   <td style="text-align:left;"> Colorado </td>
   <td style="text-align:right;width: 15em; "> 8 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Bristol </td>
   <td style="text-align:right;"> 5 </td>
   <td style="text-align:left;"> Massachusetts </td>
   <td style="text-align:right;width: 15em; "> 25 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> New Castle </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:left;"> Delaware </td>
   <td style="text-align:right;width: 15em; "> 10 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Union </td>
   <td style="text-align:right;"> 39 </td>
   <td style="text-align:left;"> New Jersey </td>
   <td style="text-align:right;width: 15em; "> 34 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Douglas </td>
   <td style="text-align:right;"> 55 </td>
   <td style="text-align:left;"> Nebraska </td>
   <td style="text-align:right;width: 15em; "> 31 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Summit </td>
   <td style="text-align:right;"> 153 </td>
   <td style="text-align:left;"> Ohio </td>
   <td style="text-align:right;width: 15em; "> 39 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Lancaster </td>
   <td style="text-align:right;"> 71 </td>
   <td style="text-align:left;"> Pennsylvania </td>
   <td style="text-align:right;width: 15em; "> 42 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Montgomery </td>
   <td style="text-align:right;"> 113 </td>
   <td style="text-align:left;"> Ohio </td>
   <td style="text-align:right;width: 15em; "> 39 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Ramsey </td>
   <td style="text-align:right;"> 123 </td>
   <td style="text-align:left;"> Minnesota </td>
   <td style="text-align:right;width: 15em; "> 27 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Stanislaus </td>
   <td style="text-align:right;"> 99 </td>
   <td style="text-align:left;"> California </td>
   <td style="text-align:right;width: 15em; "> 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Kane </td>
   <td style="text-align:right;"> 89 </td>
   <td style="text-align:left;"> Illinois </td>
   <td style="text-align:right;width: 15em; "> 17 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Montgomery </td>
   <td style="text-align:right;"> 339 </td>
   <td style="text-align:left;"> Texas </td>
   <td style="text-align:right;width: 15em; "> 48 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Dane </td>
   <td style="text-align:right;"> 25 </td>
   <td style="text-align:left;"> Wisconsin </td>
   <td style="text-align:right;width: 15em; "> 55 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Chester </td>
   <td style="text-align:right;"> 29 </td>
   <td style="text-align:left;"> Pennsylvania </td>
   <td style="text-align:right;width: 15em; "> 42 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Guilford </td>
   <td style="text-align:right;"> 81 </td>
   <td style="text-align:left;"> North Carolina </td>
   <td style="text-align:right;width: 15em; "> 37 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Camden </td>
   <td style="text-align:right;"> 7 </td>
   <td style="text-align:left;"> New Jersey </td>
   <td style="text-align:right;width: 15em; "> 34 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Volusia </td>
   <td style="text-align:right;"> 127 </td>
   <td style="text-align:left;"> Florida </td>
   <td style="text-align:right;width: 15em; "> 12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Sedgwick </td>
   <td style="text-align:right;"> 173 </td>
   <td style="text-align:left;"> Kansas </td>
   <td style="text-align:right;width: 15em; "> 20 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Passaic </td>
   <td style="text-align:right;"> 31 </td>
   <td style="text-align:left;"> New Jersey </td>
   <td style="text-align:right;width: 15em; "> 34 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Plymouth </td>
   <td style="text-align:right;"> 23 </td>
   <td style="text-align:left;"> Massachusetts </td>
   <td style="text-align:right;width: 15em; "> 25 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Morris </td>
   <td style="text-align:right;"> 27 </td>
   <td style="text-align:left;"> New Jersey </td>
   <td style="text-align:right;width: 15em; "> 34 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Sonoma </td>
   <td style="text-align:right;"> 97 </td>
   <td style="text-align:left;"> California </td>
   <td style="text-align:right;width: 15em; "> 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Williamson </td>
   <td style="text-align:right;"> 491 </td>
   <td style="text-align:left;"> Texas </td>
   <td style="text-align:right;width: 15em; "> 48 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Lake </td>
   <td style="text-align:right;"> 89 </td>
   <td style="text-align:left;"> Indiana </td>
   <td style="text-align:right;width: 15em; "> 18 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Pasco </td>
   <td style="text-align:right;"> 101 </td>
   <td style="text-align:left;"> Florida </td>
   <td style="text-align:right;width: 15em; "> 12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Spokane </td>
   <td style="text-align:right;"> 63 </td>
   <td style="text-align:left;"> Washington </td>
   <td style="text-align:right;width: 15em; "> 53 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Greenville </td>
   <td style="text-align:right;"> 45 </td>
   <td style="text-align:left;"> South Carolina </td>
   <td style="text-align:right;width: 15em; "> 45 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Adams </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:left;"> Colorado </td>
   <td style="text-align:right;width: 15em; "> 8 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Richmond </td>
   <td style="text-align:right;"> 85 </td>
   <td style="text-align:left;"> New York </td>
   <td style="text-align:right;width: 15em; "> 36 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Hampden </td>
   <td style="text-align:right;"> 13 </td>
   <td style="text-align:left;"> Massachusetts </td>
   <td style="text-align:right;width: 15em; "> 25 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Onondaga </td>
   <td style="text-align:right;"> 67 </td>
   <td style="text-align:left;"> New York </td>
   <td style="text-align:right;width: 15em; "> 36 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Polk </td>
   <td style="text-align:right;"> 153 </td>
   <td style="text-align:left;"> Iowa </td>
   <td style="text-align:right;width: 15em; "> 19 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Tulare </td>
   <td style="text-align:right;"> 107 </td>
   <td style="text-align:left;"> California </td>
   <td style="text-align:right;width: 15em; "> 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Clark </td>
   <td style="text-align:right;"> 11 </td>
   <td style="text-align:left;"> Washington </td>
   <td style="text-align:right;width: 15em; "> 53 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Burlington </td>
   <td style="text-align:right;"> 5 </td>
   <td style="text-align:left;"> New Jersey </td>
   <td style="text-align:right;width: 15em; "> 34 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Virginia Beach city </td>
   <td style="text-align:right;"> 810 </td>
   <td style="text-align:left;"> Virginia </td>
   <td style="text-align:right;width: 15em; "> 51 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Knox </td>
   <td style="text-align:right;"> 93 </td>
   <td style="text-align:left;"> Tennessee </td>
   <td style="text-align:right;width: 15em; "> 47 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> East Baton Rouge Parish </td>
   <td style="text-align:right;"> 33 </td>
   <td style="text-align:left;"> Louisiana </td>
   <td style="text-align:right;width: 15em; "> 22 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Prince William </td>
   <td style="text-align:right;"> 153 </td>
   <td style="text-align:left;"> Virginia </td>
   <td style="text-align:right;width: 15em; "> 51 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Seminole </td>
   <td style="text-align:right;"> 117 </td>
   <td style="text-align:left;"> Florida </td>
   <td style="text-align:right;width: 15em; "> 12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> York </td>
   <td style="text-align:right;"> 133 </td>
   <td style="text-align:left;"> Pennsylvania </td>
   <td style="text-align:right;width: 15em; "> 42 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Washoe </td>
   <td style="text-align:right;"> 31 </td>
   <td style="text-align:left;"> Nevada </td>
   <td style="text-align:right;width: 15em; "> 32 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Santa Barbara </td>
   <td style="text-align:right;"> 83 </td>
   <td style="text-align:left;"> California </td>
   <td style="text-align:right;width: 15em; "> 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Jefferson Parish </td>
   <td style="text-align:right;"> 51 </td>
   <td style="text-align:left;"> Louisiana </td>
   <td style="text-align:right;width: 15em; "> 22 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Lucas </td>
   <td style="text-align:right;"> 95 </td>
   <td style="text-align:left;"> Ohio </td>
   <td style="text-align:right;width: 15em; "> 39 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Monterey </td>
   <td style="text-align:right;"> 53 </td>
   <td style="text-align:left;"> California </td>
   <td style="text-align:right;width: 15em; "> 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Solano </td>
   <td style="text-align:right;"> 95 </td>
   <td style="text-align:left;"> California </td>
   <td style="text-align:right;width: 15em; "> 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Ada </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:left;"> Idaho </td>
   <td style="text-align:right;width: 15em; "> 16 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Cameron </td>
   <td style="text-align:right;"> 61 </td>
   <td style="text-align:left;"> Texas </td>
   <td style="text-align:right;width: 15em; "> 48 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Mobile </td>
   <td style="text-align:right;"> 97 </td>
   <td style="text-align:left;"> Alabama </td>
   <td style="text-align:right;width: 15em; "> 1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Berks </td>
   <td style="text-align:right;"> 11 </td>
   <td style="text-align:left;"> Pennsylvania </td>
   <td style="text-align:right;width: 15em; "> 42 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Genesee </td>
   <td style="text-align:right;"> 49 </td>
   <td style="text-align:left;"> Michigan </td>
   <td style="text-align:right;width: 15em; "> 26 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Dakota </td>
   <td style="text-align:right;"> 37 </td>
   <td style="text-align:left;"> Minnesota </td>
   <td style="text-align:right;width: 15em; "> 27 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Hillsborough </td>
   <td style="text-align:right;"> 11 </td>
   <td style="text-align:left;"> New Hampshire </td>
   <td style="text-align:right;width: 15em; "> 33 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Richland </td>
   <td style="text-align:right;"> 79 </td>
   <td style="text-align:left;"> South Carolina </td>
   <td style="text-align:right;width: 15em; "> 45 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Sarasota </td>
   <td style="text-align:right;"> 115 </td>
   <td style="text-align:left;"> Florida </td>
   <td style="text-align:right;width: 15em; "> 12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Pinal </td>
   <td style="text-align:right;"> 21 </td>
   <td style="text-align:left;"> Arizona </td>
   <td style="text-align:right;width: 15em; "> 4 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Waukesha </td>
   <td style="text-align:right;"> 133 </td>
   <td style="text-align:left;"> Wisconsin </td>
   <td style="text-align:right;width: 15em; "> 55 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Clackamas </td>
   <td style="text-align:right;"> 5 </td>
   <td style="text-align:left;"> Oregon </td>
   <td style="text-align:right;width: 15em; "> 41 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Pulaski </td>
   <td style="text-align:right;"> 119 </td>
   <td style="text-align:left;"> Arkansas </td>
   <td style="text-align:right;width: 15em; "> 5 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Orleans Parish </td>
   <td style="text-align:right;"> 71 </td>
   <td style="text-align:left;"> Louisiana </td>
   <td style="text-align:right;width: 15em; "> 22 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Charleston </td>
   <td style="text-align:right;"> 19 </td>
   <td style="text-align:left;"> South Carolina </td>
   <td style="text-align:right;width: 15em; "> 45 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> St. Charles </td>
   <td style="text-align:right;"> 183 </td>
   <td style="text-align:left;"> Missouri </td>
   <td style="text-align:right;width: 15em; "> 29 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Orange </td>
   <td style="text-align:right;"> 71 </td>
   <td style="text-align:left;"> New York </td>
   <td style="text-align:right;width: 15em; "> 36 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Stark </td>
   <td style="text-align:right;"> 151 </td>
   <td style="text-align:left;"> Ohio </td>
   <td style="text-align:right;width: 15em; "> 39 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Butler </td>
   <td style="text-align:right;"> 17 </td>
   <td style="text-align:left;"> Ohio </td>
   <td style="text-align:right;width: 15em; "> 39 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Mercer </td>
   <td style="text-align:right;"> 21 </td>
   <td style="text-align:left;"> New Jersey </td>
   <td style="text-align:right;width: 15em; "> 34 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Placer </td>
   <td style="text-align:right;"> 61 </td>
   <td style="text-align:left;"> California </td>
   <td style="text-align:right;width: 15em; "> 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Allen </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:left;"> Indiana </td>
   <td style="text-align:right;width: 15em; "> 18 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Forsyth </td>
   <td style="text-align:right;"> 67 </td>
   <td style="text-align:left;"> North Carolina </td>
   <td style="text-align:right;width: 15em; "> 37 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Loudoun </td>
   <td style="text-align:right;"> 107 </td>
   <td style="text-align:left;"> Virginia </td>
   <td style="text-align:right;width: 15em; "> 51 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Lane </td>
   <td style="text-align:right;"> 39 </td>
   <td style="text-align:left;"> Oregon </td>
   <td style="text-align:right;width: 15em; "> 41 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Westmoreland </td>
   <td style="text-align:right;"> 129 </td>
   <td style="text-align:left;"> Pennsylvania </td>
   <td style="text-align:right;width: 15em; "> 42 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Lehigh </td>
   <td style="text-align:right;"> 77 </td>
   <td style="text-align:left;"> Pennsylvania </td>
   <td style="text-align:right;width: 15em; "> 42 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Washtenaw </td>
   <td style="text-align:right;"> 161 </td>
   <td style="text-align:left;"> Michigan </td>
   <td style="text-align:right;width: 15em; "> 26 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Nueces </td>
   <td style="text-align:right;"> 355 </td>
   <td style="text-align:left;"> Texas </td>
   <td style="text-align:right;width: 15em; "> 48 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Manatee </td>
   <td style="text-align:right;"> 81 </td>
   <td style="text-align:left;"> Florida </td>
   <td style="text-align:right;width: 15em; "> 12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Hamilton </td>
   <td style="text-align:right;"> 65 </td>
   <td style="text-align:left;"> Tennessee </td>
   <td style="text-align:right;width: 15em; "> 47 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Madison </td>
   <td style="text-align:right;"> 89 </td>
   <td style="text-align:left;"> Alabama </td>
   <td style="text-align:right;width: 15em; "> 1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Collier </td>
   <td style="text-align:right;"> 21 </td>
   <td style="text-align:left;"> Florida </td>
   <td style="text-align:right;width: 15em; "> 12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Anoka </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:left;"> Minnesota </td>
   <td style="text-align:right;width: 15em; "> 27 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Marion </td>
   <td style="text-align:right;"> 83 </td>
   <td style="text-align:left;"> Florida </td>
   <td style="text-align:right;width: 15em; "> 12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Brazoria </td>
   <td style="text-align:right;"> 39 </td>
   <td style="text-align:left;"> Texas </td>
   <td style="text-align:right;width: 15em; "> 48 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Chesterfield </td>
   <td style="text-align:right;"> 41 </td>
   <td style="text-align:left;"> Virginia </td>
   <td style="text-align:right;width: 15em; "> 51 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Somerset </td>
   <td style="text-align:right;"> 35 </td>
   <td style="text-align:left;"> New Jersey </td>
   <td style="text-align:right;width: 15em; "> 34 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Bell </td>
   <td style="text-align:right;"> 27 </td>
   <td style="text-align:left;"> Texas </td>
   <td style="text-align:right;width: 15em; "> 48 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Davis </td>
   <td style="text-align:right;"> 11 </td>
   <td style="text-align:left;"> Utah </td>
   <td style="text-align:right;width: 15em; "> 49 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Marion </td>
   <td style="text-align:right;"> 47 </td>
   <td style="text-align:left;"> Oregon </td>
   <td style="text-align:right;width: 15em; "> 41 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Cumberland </td>
   <td style="text-align:right;"> 51 </td>
   <td style="text-align:left;"> North Carolina </td>
   <td style="text-align:right;width: 15em; "> 37 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Larimer </td>
   <td style="text-align:right;"> 69 </td>
   <td style="text-align:left;"> Colorado </td>
   <td style="text-align:right;width: 15em; "> 8 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Rockland </td>
   <td style="text-align:right;"> 87 </td>
   <td style="text-align:left;"> New York </td>
   <td style="text-align:right;width: 15em; "> 36 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Henrico </td>
   <td style="text-align:right;"> 87 </td>
   <td style="text-align:left;"> Virginia </td>
   <td style="text-align:right;width: 15em; "> 51 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Luzerne </td>
   <td style="text-align:right;"> 79 </td>
   <td style="text-align:left;"> Pennsylvania </td>
   <td style="text-align:right;width: 15em; "> 42 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Lake </td>
   <td style="text-align:right;"> 69 </td>
   <td style="text-align:left;"> Florida </td>
   <td style="text-align:right;width: 15em; "> 12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> St. Louis city </td>
   <td style="text-align:right;"> 510 </td>
   <td style="text-align:left;"> Missouri </td>
   <td style="text-align:right;width: 15em; "> 29 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Galveston </td>
   <td style="text-align:right;"> 167 </td>
   <td style="text-align:left;"> Texas </td>
   <td style="text-align:right;width: 15em; "> 48 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Douglas </td>
   <td style="text-align:right;"> 35 </td>
   <td style="text-align:left;"> Colorado </td>
   <td style="text-align:right;width: 15em; "> 8 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Boulder </td>
   <td style="text-align:right;"> 13 </td>
   <td style="text-align:left;"> Colorado </td>
   <td style="text-align:right;width: 15em; "> 8 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Osceola </td>
   <td style="text-align:right;"> 97 </td>
   <td style="text-align:left;"> Florida </td>
   <td style="text-align:right;width: 15em; "> 12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fayette </td>
   <td style="text-align:right;"> 67 </td>
   <td style="text-align:left;"> Kentucky </td>
   <td style="text-align:right;width: 15em; "> 21 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Escambia </td>
   <td style="text-align:right;"> 33 </td>
   <td style="text-align:left;"> Florida </td>
   <td style="text-align:right;width: 15em; "> 12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Howard </td>
   <td style="text-align:right;"> 27 </td>
   <td style="text-align:left;"> Maryland </td>
   <td style="text-align:right;width: 15em; "> 24 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Albany </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:left;"> New York </td>
   <td style="text-align:right;width: 15em; "> 36 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> McHenry </td>
   <td style="text-align:right;"> 111 </td>
   <td style="text-align:left;"> Illinois </td>
   <td style="text-align:right;width: 15em; "> 17 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Lorain </td>
   <td style="text-align:right;"> 93 </td>
   <td style="text-align:left;"> Ohio </td>
   <td style="text-align:right;width: 15em; "> 39 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Hamilton </td>
   <td style="text-align:right;"> 57 </td>
   <td style="text-align:left;"> Indiana </td>
   <td style="text-align:right;width: 15em; "> 18 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Lancaster </td>
   <td style="text-align:right;"> 109 </td>
   <td style="text-align:left;"> Nebraska </td>
   <td style="text-align:right;width: 15em; "> 31 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Northampton </td>
   <td style="text-align:right;"> 95 </td>
   <td style="text-align:left;"> Pennsylvania </td>
   <td style="text-align:right;width: 15em; "> 42 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Horry </td>
   <td style="text-align:right;"> 51 </td>
   <td style="text-align:left;"> South Carolina </td>
   <td style="text-align:right;width: 15em; "> 45 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Rockingham </td>
   <td style="text-align:right;"> 15 </td>
   <td style="text-align:left;"> New Hampshire </td>
   <td style="text-align:right;width: 15em; "> 33 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Anchorage Municipality </td>
   <td style="text-align:right;"> 20 </td>
   <td style="text-align:left;"> Alaska </td>
   <td style="text-align:right;width: 15em; "> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Dutchess </td>
   <td style="text-align:right;"> 27 </td>
   <td style="text-align:left;"> New York </td>
   <td style="text-align:right;width: 15em; "> 36 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Lubbock </td>
   <td style="text-align:right;"> 303 </td>
   <td style="text-align:left;"> Texas </td>
   <td style="text-align:right;width: 15em; "> 48 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Durham </td>
   <td style="text-align:right;"> 63 </td>
   <td style="text-align:left;"> North Carolina </td>
   <td style="text-align:right;width: 15em; "> 37 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Spartanburg </td>
   <td style="text-align:right;"> 83 </td>
   <td style="text-align:left;"> South Carolina </td>
   <td style="text-align:right;width: 15em; "> 45 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> St. Lucie </td>
   <td style="text-align:right;"> 111 </td>
   <td style="text-align:left;"> Florida </td>
   <td style="text-align:right;width: 15em; "> 12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Gloucester </td>
   <td style="text-align:right;"> 15 </td>
   <td style="text-align:left;"> New Jersey </td>
   <td style="text-align:right;width: 15em; "> 34 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Rutherford </td>
   <td style="text-align:right;"> 149 </td>
   <td style="text-align:left;"> Tennessee </td>
   <td style="text-align:right;width: 15em; "> 47 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Winnebago </td>
   <td style="text-align:right;"> 201 </td>
   <td style="text-align:left;"> Illinois </td>
   <td style="text-align:right;width: 15em; "> 17 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Cumberland </td>
   <td style="text-align:right;"> 5 </td>
   <td style="text-align:left;"> Maine </td>
   <td style="text-align:right;width: 15em; "> 23 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Greene </td>
   <td style="text-align:right;"> 77 </td>
   <td style="text-align:left;"> Missouri </td>
   <td style="text-align:right;width: 15em; "> 29 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Leon </td>
   <td style="text-align:right;"> 73 </td>
   <td style="text-align:left;"> Florida </td>
   <td style="text-align:right;width: 15em; "> 12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Ingham </td>
   <td style="text-align:right;"> 65 </td>
   <td style="text-align:left;"> Michigan </td>
   <td style="text-align:right;width: 15em; "> 26 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Chatham </td>
   <td style="text-align:right;"> 51 </td>
   <td style="text-align:left;"> Georgia </td>
   <td style="text-align:right;width: 15em; "> 13 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Erie </td>
   <td style="text-align:right;"> 49 </td>
   <td style="text-align:left;"> Pennsylvania </td>
   <td style="text-align:right;width: 15em; "> 42 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> San Luis Obispo </td>
   <td style="text-align:right;"> 79 </td>
   <td style="text-align:left;"> California </td>
   <td style="text-align:right;width: 15em; "> 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Weld </td>
   <td style="text-align:right;"> 123 </td>
   <td style="text-align:left;"> Colorado </td>
   <td style="text-align:right;width: 15em; "> 8 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Lexington </td>
   <td style="text-align:right;"> 63 </td>
   <td style="text-align:left;"> South Carolina </td>
   <td style="text-align:right;width: 15em; "> 45 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Ottawa </td>
   <td style="text-align:right;"> 139 </td>
   <td style="text-align:left;"> Michigan </td>
   <td style="text-align:right;width: 15em; "> 26 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Atlantic </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:left;"> New Jersey </td>
   <td style="text-align:right;width: 15em; "> 34 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> New London </td>
   <td style="text-align:right;"> 11 </td>
   <td style="text-align:left;"> Connecticut </td>
   <td style="text-align:right;width: 15em; "> 9 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Dauphin </td>
   <td style="text-align:right;"> 43 </td>
   <td style="text-align:left;"> Pennsylvania </td>
   <td style="text-align:right;width: 15em; "> 42 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Cleveland </td>
   <td style="text-align:right;"> 27 </td>
   <td style="text-align:left;"> Oklahoma </td>
   <td style="text-align:right;width: 15em; "> 40 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Santa Cruz </td>
   <td style="text-align:right;"> 87 </td>
   <td style="text-align:left;"> California </td>
   <td style="text-align:right;width: 15em; "> 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Clayton </td>
   <td style="text-align:right;"> 63 </td>
   <td style="text-align:left;"> Georgia </td>
   <td style="text-align:right;width: 15em; "> 13 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> St. Joseph </td>
   <td style="text-align:right;"> 141 </td>
   <td style="text-align:left;"> Indiana </td>
   <td style="text-align:right;width: 15em; "> 18 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Madison </td>
   <td style="text-align:right;"> 119 </td>
   <td style="text-align:left;"> Illinois </td>
   <td style="text-align:right;width: 15em; "> 17 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Thurston </td>
   <td style="text-align:right;"> 67 </td>
   <td style="text-align:left;"> Washington </td>
   <td style="text-align:right;width: 15em; "> 53 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Webb </td>
   <td style="text-align:right;"> 479 </td>
   <td style="text-align:left;"> Texas </td>
   <td style="text-align:right;width: 15em; "> 48 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> St. Clair </td>
   <td style="text-align:right;"> 163 </td>
   <td style="text-align:left;"> Illinois </td>
   <td style="text-align:right;width: 15em; "> 17 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Merced </td>
   <td style="text-align:right;"> 47 </td>
   <td style="text-align:left;"> California </td>
   <td style="text-align:right;width: 15em; "> 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Marin </td>
   <td style="text-align:right;"> 41 </td>
   <td style="text-align:left;"> California </td>
   <td style="text-align:right;width: 15em; "> 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Kalamazoo </td>
   <td style="text-align:right;"> 77 </td>
   <td style="text-align:left;"> Michigan </td>
   <td style="text-align:right;width: 15em; "> 26 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Kitsap </td>
   <td style="text-align:right;"> 35 </td>
   <td style="text-align:left;"> Washington </td>
   <td style="text-align:right;width: 15em; "> 53 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Brown </td>
   <td style="text-align:right;"> 9 </td>
   <td style="text-align:left;"> Wisconsin </td>
   <td style="text-align:right;width: 15em; "> 55 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Alachua </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:left;"> Florida </td>
   <td style="text-align:right;width: 15em; "> 12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Caddo Parish </td>
   <td style="text-align:right;"> 17 </td>
   <td style="text-align:left;"> Louisiana </td>
   <td style="text-align:right;width: 15em; "> 22 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Jefferson </td>
   <td style="text-align:right;"> 245 </td>
   <td style="text-align:left;"> Texas </td>
   <td style="text-align:right;width: 15em; "> 48 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Buncombe </td>
   <td style="text-align:right;"> 21 </td>
   <td style="text-align:left;"> North Carolina </td>
   <td style="text-align:right;width: 15em; "> 37 </td>
  </tr>
</tbody>
</table>



***

Website created and maintained by [Noli Brazil](https://nbrazil.faculty.ucdavis.edu/)
