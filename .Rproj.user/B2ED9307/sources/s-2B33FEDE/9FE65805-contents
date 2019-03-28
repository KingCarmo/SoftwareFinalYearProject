install.packages("rvest")
install.packages("tm")
library(rvest)
library(stringr)
library("tm", lib.loc="~/R/win-library/3.5")


Norwichtransfermarkt_wbpg <- read_html("NorwichTM.html")

#players names
NorwichPlayerNamesTM <- Norwichtransfermarkt_wbpg %>%
  html_nodes(".responsive-table") %>%
  html_nodes(".posrela") %>%
  html_nodes(".hide-for-small") %>%
  html_nodes(".spielprofil_tooltip") %>%
  html_text()

#Players Current Value
NorwichCurrentValueTM <- Norwichtransfermarkt_wbpg %>%
  html_nodes(".responsive-table") %>%
  html_nodes("td.hauptlink:nth-child(10)") %>%
  html_text()

#Previous Current Value
NorwichPreviousValueTM <- Norwichtransfermarkt_wbpg %>%
  html_nodes(".responsive-table") %>%
  html_nodes("td.rechts") %>%
  html_nodes(".icons_sprite")

NorwichPreviousValueTM2 <- html_attr(NorwichPreviousValueTM, "title")

#Age
NorwichAgeTM <- Norwichtransfermarkt_wbpg %>%
  html_nodes(".responsive-table") %>%
  html_nodes("td.zentriert:nth-child(3)") %>%
  html_text()

#Nationality
PlayerCountry <- Norwichtransfermarkt_wbpg %>%
  html_nodes(".ausfall-1-table , #yw1 .flaggenrahmen:nth-child(1)")

NorwichclubCountryTM <- html_attr(PlayerCountry, "alt")
is.na(NorwichclubCountryTM)
NorwichclubCountryTM <- na.omit(NorwichclubCountryTM)
rownames(NorwichclubCountryTM)<-NULL

#Creating NorwichTM Database
NorwichTM <- data.frame(NorwichPlayerNamesTM, NorwichAgeTM, NorwichCurrentValueTM, NorwichPreviousValueTM2, NorwichclubCountryTM)



