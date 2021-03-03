library('rvest')

getArticles <- function(q){
  # build url
  url <- paste0('https://scholar.google.com/scholar?hl=en&q=', q)
  # sanitize url
  url <- URLencode(url) # clean the URL code fo
  # get results
  res <- read_html(url) %>% # get url
    html_nodes('div.gs_ri h3 a') %>% # select titles by css selector
    html_text() # extract text
  # return results
  return(res)
}

# retrieve articles about web scraping in r
getArticles('web scraping in r')
