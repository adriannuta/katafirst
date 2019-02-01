## Setup

Wait until the docker image is launched. For simplicity you will be logged directly in the docker environment.

## Connecting to Manticore

Let's connect to Manticore using the MySQL client:

`mysql -P9306 -h0`{{execute}}

## The geodemo index

First, let's look at the index structure

`DESC geodemo;`{{execute}}

The index contains the geo coordinates in both radians and degrees, as well as several properties like the name of the location, country and state code.


`SELECT * FROM geodemo;`{{execute}}