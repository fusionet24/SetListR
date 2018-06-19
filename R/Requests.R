BuildRequest <- function(APIKEY, Endpoint = "artist", Query_String, AddtionalHeaders=NULL, Content_Type = "application/json") {
  if(missing(APIKEY)){
    stop("API KEY is missing")

  }
### todo handle json and xml and throw an error if not in those two content_types
  request_url<- paste("https://api.setlist.fm/rest/1.0",Endpoint,Query_String,sep = "/")
  request <- httr::GET(url = request_url, add_headers(`x-api-key` = APIKEY, "Content-Type" = Content_Type ))
  if(status_code(request) != 200)
  {
    stop("And Error has occured")
  }
  content(request)
}
