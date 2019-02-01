## Performing queries

Let's start first with a regular text search. In this case we will search for stadiums

`SELECT * FROM geodemo WHERE MATCH('Stadium');`{{execute}}

Now let's add a location and see the closest stadiums next to it:

`SELECT name,GEODIST(latitude_deg,longitude_deg,51.5073907,-0.1276999,{in=deg,out=km}) as distance FROM geodemo  WHERE MATCH('Stadium') ORDER BY distance ASC;`{{execute}}

In this case the distance is expressed in kilometers. If we want to use imperial system, we can switch to miles:

`SELECT name,GEODIST(latitude_deg,longitude_deg,51.5073907,-0.1276999,{in=deg,out=miles}) as distance FROM geodemo  WHERE MATCH('Stadium') ORDER BY distance ASC;`{{execute}}

