##Filtering by distnace
The distance can also be used to filter out the results. 

In the previous example we sorted only by the distance. 
But if we are doing full-text searches we would want the text scoring to have priority and limit the results to a close area from our location.

Let's take this example:

`SELECT name,GEODIST(latitude_deg,longitude_deg,51.5073907,-0.1276999,{in=deg,out=miles}) as distance,WEIGHT() FROM geodemo  WHERE MATCH('hotel MAYBE club') ORDER BY WEIGHT() DESC;`{{execute}}

If we sort by score, in the top results we will get places that are far away from us. Doing the other way around, will give us closests locations, but not all will have a top text score:

`SELECT name,GEODIST(latitude_deg,longitude_deg,51.5073907,-0.1276999,{in=deg,out=miles}) as distance,WEIGHT() FROM geodemo  WHERE MATCH('hotel MAYBE club') ORDER BY DISTANCE ASC;`{{execute}}

The solution is to limit our search results, let's say 10 miles and sort first by text score and secondly by distance:

`SELECT name,GEODIST(latitude_deg,longitude_deg,51.5073907,-0.1276999,{in=deg,out=miles}) as distance,WEIGHT() FROM geodemo  WHERE MATCH('hotel MAYBE club') AND distance<10 ORDER BY WEIGHT() DESC, DISTANCE ASC;`{{execute}}
