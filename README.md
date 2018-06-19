# SetListR

Overview
--------

A wrapper for the SetList FM API. To enable easier and quicker analysis of music and artists in R.

  [![Travis build status](https://travis-ci.org/fusionet24/SetListR.svg?branch=master)](https://travis-ci.org/fusionet24/SetListR)

Installation
------------

``` r
# install.packages("devtools")
devtools::install_github("fusionet24/SetListR")
```

You will also need an API key which can be [generated](https://www.setlist.fm/settings/api) once you have a [setlist fm account](https://www.setlist.fm/signup). 

Usage
-----

There are currently 3 functions that provide access to different endpoints from the Setlist FM API:
- getArtist()
- getArtistSetLists()
- searchArtists()
- searchSetLists()
- searchCities()

The can be used in a variety of ways and documentation is included within the package. A quick example is:
``` r
library(SetListR)
getArtistSetLists(API_KEY = "KEY",mbid = 'aca5718f-4f49-4439-b8f6-209db3f11757') # Replace KEY with your API KEY!
# This queries for setlist from Frank Turner whose Music Brainz ID is the above Unique Indentifer
```

The MBID is a unique id assigned to every artist by [Music Brains](https://musicbrainz.org/). You can use the search Artist function to find them:
``` r
library(SetListR)
searchArtists(API_KEY = 'KEY', artistName = 'Frank Turner') # Replace KEY with your API KEY!
```
You can search specfic setlists by Artist,location etc.
``` r
library(SetListR)
searchSetLists(API_KEY = 'KEY', mbid = '0bfba3d3-6a04-4779-bb0a-df07df5b0558', countryCode = 'USA')
searchSetLists(API_KEY = 'KEY', mbid = '0bfba3d3-6a04-4779-bb0a-df07df5b0558', cityName ='Lincoln') # Replace KEY with your API KEY!
```

You can search specfic cities.
``` r
library(SetListR)
searchCities(API_KEY = "KEY",cityName = "Lincoln", countryName = "UK") # Replace KEY with your API KEY!
```
