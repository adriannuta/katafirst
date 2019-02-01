step4
The distance can also be used to filter out the results. Let's consider that we have a 
`SELECT name,WEIGHT() as ranking,GEODIST(latitude_deg,longitude_deg,51.5073907,-0.1276999,{in=deg,out=miles}) as distance FROM geodemo  WHERE MATCH('Royal Hotel|Club') ORDER BY WEIGHT() DESC,distance ASC;`{execute}



SELECT name,GEODIST(latitude_deg,longitude_deg,51.5073907,-0.1276999,{in=deg,out=km}) as distance FROM geodemo  ORDER BY distance ASC;


select *, weight() from geodemo where match('Royal MAYBE park hotel');

SELECT name,GEODIST(latitude_deg,longitude_deg,51.5073907,-0.1276999,{in=deg,out=miles}) as distance,WEIGHT() FROM geodemo  WHERE MATCH('hotel MAYBE club') and DISTANCE < 10 ORDER BY WEIGHT() DESC, distance ASC;