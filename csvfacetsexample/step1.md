## Importing from CSV

One great thing about Manticore is that it can grab data from several sources in an easy way.

One of the data sources can be a CSV or TSV file. There are mainly 2 things we need to do in order to import a CSV:

1. A small preparation of the CSV file.

Manticore requires the first column to represent the document id, which needs to be an unique integer number. 
If our CSV doesn't have this, we can add it easy with an awk command:

`awk -v OFS=, 'NR ==1 {print "ID", $0; next} {print (NR-1), $0}' movie_metadata.csv > movie.csv`{{execute}}

Manticore also requires to have no header in the CSV. In our sample CSV we have header, so we're going to remove it:

`sed -i \`1d\` movie.csv`{{execute}}

2. Create source and index

In the source we define the source type, in this case `csvpipe`.
The  data is read from the output of the `csvpipe_command`. 
In our case we simply read a static file, but it can be very well  dynamic code (for example a script written in PHP or Java).
Next we declare the each time of the CSV columns. Note that the first column - the unique id - is not declared as it's implicit.

```
source movies
{
	type = csvpipe
	csvpipe_command = cat movie.csv
	csvpipe_attr_string = color
	csvpipe_field_string = director_name
	csvpipe_attr_uint = num_critic_for_reviews
	csvpipe_attr_uint = duration
	csvpipe_attr_uint = director_facebook_likes
	csvpipe_attr_uint = actor_3_facebook_likes
	csvpipe_field_string = actor_2_name
	csvpipe_attr_uint = actor_1_facebook_likes
	csvpipe_attr_uint = gross
	csvpipe_field = genres
	csvpipe_field_string = actor_1_name
	csvpipe_field_string = movie_title
	csvpipe_attr_uint = num_voted_users
	csvpipe_attr_uint = cast_total_facebook_likes
	csvpipe_field_string = actor_3_name
	csvpipe_attr_uint = facenumber_in_poster
	csvpipe_field = plot_keywords
	csvpipe_attr_string = movie_imdb_link
	csvpipe_attr_uint = num_user_for_reviews
	csvpipe_attr_string = language
	csvpipe_attr_string = country
	csvpipe_attr_string = content_rating
	csvpipe_attr_uint = budget
	csvpipe_attr_uint = title_year
	csvpipe_attr_uint = actor_2_facebook_likes
	csvpipe_attr_float = imdb_score
	csvpipe_attr_float = aspect_ration
	csvpipe_attr_uint = movie_facebook_likes	
}

The index declaration is simple. We specify the location of the index and tell the index to use the above source.
```
index movies
{
    type            = plain
    path            = /var/lib/manticore/data/movies
	source 			= movies
}
```