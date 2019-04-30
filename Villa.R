library(rvest)
library(stringr)
library("tm", lib.loc="~/R/win-library/3.5")


Villatransfermarkt_wbpg <- read_html("VillaTM.html")

#players names
PlayerName <- Villatransfermarkt_wbpg %>%
  html_nodes(".responsive-table") %>%
  html_nodes(".posrela") %>%
  html_nodes(".hide-for-small") %>%
  html_nodes(".spielprofil_tooltip") %>%
  html_text()

#Players Current Value
PlayerCurrentValue <- Villatransfermarkt_wbpg %>%
  html_nodes(".responsive-table") %>%
  html_nodes("td.hauptlink:nth-child(10)") %>%
  html_text()

#Previous Current Value
VillaPreviousValueTM <- Villatransfermarkt_wbpg %>%
  html_nodes(".responsive-table") %>%
  html_nodes("td.rechts") %>%
  html_nodes(".icons_sprite")

VillaPreviousValueTM2 <- html_attr(VillaPreviousValueTM, "title")
PreviousValue <- gsub("[^0-9.]","",VillaPreviousValueTM2)
VillaPreviousValueDF <- as.data.frame(VillaPreviousValueTM2)
VillaPreviousValueDF$NumericValue <- as.numeric(PreviousValue)

#Check for NA
is.na(SwanseaPreviousValueDF$NumericValue)
SwanseaPreviousValueDF$NumericValue[is.na(SwanseaPreviousValueDF$NumericValue)] <- 0

for (i in 1:nrow(VillaPreviousValueDF)) {
  
  if(VillaPreviousValueDF[i , "NumericValue"] < 30)
    VillaPreviousValueDF$Augmented[i] <- paste('£',formatC(PreviousValue[i], big.mark=',', format = 'f'), "m")
  
  else
    VillaPreviousValueDF$Augmented[i] <- paste('£',formatC(PreviousValue[i], big.mark=',', format = 'f'), "k")
  
  
  
}

#Age
VillaAgeTM <- Villatransfermarkt_wbpg %>%
  html_nodes(".responsive-table") %>%
  html_nodes("td.zentriert:nth-child(3)") %>%
  html_text()

#Nationality
PlayerCountry <- Villatransfermarkt_wbpg %>%
  html_nodes(".ausfall-1-table , #yw1 .flaggenrahmen:nth-child(1)")

VillaclubCountryTM <- html_attr(PlayerCountry, "alt")
is.na(VillaclubCountryTM)
VillaclubCountryTM <- na.omit(VillaclubCountryTM)
rownames(VillaclubCountryTM)<-NULL

#Creating VillaTM Database
Villa <- data.frame(PlayerName, VillaAgeTM, VillaclubCountryTM, VillaPreviousValueDF$Augmented, PlayerCurrentValue)

head(Villa)

colnames(Villa)[1] <- "Player Name"
colnames(Villa)[2] <- "Player Age"
colnames(Villa)[3] <- "Nationality"
colnames(Villa)[4] <- "2018 Value"
colnames(Villa)[5] <- "2019 Value"


Villa
