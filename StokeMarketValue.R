install.packages("rvest")
install.packages("tm")
library(rvest)
library(stringr)
library("tm", lib.loc="~/R/win-library/3.5")


Stoketransfermarkt_wbpg <- read_html("StokeTM.html")

#players names
StokePlayerNamesTM <- Stoketransfermarkt_wbpg %>%
  html_nodes(".responsive-table") %>%
  html_nodes(".posrela") %>%
  html_nodes(".hide-for-small") %>%
  html_nodes(".spielprofil_tooltip") %>%
  html_text()

#Players Current Value
StokeCurrentValueTM <- Stoketransfermarkt_wbpg %>%
  html_nodes(".responsive-table") %>%
  html_nodes("td.hauptlink:nth-child(10)") %>%
  html_text()

#Previous Current Value
StokePreviousValueTM <- Stoketransfermarkt_wbpg %>%
  html_nodes(".responsive-table") %>%
  html_nodes("td.rechts") %>%
  html_nodes(".icons_sprite")

StokePreviousValueTM2 <- html_attr(StokePreviousValueTM, "title")

#Age
StokeAgeTM <- Stoketransfermarkt_wbpg %>%
  html_nodes(".responsive-table") %>%
  html_nodes("td.zentriert:nth-child(3)") %>%
  html_text()

#Nationality
PlayerCountry <- Stoketransfermarkt_wbpg %>%
  html_nodes(".ausfall-1-table , #yw1 .flaggenrahmen:nth-child(1)")

StokeclubCountryTM <- html_attr(PlayerCountry, "alt")
is.na(StokeclubCountryTM)
StokeclubCountryTM <- na.omit(StokeclubCountryTM)
rownames(StokeclubCountryTM)<-NULL

#Creating StokeTM Database
StokeTM <- data.frame(StokePlayerNamesTM, StokeAgeTM, StokeCurrentValueTM, StokePreviousValueTM2, StokeclubCountryTM)



