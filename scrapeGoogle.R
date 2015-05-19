library(httr)
search.term="httr+package+daterange:%3A2456294-2456659"
url.name=paste0("https://www.google.com/search?q=",search.term)
url.get=GET(url.name)
url.content=content(url.get, as="text")
links <- xpathSApply(htmlParse(url.content), "//a/@href")
head(links,3)


# url.get=GET(url.name)
# links <- xpathSApply(htmlParse(url.get), "//a/@href")