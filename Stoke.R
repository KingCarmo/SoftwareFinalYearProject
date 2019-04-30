library(rvest)
library(stringr)
library("tm", lib.loc="~/R/win-library/3.5")


Stoketransfermarkt_wbpg <- read_html("StokeTM.html")

#players names
PlayerName <- Stoketransfermarkt_wbpg %>%
  html_nodes(".responsive-table") %>%
  html_nodes(".posrela") %>%
  html_nodes(".hide-for-small") %>%
  html_nodes(".spielprofil_tooltip") %>%
  html_text()

#Players Current Value
PlayerCurrentValue <- Stoketransfermarkt_wbpg %>%
  html_nodes(".responsive-table") %>%
  html_nodes("td.hauptlink:nth-child(10)") %>%
  html_text()

#Previous Current Value
StokePreviousValueTM <- Stoketransfermarkt_wbpg %>%
  html_nodes(".responsive-table") %>%
  html_nodes("td.rechts") %>%
  html_nodes(".icons_sprite")

StokePreviousValueTM2 <- html_attr(StokePreviousValueTM, "title")
PreviousValue <- gsub("[^0-9.]","",StokePreviousValueTM2)
StokePreviousValueDF <- as.data.frame(StokePreviousValueTM2)
StokePreviousValueDF$NumericValue <- as.numeric(PreviousValue)

#Check for NA
is.na(SwanseaPreviousValueDF$NumericValue)
SwanseaPreviousValueDF$NumericValue[is.na(SwanseaPreviousValueDF$NumericValue)] <- 0

for (i in 1:nrow(StokePreviousValueDF)) {
  
  if(StokePreviousValueDF[i , "NumericValue"] < 30)
    StokePreviousValueDF$Augmented[i] <- paste('£',formatC(PreviousValue[i], big.mark=',', format = 'f'), "m")
  
  else
    StokePreviousValueDF$Augmented[i] <- paste('£',formatC(PreviousValue[i], big.mark=',', format = 'f'), "k")
  
  
  
}

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
Stoke <- data.frame(PlayerName, StokeAgeTM, StokeclubCountryTM, StokePreviousValueDF$Augmented, PlayerCurrentValue)

head(Stoke)

colnames(Stoke)[1] <- "Player Name"
colnames(Stoke)[2] <- "Player Age"
colnames(Stoke)[3] <- "Nationality"
colnames(Stoke)[4] <- "2018 Value"
colnames(Stoke)[5] <- "2019 Value"


Stoke
