#' Get Artists Set Lists
#'
#' @param API_KEY Your Setlist FM API Key
#' @param mbid The Artists Musicbrainz MBID
#' @param page The page of the site you wish to gather data from
#' @param Addtional_Headers Any addtional headers accepted by the api. Such as Language
#' @param ResponseType Whether you want JSON or XML responses (currently it is just a preprocessed list)
#' @export
#' @return a list object of the artists set lists for a given page
#'
#' @examples
#' getArtistSetLists(API_KEY = "KEY",mbid = 'aca5718f-4f49-4439-b8f6-209db3f11757')
#' SetListR::getArtistSetLists(API_KEY = "KEY",mbid = '0bfba3d3-6a04-4779-bb0a-df07df5b0558',page = 12, ResponseType = 'json')
getArtistSetLists <- function(API_KEY,mbid,page = 1, Addtional_Headers = NULL, ResponseType= NULL){

  request_Query <- list(p = page,
                        artistMbid = mbid
  )
  if (is.null(ResponseType)) {

    res <- BuildRequest(APIKEY = API_KEY, Endpoint = "artist/setlists",Query_String = request_Query)
  }
  else
  {
    res <- BuildRequest(APIKEY = API_KEY, Endpoint = "artist/setlists",Query_String = request_Query,Content_Type = ResponseType)

  }
  res
}

#' Get Artist Information
#'
#' @param API_KEY Your Setlist FM API Key
#' @param mbid The Artists Musicbrainz MBID
#' @param Addtional_Headers Any addtional headers accepted by the api. Such as Language
#' @param ResponseType Whether you want JSON or XML responses (currently it is just a preprocessed list)
#'
#' @return a list object with artists mbid, unique Ticket Master Identifier (TMID), name, sortname, disambiguation, the attribution url
#' @export
#'
#' @examples
#' getArtist(API_KEY = "KEY",mbid = 'aca5718f-4f49-4439-b8f6-209db3f11757')
#' SetListR::getArtist(API_KEY = "KEY",mbid = '0bfba3d3-6a04-4779-bb0a-df07df5b0558')
getArtist <- function(API_KEY, mbid, Addtional_Headers = NULL, ResponseType= NULL) {
  request_Query <- list(p = page,
                        artistMbid = mbid
  )

  request_Query
  if (is.null(ResponseType)) {

    res <- BuildRequest(APIKEY = API_KEY, Endpoint = "artist",Query_String = request_Query)
  }
  else
  {
    res <- BuildRequest(APIKEY = API_KEY, Endpoint = "artist",Query_String = request_Query,Content_Type = ResponseType)

  }
  res
}


