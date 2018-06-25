#' Search Artists
#'
#' @param API_KEY Your Setlist FM API Key
#' @param mbid The Artists Musicbrainz MBID
#' @param artistName The Artists Name
#' @param page e page of the site you wish to gather data from
#' @param sort How to sort the pages
#' @param Addtional_Headers Any addtional headers accepted by the api. Such as Language
#' @param ResponseType Whether you want JSON or XML responses (currently it is just a preprocessed list)
#'
#' @return a list of artists matching your criteria
#' @export
#'
#' @examples
#' searchArtists(API_KEY = 'KEY', artistName = 'Frank Turner')
#' searchArtists(API_KEY = 'KEY', mbid = '0bfba3d3-6a04-4779-bb0a-df07df5b0558')
searchArtists <- function(API_KEY, mbid= NULL,artistName = NULL,page = 1,sort = 'sortName', Addtional_Headers = NULL, ResponseType= NULL){
    request_Query <- list(p = page,
                          artistName = artistName,
                          artistMbid = mbid)
  if (is.null(ResponseType)) {

    res <- BuildRequest(APIKEY = API_KEY, Endpoint = "search/artists",Query_String =  request_Query)
  }
  else
  {
    res <- BuildRequest(APIKEY = API_KEY, Endpoint = "search/artists",Query_String =  request_Query,Content_Type = ResponseType)

  }
  res

}


#' Search Set Lists
#'
#' @param API_KEY Your Setlist FM API Key
#' @param mbid The Artists Musicbrainz MBID
#' @param artistName The Artists Name
#' @param cityName The CityName
#' @param cityId The City GeoID (https://www.census.gov/geo/reference/geoidentifiers.html)
#' @param countryCode country code
#' @param page the page you want returning of the searchg results
#' @param sort How to sort the pages
#' @param Addtional_Headers Any addtional headers accepted by the api. Such as Language
#' @param ResponseType Whether you want JSON or XML responses (currently it is just a preprocessed list)
#'
#' @return a list of setlists matching your criteria
#' @export
#'
#' @examples
#'searchSetLists(API_KEY = 'KEY', artistName = 'Frank Turner')
#'searchSetLists(API_KEY = 'KEY', mbid = '0bfba3d3-6a04-4779-bb0a-df07df5b0558')
#'searchSetLists(API_KEY = 'KEY', mbid = '0bfba3d3-6a04-4779-bb0a-df07df5b0558', countryCode = 'USA') #' searchSetLists(API_KEY = 'KEY', mbid = '0bfba3d3-6a04-4779-bb0a-df07df5b0558', cityName ='Lincoln')
searchSetLists <- function(API_KEY, mbid= NULL,artistName = NULL,cityName = NULL, cityId = NULL,countryCode = NULL,page = 1,sort = 'sortName', Addtional_Headers = NULL, ResponseType= NULL)
{


  request_Query <- list(p = page,
                        artistName = artistName,
                        artistMbid = mbid,
                        cityName= cityName,
                        cityId = cityId,
                        countryCode= countryCode

                        )

  if (is.null(ResponseType)) {

    res <- BuildRequest(APIKEY = API_KEY, Endpoint = "search/setlists",Query_String = request_Query)
  }
  else
  {
    res <- BuildRequest(APIKEY = API_KEY, Endpoint = "search/setlists",Query_String = request_Query,Content_Type = ResponseType)

  }
  res


}
#' Search Citiies
#'
#' @param API_KEY Your Setlist FM API Key
#' @param cityName The CityName
#' @param cityId The City GeoID (https://www.census.gov/geo/reference/geoidentifiers.html)
#' @param countryName country name
#' @param state state the city lies in
#' @param stateCode state code the city lies in
#' @param page the page you want returning of the searchg results
#' @param sort How to sort the pages
#' @param Addtional_Headers Any addtional headers accepted by the api. Such as Language
#' @param ResponseType Whether you want JSON or XML responses (currently it is just a preprocessed list)
#'
#' @return a list of setlists matching your criteria
#' @export
#'
#' @examples
#'searchCities(API_KEY = "KEY",cityName = "Lincoln", countryName = "UK")
searchCities <- function(API_KEY,cityName = NULL, cityId = NULL,countryName = NULL,state = NULL,stateCode = NULL,page = 1, Addtional_Headers = NULL, ResponseType= NULL)
{

  request_Query <- list(p = page,
                        cityName= cityName,
                        cityId = cityId,
                        countryCode= countryCode,
                        state = state,
                        stateCode = stateCode,
                        countryName = countryName
  )


  if (is.null(ResponseType)) {

    res <- BuildRequest(APIKEY = API_KEY, Endpoint = "search/cities",Query_String =  request_Query)
  }
  else
  {
    res <- BuildRequest(APIKEY = API_KEY, Endpoint = "search",Query_String =request_Query,Content_Type = ResponseType)

  }
  res


}

searchVenues <- function(API_KEY,cityName = NULL, cityId = NULL,countryName = NULL,state = NULL,stateCode = NULL,page = 1, Addtional_Headers = NULL, ResponseType= NULL)
{
  Request_String <- paste0("cities?","&p=",page)

}
