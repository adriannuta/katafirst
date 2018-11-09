## Operation with SphinxQL

The image comes with a Real Time index.

`show tables`{{execute}}

Lets see the schema of the index

`DESCRIBE testrt`{{execute}}

And add few records:

`INSERT INTO testrt VALUES(1,'List of HP business laptops','Elitebook Probook',10)`{{execute}}
`INSERT INTO testrt VALUES(2,'List of Dell business laptops','Latitude Precision Vostro',10)`{{execute}}
`INSERT INTO testrt VALUES(3,'List of Dell gaming laptops','Inspirion Alienware',20)`{{execute}}
`INSERT INTO testrt VALUES(4,'Lenovo laptops list','Yoga IdeaPad',30)`{{execute}}
`INSERT INTO testrt VALUES(5,'List of ASUS ultrabooks and laptops','Zenbook Vivobook',30)`{{execute}}



