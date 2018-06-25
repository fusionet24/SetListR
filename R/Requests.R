#' BuildRequests
#'
#' @param APIKEY
#' @param Endpoint
#' @param Query_String a key value pair list for parsing by HTTR
#' @param AddtionalHeaders
#' @param Content_Type
#'
#' @return
#'
#' @examples
  BuildRequest <- function(APIKEY, Endpoint = "artist", Query_String, AddtionalHeaders=NULL, Content_Type = "application/json") {
    if(missing(APIKEY)){
      stop("API KEY is missing")

    }
  ### todo handle json and xml and throw an error if not in those two content_types
    request_url<- paste("https://api.setlist.fm/rest/1.0",Endpoint,sep = "/")
    request <- httr::GET(url = request_url, add_headers(`x-api-key` = APIKEY), query = Query_String,"Content-Type" = Content_Type )
    if(status_code(request) != 200)
    {
      stop("And Error has occured")
    }
    if (http_type(request) != "application/json") { ## Unit Test This!
      stop(paste0("API did not return expected type: ", http_type(resp)), call. = FALSE)
    }
    content(request)


  }
