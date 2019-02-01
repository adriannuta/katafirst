## GEODIST

Manticore provides function GEODIST which can be used to calculate distance between 2 geocoordinates

```GEODIST(lat1, lon1, lat2, lon2, { option=value, ... })
```

The first 4 parameters are the geocoordinate pairs. 
The last parameter uses a simple format similar to JSON to define several options for the GEODIST function:

* in  -  defines the input unit of measure. Coordinates can be in degrees (degrees or deg) or radians (radians or rad). Both geocoordinate pairs must use same unit of measure
* out - defines the output unit of measure. The distance can be expressed in meters (meters or m), kilometers (kilometers or km), feets (feet or ft) or miles (miles or mi)
* method - defines the algorithm used. 2 values can be used here: adaptive and haversine. haversine was the first algorithm used. Adaptive is the default algorithm used and it's more faster and precise than haversine.
We recommend leaving the default method.


GEODIST will provide a measured distance and it's result can be used to sort the query result.
A typical query will look like:

```SELECT *,GEODIST(latitude_deg,longitude_deb, 34.606,-2.799,{in=deg,out=km}) as distance FROM geodemo  ORDER BY distance ASC```
