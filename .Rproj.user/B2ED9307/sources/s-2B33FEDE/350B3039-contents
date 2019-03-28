install.packages("rvest")
library(rvest)
library(stringr)


Stoketransfermarkt_wbpg <- read_html("StokeTM.html")

#players names
PlayerNamesTM <- Stoketransfermarkt_wbpg %>%
  html_nodes(".responsive-table") %>%
  html_nodes(".posrela") %>%
  html_nodes(".hide-for-small") %>%
  html_nodes(".spielprofil_tooltip") %>%
  html_text()

#Players Current Value
CurrentValueTM <- Stoketransfermarkt_wbpg %>%
  html_nodes(".responsive-table") %>%
  html_nodes("td.hauptlink:nth-child(10)") %>%
  html_text()

#Age
AgeTM <- Stoketransfermarkt_wbpg %>%
  html_nodes(".responsive-table") %>%
  html_nodes("td.zentriert:nth-child(3)") %>%
  html_text()

#Nationality
PlayerCountry <- Stoketransfermarkt_wbpg %>%
  html_nodes(".ausfall-1-table , #yw1 .flaggenrahmen:nth-child(1)")

clubCountryTM <- html_attr(PlayerCountry, "alt")
clubCountryTM <- na.omit(clubCountryTM)
rownames(clubCountryTM)<-NULL
  
#Creating StokeTM Database
StokeTM <- data.frame(PlayerNamesTM, AgeTM, CurrentValueTM, clubCountryTM)
