library(rvest)
library(stringr)
library("tm", lib.loc="~/R/win-library/3.5")


Swanseatransfermarkt_wbpg <- read_html("SwanseaTM.html")

#players names
PlayerName <- Swanseatransfermarkt_wbpg %>%
  html_nodes(".responsive-table") %>%
  html_nodes(".posrela") %>%
  html_nodes(".hide-for-small") %>%
  html_nodes(".spielprofil_tooltip") %>%
  html_text()

#Players Current Value
PlayerCurrentValue <- Swanseatransfermarkt_wbpg %>%
  html_nodes(".responsive-table") %>%
  html_nodes("td.hauptlink:nth-child(10)") %>%
  html_text()

#Previous Current Value
SwanseaPreviousValueTM <- Swanseatransfermarkt_wbpg %>%
  html_nodes(".responsive-table") %>%
  html_nodes("td.rechts") %>%
  html_nodes(".icons_sprite")

SwanseaPreviousValueTM2 <- html_attr(SwanseaPreviousValueTM, "title")
PreviousValue <- gsub("[^0-9.]","",SwanseaPreviousValueTM2)
SwanseaPreviousValueDF <- as.data.frame(SwanseaPreviousValueTM2)
SwanseaPreviousValueDF$NumericValue <- as.numeric(PreviousValue)

#Check for NA
is.na(SwanseaPreviousValueDF$NumericValue)
SwanseaPreviousValueDF$NumericValue[is.na(SwanseaPreviousValueDF$NumericValue)] <- 0

for (i in 1:nrow(SwanseaPreviousValueDF)) {
  
  if(SwanseaPreviousValueDF[i , "NumericValue"] < 30)
    SwanseaPreviousValueDF$Augmented[i] <- paste('£',formatC(PreviousValue[i], big.mark=',', format = 'f'), "m")
  
  else
    SwanseaPreviousValueDF$Augmented[i] <- paste('£',formatC(PreviousValue[i], big.mark=',', format = 'f'), "k")
  
  
  
}

#Age
SwanseaAgeTM <- Swanseatransfermarkt_wbpg %>%
  html_nodes(".responsive-table") %>%
  html_nodes("td.zentriert:nth-child(3)") %>%
  html_text()

#Nationality
PlayerCountry <- Swanseatransfermarkt_wbpg %>%
  html_nodes(".ausfall-1-table , #yw1 .flaggenrahmen:nth-child(1)")

SwanseaclubCountryTM <- html_attr(PlayerCountry, "alt")
is.na(SwanseaclubCountryTM)
SwanseaclubCountryTM <- na.omit(SwanseaclubCountryTM)
rownames(SwanseaclubCountryTM)<-NULL

#Creating SwanseaTM Database
Swansea <- data.frame(PlayerName, SwanseaAgeTM, SwanseaclubCountryTM, SwanseaPreviousValueDF$Augmented, PlayerCurrentValue)

#See headers 
head(Swansea)

#Renaming Data Variables
colnames(Swansea)[1] <- "Player Name"
colnames(Swansea)[2] <- "Player Age"
colnames(Swansea)[3] <- "Nationality"
colnames(Swansea)[4] <- "2018 Value"
colnames(Swansea)[5] <- "2019 Value"
Swansea
