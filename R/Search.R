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
  Request_String <- paste0("artists?","&p=",page)
  if(!is.null(artistName)) Request_String <- paste0(Request_String, "&artistName=", URLencode(artistName))
  if(!is.null(mbid)) Request_String <- paste0(Request_String, "&artistMbid=",mbid)
  if (is.null(ResponseType)) {

    res <- BuildRequest(APIKEY = API_KEY, Endpoint = "search",Query_String = Request_String)
  }
  else
  {
    res <- BuildRequest(APIKEY = API_KEY, Endpoint = "search",Query_String = Request_String,Content_Type = ResponseType)

  }
  res

}