#install.packages("rvest")
library(rvest)
library(stringr)

############################ Stoke ##################################


fctables_wbpg <- read_html("Stoke.html")


### all players names ###
PlayerNames <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(".header-title") %>%
  html_text()


### Adam Federici ###
StokeGoal1 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[1]/div/div/div[2]/div/div[1]') %>%
  html_text()

StokeAssist1 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[1]/div/div/div[2]/div/div[2]') %>%
  html_text()

StokeYC1 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[1]/div/div/div[2]/div/div[4]') %>%
  html_text()

StokeRC1 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[1]/div/div/div[2]/div/div[5]') %>%
  html_text()

StokeMP1 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[1]/div/div/div[2]/div/div[6]') %>%
  html_text()


StokeGoal1 <- StokeGoal1[ StokeGoal1 == "foo" ] <- 0
StokeAssist1 <- StokeAssist1[ StokeAssist1 == "foo" ] <- 0
StokeYC1 <- StokeYC1[ StokeYC1 == "foo" ] <- 0
StokeRC1 <- StokeRC1[ StokeRC1 == "foo" ] <- 0
StokeMP1 <- StokeMP1[ StokeMP1 == "foo" ] <- 42
StokeCP1 <- StokeCP1[ StokeCP1 == "foo" ] <- NA

### Ashley Williams ###
StokeGoal2 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[2]/div/div/div[2]/div/div[1]') %>%
  html_text()

StokeAssist2 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[2]/div/div/div[2]/div/div[2]') %>%
  html_text()

StokeYC2 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[2]/div/div/div[2]/div/div[4]') %>%
  html_text()


StokeRC2 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[2]/div/div/div[2]/div/div[5]') %>%
  html_text()

StokeMP2 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[2]/div/div/div[2]/div/div[6]') %>%
  html_text()

StokeGoal2 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeGoal2))
StokeAssist2 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeAssist2))
StokeYC2 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeYC2))
StokeRC2 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeRC2))
StokeMP2 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeMP2))
StokeCP2 <- StokeCP1[ StokeCP1 == "foo" ] <- NA

### Benik Afobe ###
StokeGoal3 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[4]/div/div/div[2]/div/div[1]') %>%
  html_text()

StokeAssist3 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[4]/div/div/div[2]/div/div[2]') %>%
  html_text()

StokeYC3 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[4]/div/div/div[2]/div/div[4]') %>%
  html_text()

StokeRC3 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[4]/div/div/div[2]/div/div[5]') %>%
  html_text()

StokeMP3 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[4]/div/div/div[2]/div/div[6]') %>%
  html_text()

StokeCP3 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[4]/div/div/div[2]/div/div[8]') %>%
  html_text()

StokeGoal3 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeGoal3))
StokeAssist3 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeAssist3))
StokeYC3 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeYC3))
StokeRC3 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeRC3))
StokeMP3 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeMP3))
StokeCP3 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeCP3))

### Bojan Krkic ###
StokeGoal4 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[5]/div/div/div[2]/div/div[1]') %>%
  html_text()

StokeAssist4 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[5]/div/div/div[2]/div/div[2]') %>%
  html_text()

StokeYC4 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[5]/div/div/div[2]/div/div[4]') %>%
  html_text()

StokeRC4 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[5]/div/div/div[2]/div/div[5]') %>%
  html_text()

StokeMP4 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[5]/div/div/div[2]/div/div[6]') %>%
  html_text()

StokeCP4 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[5]/div/div/div[2]/div/div[8]') %>%
  html_text()


StokeGoal4 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeGoal4))
StokeAssist4 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeAssist4))
StokeYC4 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeYC4))
StokeRC4 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeRC4))
StokeMP4 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeMP4))
StokeCP4 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeCP4))

#Bruno Martins Indi
StokeGoal5 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[7]/div/div/div[2]/div/div[1]') %>%
  html_text()

StokeAssist5 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[7]/div/div/div[2]/div/div[2]') %>%
  html_text()

StokeYC5 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[7]/div/div/div[2]/div/div[4]') %>%
  html_text()

StokeRC5 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[7]/div/div/div[2]/div/div[5]') %>%
  html_text()

StokeMP5 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[7]/div/div/div[2]/div/div[6]') %>%
  html_text()

StokeCP5 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[7]/div/div/div[2]/div/div[8]') %>%
  html_text()


StokeGoal5 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeGoal5))
StokeAssist5 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeAssist5))
StokeYC5 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeYC5))
StokeRC5 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeRC5))
StokeMP5 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeMP5))
StokeCP5 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeCP5))

#Charlie Adam
StokeGoal6 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[8]/div/div/div[2]/div/div[1]') %>%
  html_text()

StokeAssist6 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[8]/div/div/div[2]/div/div[2]') %>%
  html_text()

StokeYC6 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[8]/div/div/div[2]/div/div[4]') %>%
  html_text()

StokeRC6 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[8]/div/div/div[2]/div/div[5]') %>%
  html_text()

StokeMP6 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[8]/div/div/div[2]/div/div[6]') %>%
  html_text()

StokeCP6 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[8]/div/div/div[2]/div/div[8]') %>%
  html_text()


StokeGoal6 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeGoal6))
StokeAssist6 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeAssist6))
StokeYC6 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeYC6))
StokeRC6 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeRC6))
StokeMP6 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeMP6))
StokeCP6 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeCP6))

#Danny Batth
StokeGoal7 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[11]/div/div/div[2]/div/div[1]') %>%
  html_text()

StokeAssist7 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[11]/div/div/div[2]/div/div[2]') %>%
  html_text()

StokeYC7 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[11]/div/div/div[2]/div/div[4]') %>%
  html_text()

StokeRC7 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[11]/div/div/div[2]/div/div[5]') %>%
  html_text()

StokeMP7 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[11]/div/div/div[2]/div/div[6]') %>%
  html_text()

StokeCP7 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[11]/div/div/div[2]/div/div[8]') %>%
  html_text()


StokeGoal7 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeGoal7))
StokeAssist7 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeAssist7))
StokeYC7 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeYC7))
StokeRC7 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeRC7))
StokeMP7 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeMP7))
StokeCP7 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeCP7))


#Darren Fletcher
StokeGoal8 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[13]/div/div/div[2]/div/div[1]') %>%
  html_text()

StokeAssist8 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[13]/div/div/div[2]/div/div[2]') %>%
  html_text()

StokeYC8 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[13]/div/div/div[2]/div/div[4]') %>%
  html_text()

StokeRC8 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[13]/div/div/div[2]/div/div[5]') %>%
  html_text()

StokeMP8 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[13]/div/div/div[2]/div/div[6]') %>%
  html_text()

StokeCP8 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[13]/div/div/div[2]/div/div[8]') %>%
  html_text()


StokeGoal8 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeGoal8))
StokeAssist8 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeAssist8))
StokeYC8 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeYC8))
StokeRC8 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeRC8))
StokeMP8 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeMP8))
StokeCP8 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeCP8))


#Jack Butland
StokeGoal9 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[14]/div/div/div[2]/div/div[1]') %>%
  html_text()

StokeAssist9 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[14]/div/div/div[2]/div/div[2]') %>%
  html_text()

StokeYC9 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[14]/div/div/div[2]/div/div[4]') %>%
  html_text()

StokeRC9 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[14]/div/div/div[2]/div/div[5]') %>%
  html_text()

StokeMP9 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[14]/div/div/div[2]/div/div[6]') %>%
  html_text()


StokeGoal9 <- StokeGoal1[ StokeGoal1 == "foo" ] <- 0
StokeAssist9 <- StokeAssist1[ StokeAssist1 == "foo" ] <- 0
StokeYC9 <- StokeYC9[ StokeYC9 == "foo" ] <- 0
StokeRC9 <- StokeRC9[ StokeRC9 == "foo" ] <- 0
StokeMP9 <- StokeMP9[ StokeMP9 == "foo" ] <- 44

#Jakob Haugaard
StokeGoal10 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[16]/div/div/div[2]/div/div[1]') %>%
  html_text()

StokeAssist10 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[16]/div/div/div[2]/div/div[2]') %>%
  html_text()

StokeYC10 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[16]/div/div/div[2]/div/div[4]') %>%
  html_text()

StokeRC10 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[16]/div/div/div[2]/div/div[5]') %>%
  html_text()

StokeMP10 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[16]/div/div/div[2]/div/div[6]') %>%
  html_text()


StokeGoal10 <- StokeGoal10[ StokeGoal10 == "foo" ] <- 0
StokeAssist10 <- StokeAssist10[ StokeAssist10 == "foo" ] <- 0
StokeYC10 <- StokeYC10[ StokeYC10 == "foo" ] <- 0
StokeRC10 <- StokeRC10[ StokeRC10 == "foo" ] <- 0
StokeMP10 <- StokeMP10[ StokeMP10 == "foo" ] <- 5

#James McClean
StokeGoal11 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[17]/div/div/div[2]/div/div[1]') %>%
  html_text()

StokeAssist11 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[17]/div/div/div[2]/div/div[2]') %>%
  html_text()

StokeYC11 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[17]/div/div/div[2]/div/div[4]') %>%
  html_text()

StokeRC11 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[17]/div/div/div[2]/div/div[5]') %>%
  html_text()

StokeMP11 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[17]/div/div/div[2]/div/div[6]') %>%
  html_text()

StokeCP11 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[17]/div/div/div[2]/div/div[8]') %>%
  html_text()


StokeGoal11 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeGoal11))
StokeAssist11 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeAssist11))
StokeYC11 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeYC11))
StokeRC11 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeRC11))
StokeMP11 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeMP11))
StokeCP11 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeCP11))


#Joe Allen
StokeGoal12 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[19]/div/div/div[2]/div/div[1]') %>%
  html_text()

StokeAssist12 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[19]/div/div/div[2]/div/div[2]') %>%
  html_text()

StokeYC12 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[19]/div/div/div[2]/div/div[4]') %>%
  html_text()

StokeRC12 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[19]/div/div/div[2]/div/div[5]') %>%
  html_text()

StokeMP12 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[19]/div/div/div[2]/div/div[6]') %>%
  html_text()

StokeCP12 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[19]/div/div/div[2]/div/div[8]') %>%
  html_text()


StokeGoal12 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeGoal12))
StokeAssist12 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeAssist12))
StokeYC12 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeYC12))
StokeRC12 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeRC12))
StokeMP12 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeMP12))
StokeCP12 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeCP12))


#Josh Tymon
StokeGoal13 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[20]/div/div/div[2]/div/div[1]') %>%
  html_text()

StokeAssist13 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[20]/div/div/div[2]/div/div[2]') %>%
  html_text()

StokeYC13 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[20]/div/div/div[2]/div/div[4]') %>%
  html_text()

StokeRC13 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[20]/div/div/div[2]/div/div[5]') %>%
  html_text()

StokeMP13 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[20]/div/div/div[2]/div/div[6]') %>%
  html_text()


StokeGoal13 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeGoal13))
StokeAssist13 <- StokeAssist11[ StokeAssist11 == "foo" ] <- 0
StokeYC13 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeYC13))
StokeRC13 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeRC13))
StokeMP13 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeMP13))

#Mame Biram Diouf
StokeGoal14 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[23]/div/div/div[2]/div/div[1]') %>%
  html_text()

StokeAssist14 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[23]/div/div/div[2]/div/div[2]') %>%
  html_text()

StokeYC14 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[23]/div/div/div[2]/div/div[4]') %>%
  html_text()

StokeRC14 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[23]/div/div/div[2]/div/div[5]') %>%
  html_text()

StokeMP14 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[23]/div/div/div[2]/div/div[6]') %>%
  html_text()

StokeGoal14 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeGoal14))
StokeAssist14 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeAssist14))
StokeYC14 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeYC14))
StokeRC14 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeRC14))
StokeMP14 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeMP14))

#Ryan Shawcross
StokeGoal15 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[29]/div/div/div[2]/div/div[1]') %>%
  html_text()

StokeAssist15 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[29]/div/div/div[2]/div/div[2]') %>%
  html_text()

StokeYC15 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[29]/div/div/div[2]/div/div[4]') %>%
  html_text()

StokeRC15 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[29]/div/div/div[2]/div/div[5]') %>%
  html_text()

StokeMP15 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[29]/div/div/div[2]/div/div[6]') %>%
  html_text()

StokeGoal15 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeGoal15))
StokeAssist15 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeAssist15))
StokeYC15 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeYC15))
StokeRC15 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeRC15))
StokeMP15 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeMP15))


#Thomas Ince
StokeGoal16 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[40]/div/div/div[2]/div/div[1]') %>%
  html_text()

StokeAssist16 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[40]/div/div/div[2]/div/div[2]') %>%
  html_text()

StokeYC16 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[40]/div/div/div[2]/div/div[4]') %>%
  html_text()

StokeRC16 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[40]/div/div/div[2]/div/div[5]') %>%
  html_text()

StokeMP16 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[40]/div/div/div[2]/div/div[6]') %>%
  html_text()

StokeCP16 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[40]/div/div/div[2]/div/div[8]') %>%
  html_text()


StokeGoal16 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeGoal16))
StokeAssist16 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeAssist16))
StokeYC16 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeYC16))
StokeRC16 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeRC16))
StokeMP16 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeMP16))
StokeCP16 <-as.integer(gsub("([0-9]+).*$", "\\1", StokeCP16))

########## Remove Certain Rows From Stoke Dataset #############
Stoke <- data.frame(PlayerNames)
View(Stoke)
Stoke <- Stoke[-c(7,15, 17:19, 21:26), ]
Stoke <- as.character(Stoke)
Stoke <- data.frame(Stoke)

############ Creating Datasets for All Data ###############
StokeAssists <- c(StokeAssist1, StokeAssist2,  StokeAssist3, StokeAssist4, StokeAssist5, StokeAssist6, StokeAssist7, StokeAssist8, StokeAssist9, StokeAssist10, StokeAssist11, StokeAssist12, StokeAssist13, StokeAssist14, StokeAssist15, StokeAssist16)
Stoke$Assists <- data.frame(StokeAssists)

StokeGoals <- c(StokeGoal1, StokeGoal2, StokeGoal3, StokeGoal4, StokeGoal5, StokeGoal6, StokeGoal7, StokeGoal8, StokeGoal9, StokeGoal10, StokeGoal11, StokeGoal12, StokeGoal13, StokeGoal14, StokeGoal15, StokeGoal16)
Stoke$Goals <- data.frame(StokeGoals)

StokeYC <- c(StokeYC1, StokeYC2, StokeYC3, StokeYC4, StokeYC5, StokeYC6, StokeYC7, StokeYC8, StokeYC9, StokeYC10, StokeYC11, StokeYC12, StokeYC13, StokeYC14, StokeYC15, StokeYC16)
Stoke$YellowCards <- data.frame(StokeYC)

StokeRC <- c(StokeRC1, StokeRC2, StokeRC3, StokeRC4, StokeRC5, StokeRC6, StokeRC7, StokeRC8, StokeRC9, StokeRC10, StokeRC11, StokeRC12, StokeRC13, StokeRC14, StokeRC15, StokeRC16)
Stoke$RedCards <- data.frame(StokeRC)

StokeMP <- c(StokeMP1, StokeMP2, StokeMP3, StokeMP4, StokeMP5, StokeMP6, StokeMP7, StokeMP8, StokeMP9, StokeMP10, StokeMP11, StokeMP12, StokeMP13, StokeMP14, StokeMP15, StokeMP16)
Stoke$PlayedGames <- data.frame(StokeMP)


######################### Prediction Values - Stoke #######################

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

#Age
StokeAge <- Stoketransfermarkt_wbpg %>%
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

StokePreviousValueTM2 <- html_attr(StokePreviousValueTM, "title")
PreviousValue <- gsub("[^0-9.]","",StokePreviousValueTM2)
CurrentValue <- gsub("[^0-9.]","",PlayerCurrentValue)
#names(mydf) <- gsub("\\.", "", names(mydf))

Value2017 <- c(
  "13500000",
  "900000",
  "675000",
  "9000000", 
  "9900000", 
  "7200000", 
  "900000", 
  "900000", 
  "2070000", 
  "450000", 
  "1350000", 
  "13500000", 
  "900000", 
  "3150000", 
  "1800000", 
  "2250000", 
  "2700000",
  "6300000", 
  "7200000", 
  "9000000", 
  "13500000", 
  "3600000", 
  "6300000"
)

Value2017 <- as.numeric(Value2017)


Value2016 <- c(
  "8100000",
  "900000",
  "900000",
  "9000000", 
  "8100000", 
  "7200000", 
  "900000", 
  "450000", 
  "1800000", 
  "0", 
  "1350000", 
  "10800000", 
  "135000", 
  "4050000", 
  "1800000", 
  "2250000", 
  "2700000",
  "9000000",
  "900000", 
  "8100000",
  "13500000", 
  "3150000", 
  "7200000"
)

Value2016 <- as.numeric(Value2016)


Value2015 <- c(
  "3150000",
  "900000",
  "675000",
  "10350000", 
  "8100000", 
  "5850000", 
  "900000", 
  "0", 
  "1800000", 
  "0", 
  "450000", 
  "9000000", 
  "135000", 
  "3600000",
  "1800000", 
  "1350000", 
  "2700000", 
  "5850000", 
  "6300000", 
  "6300000", 
  "13500000", 
  "2250000", 
  "8100000"
)
Value2015 <- as.numeric(Value2015)

Value2019 <- as.double(CurrentValue, digits=2)
Value2019 <- as.data.frame(Value2019)
Value2018 <- as.double(PreviousValue, digits=2)
Value2018 <- as.double(Value2018)

StokeCity <- data.frame(PlayerName, StokeclubCountryTM, StokeAge, Value2017, Value2016, Value2015)
StokeCity <- cbind(StokeCity, Value2019, Value2018)

for (i in 1:nrow(StokeCity)) {
  
  if(StokeCity[i , "Value2019"] < 25)
    StokeCity$Value2019[i] <- StokeCity[i , "Value2019"]*1000000
  
  else
    StokeCity$Value2019[i] <- StokeCity[i , "Value2019"]*1000
  
  
}

for (i in 1:nrow(StokeCity)) {
  
  if(StokeCity[i , "Value2018"] < 25)
    StokeCity$Value2018[i] <- StokeCity[i , "Value2018"]*1000000
  
  else
    StokeCity$Value2018[i] <- StokeCity[i , "Value2018"]*1000
  
  
}


##################### Linear Regression - Stoke ############################

#install.packages("ISLR")
library(ISLR)
StokeCity <- StokeCity
?StokeCity
str(StokeCity)

# check for missing data
sapply(StokeCity, FUN=function(x) {sum(is.na(x))})

# Model Evaluation

# Going with our holdout set
# pick 75% of row indexes (i.e. row numbers)
index <- sample(1:nrow(StokeCity), nrow(StokeCity)*.75, replace=FALSE)

#those chosen, put in the training data frame
training <- StokeCity[index, ]

#those not chosen, put in the testing data frame
testing <- StokeCity[-index, ]


getPerformanceData <- function(model, testingStokeCity) 
{
  # instrument the predictions
  yHat <- predict(model, newdata=testingStokeCity)
  
  # calculate the measures of test performance
  MAE <- mean(abs(testing$Value2019 - yHat), na.rm = TRUE)
  MSE <- mean((testing$Value2019 - yHat)^2, na.rm = TRUE)
  RMSE <- sqrt(MSE)
  MAPE <- mean(abs((testing$Value2019 - yHat)/ testing$Value2019), na.rm = TRUE)
  
  return(data.frame(MAE, MSE, RMSE, MAPE))
}

# Multiple Linear Regression
# Y = beta_0 + beta_1 x1 + ... + beta_n xn + err
# balance = beta_0 + beta_1 x limit + beta_2 x income + err

#fit <- lm(testing$`2019 Value` ~ testing$`2018 Value` + testing$`2017 Value` + testing$`2016 Value`, data = Norwich)
#getPerformanceData(fit, testing)


LIRmodel <- lm(Value2019 ~ Value2018 + Value2017 + Value2016 + Value2015 , data=testing)
getPerformanceData(LIRmodel, testing)


summary(LIRmodel)
testing$Predicted<- predict(LIRmodel)

##### Train ####
getPerformanceData <- function(model, trainingStokeCity) 
{
  # instrument the predictions
  yHat <- predict(model, newdata=trainingStokeCity)
  
  # calculate the measures of test performance
  MAE <- mean(abs(training$Value2019 - yHat), na.rm = TRUE)
  MSE <- mean((training$Value2019 - yHat)^2, na.rm = TRUE)
  RMSE <- sqrt(MSE)
  MAPE <- mean(abs((training$Value2019 - yHat)/ training$Value2019), na.rm = TRUE)
  
  return(data.frame(MAE, MSE, RMSE, MAPE))
}

LIRmodelTrain <- lm(Value2019 ~ Value2018 + Value2017 + Value2016 + Value2015 , data=training)
getPerformanceData(LIRmodelTrain, training)


summary(LIRmodelTrain)
training$Predicted <- predict(LIRmodelTrain)


#### Combined Predicted Values ####
StokeCity <- merge(testing, training, all = T)

#### Fixing Columns ####
Stoke <- Stoke[order(Stoke$Stoke),]
StokeCity <- StokeCity[order(StokeCity$PlayerName),]

##### Removing Rows ####
StokeCity <- StokeCity[-c(15, 16, 18, 19, 20, 21, 22), ]


#### Binding Both Values and Football Data + More Fixes ####
StokeCityFC <- cbind(Stoke, StokeCity)
StokeCityFC <- StokeCityFC[ -c(7) ]
StokeCityFC <- StokeCityFC[c(1,7,8,2,3,4,5,6,9,10,11,12,13,14)]

######################### Norwich #######################
fctables_wbpg <- read_html("Norwich.html")


### all players names ###
PlayerNames <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(".header-title") %>%
  html_text()


### Alex Tettey ###
NorwichGoal1 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[1]/div/div/div[2]/div/div[1]') %>%
  html_text()

NorwichAssist1 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[1]/div/div/div[2]/div/div[2]') %>%
  html_text()

NorwichYC1 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[1]/div/div/div[2]/div/div[4]') %>%
  html_text()

NorwichRC1 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[1]/div/div/div[2]/div/div[5]') %>%
  html_text()

NorwichMP1 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[1]/div/div/div[2]/div/div[6]') %>%
  html_text()

NorwichGoal1 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichGoal1))
NorwichAssist1 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichAssist1))
NorwichYC1 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichYC1))
NorwichRC1 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichRC1))
NorwichMP1 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichMP1))

### Alfie Payne ###
NorwichGoal2 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[2]/div/div/div[2]/div/div[1]') %>%
  html_text()

NorwichAssist2 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[2]/div/div/div[2]/div/div[2]') %>%
  html_text()

NorwichYC2 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[2]/div/div/div[2]/div/div[4]') %>%
  html_text()

NorwichRC2 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[2]/div/div/div[2]/div/div[5]') %>%
  html_text()

NorwichMP2 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[2]/div/div/div[2]/div/div[6]') %>%
  html_text()


NorwichGoal2 <- NorwichGoal2[ NorwichGoal2 == "foo" ] <- 0
NorwichAssist2 <- NorwichAssist2[ NorwichAssist2 == "foo" ] <- 0
NorwichYC2 <- NorwichYC2[ NorwichYC2 == "foo" ] <- 0
NorwichRC2 <- NorwichRC2[ NorwichRC2 == "foo" ] <- 0
NorwichMP2 <- NorwichMP2[ NorwichMP2 == "foo" ] <- 1

### ASTON OXBOROUGH ###
NorwichGoal3 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[4]/div/div/div[2]/div/div[1]') %>%
  html_text()

NorwichAssist3 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[4]/div/div/div[2]/div/div[2]') %>%
  html_text()

NorwichYC3 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[4]/div/div/div[2]/div/div[4]') %>%
  html_text()

NorwichRC3 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[4]/div/div/div[2]/div/div[5]') %>%
  html_text()

NorwichMP3 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[4]/div/div/div[2]/div/div[6]') %>%
  html_text()

NorwichGoal3 <- NorwichGoal3[ NorwichGoal3 == "foo" ] <- 0
NorwichAssist3 <- NorwichAssist3[ NorwichAssist3 == "foo" ] <- 0
NorwichYC3 <- NorwichYC3[ NorwichYC3 == "foo" ] <- 0
NorwichRC3 <- NorwichRC3[ NorwichRC3 == "foo" ] <- 0
NorwichMP3 <- NorwichMP3[ NorwichMP3 == "foo" ] <- 3

### BEN GODFREY ###
NorwichGoal4 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[5]/div/div/div[2]/div/div[1]') %>%
  html_text()

NorwichAssist4 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[5]/div/div/div[2]/div/div[2]') %>%
  html_text()

NorwichYC4 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[5]/div/div/div[2]/div/div[4]') %>%
  html_text()

NorwichRC4 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[5]/div/div/div[2]/div/div[5]') %>%
  html_text()

NorwichMP4 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[5]/div/div/div[2]/div/div[6]') %>%
  html_text()



NorwichGoal4 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichGoal4))
NorwichAssist4 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichAssist4))
NorwichYC4 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichYC4))
NorwichRC4 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichRC4))
NorwichMP4 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichMP4))

#CHRISTOPH ZIMMERMANN
NorwichGoal5 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[7]/div/div/div[2]/div/div[1]') %>%
  html_text()

NorwichAssist5 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[7]/div/div/div[2]/div/div[2]') %>%
  html_text()

NorwichYC5 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[7]/div/div/div[2]/div/div[4]') %>%
  html_text()

NorwichRC5 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[7]/div/div/div[2]/div/div[5]') %>%
  html_text()

NorwichMP5 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[7]/div/div/div[2]/div/div[6]') %>%
  html_text()

NorwichGoal5 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichGoal5))
NorwichAssist5 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichAssist5))
NorwichYC5 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichYC5))
NorwichRC5 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichRC5))
NorwichMP5 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichMP5))

#DENNIS SRBENY
NorwichGoal6 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[8]/div/div/div[2]/div/div[1]') %>%
  html_text()

NorwichAssist6 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[8]/div/div/div[2]/div/div[2]') %>%
  html_text()

NorwichYC6 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[8]/div/div/div[2]/div/div[4]') %>%
  html_text()

NorwichRC6 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[8]/div/div/div[2]/div/div[5]') %>%
  html_text()

NorwichMP6 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[8]/div/div/div[2]/div/div[6]') %>%
  html_text()

NorwichGoal6 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichGoal6))
NorwichAssist6 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichAssist6))
NorwichYC6 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichYC6))
NorwichRC6 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichRC6))
NorwichMP6 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichMP6))


#EMILIANO BUENDIA#
NorwichGoal7 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[10]/div/div/div[2]/div/div[1]') %>%
  html_text()

NorwichAssist7 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[10]/div/div/div[2]/div/div[2]') %>%
  html_text()

NorwichYC7 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[10]/div/div/div[2]/div/div[4]') %>%
  html_text()

NorwichRC7 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[10]/div/div/div[2]/div/div[5]') %>%
  html_text()

NorwichMP7 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[10]/div/div/div[2]/div/div[6]') %>%
  html_text()

NorwichGoal7 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichGoal7))
NorwichAssist7 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichAssist7))
NorwichYC7 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichYC7))
NorwichRC7 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichRC7))
NorwichMP7 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichMP7))


## FELIX PASSLACK ##
NorwichGoal8 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[11]/div/div/div[2]/div/div[1]') %>%
  html_text()

NorwichAssist8 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[11]/div/div/div[2]/div/div[2]') %>%
  html_text()

NorwichYC8 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[11]/div/div/div[2]/div/div[4]') %>%
  html_text()

NorwichRC8 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[11]/div/div/div[2]/div/div[5]') %>%
  html_text()

NorwichMP8 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[11]/div/div/div[2]/div/div[6]') %>%
  html_text()

NorwichGoal8 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichGoal8))
NorwichAssist8 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichAssist8))
NorwichYC8 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichYC8))
NorwichRC8 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichRC8))
NorwichMP8 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichMP8))

#GRANT HANLEY
NorwichGoal9 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[13]/div/div/div[2]/div/div[1]') %>%
  html_text()

NorwichAssist9 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[13]/div/div/div[2]/div/div[2]') %>%
  html_text()

NorwichYC9 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[13]/div/div/div[2]/div/div[4]') %>%
  html_text()

NorwichRC9 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[13]/div/div/div[2]/div/div[5]') %>%
  html_text()

NorwichMP9 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[13]/div/div/div[2]/div/div[6]') %>%
  html_text()

NorwichGoal9 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichGoal9))
NorwichAssist9 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichAssist9))
NorwichYC9 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichYC9))
NorwichRC9 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichRC9))
NorwichMP9 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichMP9))

#IVO PINTO
NorwichGoal10 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[14]/div/div/div[2]/div/div[1]') %>%
  html_text()

NorwichAssist10 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[14]/div/div/div[2]/div/div[2]') %>%
  html_text()

NorwichYC10 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[14]/div/div/div[2]/div/div[4]') %>%
  html_text()

NorwichRC10 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[14]/div/div/div[2]/div/div[5]') %>%
  html_text()

NorwichMP10 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[14]/div/div/div[2]/div/div[6]') %>%
  html_text()


NorwichGoal10 <- NorwichGoal1[ NorwichGoal1 == "foo" ] <- 0
NorwichAssist10 <- NorwichAssist1[ NorwichAssist1 == "foo" ] <- 0
NorwichYC10 <- NorwichYC10[ NorwichYC10 == "foo" ] <- 0
NorwichRC10 <- NorwichRC10[ NorwichRC10 == "foo" ] <- 0
NorwichMP10 <- NorwichMP10[ NorwichMP10 == "foo" ] <- 8

#JAMAL LEWIS
NorwichGoal11 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[16]/div/div/div[2]/div/div[1]') %>%
  html_text()

NorwichAssist11 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[16]/div/div/div[2]/div/div[2]') %>%
  html_text()

NorwichYC11 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[16]/div/div/div[2]/div/div[4]') %>%
  html_text()

NorwichRC11 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[16]/div/div/div[2]/div/div[5]') %>%
  html_text()

NorwichMP11 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[16]/div/div/div[2]/div/div[6]') %>%
  html_text()


NorwichGoal11 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichGoal11))
NorwichAssist11 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichAssist11))
NorwichYC11 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichYC11))
NorwichRC11 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichRC11))
NorwichMP11 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichMP11))

#JORDAN RHODES
NorwichGoal12 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[17]/div/div/div[2]/div/div[1]') %>%
  html_text()

NorwichAssist12 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[17]/div/div/div[2]/div/div[2]') %>%
  html_text()

NorwichYC12 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[17]/div/div/div[2]/div/div[4]') %>%
  html_text()

NorwichRC12 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[17]/div/div/div[2]/div/div[5]') %>%
  html_text()

NorwichMP12 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[17]/div/div/div[2]/div/div[6]') %>%
  html_text()

NorwichGoal12 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichGoal12))
NorwichAssist12 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichAssist12))
NorwichYC12 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichYC12))
NorwichRC12 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichRC12))
NorwichMP12 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichMP12))

#KENNY MCLEAN
NorwichGoal13 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[19]/div/div/div[2]/div/div[1]') %>%
  html_text()

NorwichAssist13 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[19]/div/div/div[2]/div/div[2]') %>%
  html_text()

NorwichYC13 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[19]/div/div/div[2]/div/div[4]') %>%
  html_text()

NorwichRC13 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[19]/div/div/div[2]/div/div[5]') %>%
  html_text()

NorwichMP13 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[19]/div/div/div[2]/div/div[6]') %>%
  html_text()

NorwichGoal13 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichGoal13))
NorwichAssist13 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichAssist13))
NorwichYC13 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichYC13))
NorwichRC13 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichRC13))
NorwichMP13 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichMP13))


#LOUIS THOMPSON
NorwichGoal14 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[20]/div/div/div[2]/div/div[1]') %>%
  html_text()

NorwichAssist14 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[20]/div/div/div[2]/div/div[2]') %>%
  html_text()

NorwichYC14 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[20]/div/div/div[2]/div/div[4]') %>%
  html_text()

NorwichRC14 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[20]/div/div/div[2]/div/div[5]') %>%
  html_text()

NorwichMP14 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[20]/div/div/div[2]/div/div[6]') %>%
  html_text()


NorwichGoal14 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichGoal14))
NorwichAssist14 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichAssist14))
NorwichYC14 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichYC14))
NorwichRC14 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichRC14))
NorwichMP14 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichMP14))

#MARIO VRANCIC
NorwichGoal15 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[23]/div/div/div[2]/div/div[1]') %>%
  html_text()

NorwichAssist15 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[23]/div/div/div[2]/div/div[2]') %>%
  html_text()

NorwichYC15 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[23]/div/div/div[2]/div/div[4]') %>%
  html_text()

NorwichRC15 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[23]/div/div/div[2]/div/div[5]') %>%
  html_text()

NorwichMP15 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[23]/div/div/div[2]/div/div[6]') %>%
  html_text()

NorwichGoal15 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichGoal15))
NorwichAssist15 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichAssist15))
NorwichYC15 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichYC15))
NorwichRC15 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichRC15))
NorwichMP15 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichMP15))

#ONEL HERNANDEZ
NorwichGoal16 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[29]/div/div/div[2]/div/div[1]') %>%
  html_text()

NorwichAssist16 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[29]/div/div/div[2]/div/div[2]') %>%
  html_text()

NorwichYC16 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[29]/div/div/div[2]/div/div[4]') %>%
  html_text()

NorwichRC16 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[29]/div/div/div[2]/div/div[5]') %>%
  html_text()

NorwichMP16 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[29]/div/div/div[2]/div/div[6]') %>%
  html_text()

NorwichGoal16 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichGoal16))
NorwichAssist16 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichAssist16))
NorwichYC16 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichYC16))
NorwichRC16 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichRC16))
NorwichMP16 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichMP16))

#TEEMU PUKKI
NorwichGoal17 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[31]/div/div/div[2]/div/div[1]') %>%
  html_text()

NorwichAssist17 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[31]/div/div/div[2]/div/div[2]') %>%
  html_text()

NorwichYC17 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[31]/div/div/div[2]/div/div[4]') %>%
  html_text()

NorwichRC17 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[31]/div/div/div[2]/div/div[5]') %>%
  html_text()

NorwichMP17 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[31]/div/div/div[2]/div/div[6]') %>%
  html_text()

NorwichGoal17 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichGoal17))
NorwichAssist17 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichAssist17))
NorwichYC17 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichYC17))
NorwichRC17 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichRC17))
NorwichMP17 <-as.numeric(gsub("([0-9]+).*$", "\\1", NorwichMP17))

########## Remove Certain Rows From Norwich Dataset #############
Norwich <- data.frame(PlayerNames)
View(Norwich)
Norwich <- Norwich[-c(15, 17, 18, 19, 22, 23, 24, 25), ]
Norwich <- as.character(Norwich)
Norwich <- data.frame(Norwich)

############ Creating Datasets for All Data ###############
NorwichAssists <- c(NorwichAssist1, NorwichAssist2, NorwichAssist3, NorwichAssist4, NorwichAssist5, NorwichAssist6, NorwichAssist7, NorwichAssist8, NorwichAssist9, NorwichAssist10, NorwichAssist11, NorwichAssist12, NorwichAssist13, NorwichAssist14, NorwichAssist15, NorwichAssist16, NorwichAssist17)
Norwich$Assists <- data.frame(NorwichAssists)

NorwichGoals <- c(NorwichGoal1, NorwichGoal2, NorwichGoal3, NorwichGoal4, NorwichGoal5, NorwichGoal6, NorwichGoal7, NorwichGoal8, NorwichGoal9, NorwichGoal10, NorwichGoal11, NorwichGoal12, NorwichGoal13, NorwichGoal14, NorwichGoal15, NorwichGoal16, NorwichGoal17)
Norwich$Goals <- data.frame(NorwichGoals)

NorwichYC <- c(NorwichYC1, NorwichYC2, NorwichYC3, NorwichYC4, NorwichYC5, NorwichYC6, NorwichYC7, NorwichYC8, NorwichYC9, NorwichYC10, NorwichYC11, NorwichYC12, NorwichYC13, NorwichYC14, NorwichYC15, NorwichYC16, NorwichYC17)
Norwich$YellowCards <- data.frame(NorwichYC)

NorwichRC <- c(NorwichRC1, NorwichRC2, NorwichRC3, NorwichRC4, NorwichRC5, NorwichRC6, NorwichRC7, NorwichRC8, NorwichRC9, NorwichRC10, NorwichRC11, NorwichRC12, NorwichRC13, NorwichRC14, NorwichRC15, NorwichRC16, NorwichRC17)
Norwich$RedCards <- data.frame(NorwichRC)

NorwichMP <- c(NorwichMP1, NorwichMP2, NorwichMP3, NorwichMP4, NorwichMP5, NorwichMP6, NorwichMP7, NorwichMP8, NorwichMP9, NorwichMP10, NorwichMP11, NorwichMP12, NorwichMP13, NorwichMP14, NorwichMP15, NorwichMP16, NorwichMP17)
Norwich$PlayedGames <- data.frame(NorwichMP)

######################### Prediction Values - Norwich #######################

library(rvest)
library(stringr)
library("tm", lib.loc="~/R/win-library/3.5")

Norwichtransfermarkt_wbpg <- read_html("NorwichTM.html")

#players names
PlayerName <- Norwichtransfermarkt_wbpg %>%
  html_nodes(".responsive-table") %>%
  html_nodes(".posrela") %>%
  html_nodes(".hide-for-small") %>%
  html_nodes(".spielprofil_tooltip") %>%
  html_text()

#Players Current Value
PlayerCurrentValue <- Norwichtransfermarkt_wbpg %>%
  html_nodes(".responsive-table") %>%
  html_nodes("td.hauptlink:nth-child(10)") %>%
  html_text()

#Previous Current Value
NorwichPreviousValueTM <- Norwichtransfermarkt_wbpg %>%
  html_nodes(".responsive-table") %>%
  html_nodes("td.rechts") %>%
  html_nodes(".icons_sprite")

NorwichPreviousValueTM2 <- html_attr(NorwichPreviousValueTM, "title")
PreviousValue <- gsub("[^0-9.]","",NorwichPreviousValueTM2)
CurrentValue <- gsub("[^0-9.]","",PlayerCurrentValue)
#names(mydf) <- gsub("\\.", "", names(mydf))

#Age
NorwichAge <- Norwichtransfermarkt_wbpg %>%
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

Value2017 <- c(
  "3600000",
  "450000",
  "90000",
  "4950000", 
  "4050000", 
  "225000", 
  "225000", 
  "765000", 
  "150000", 
  "360000", 
  "2250000", 
  "180000", 
  "450000", 
  "225000", 
  "1130000", 
  "1260000", 
  "540000", 
  "68000", 
  "900000", 
  "720000", 
  "450000", 
  "7200000", 
  "1800000", 
  "360000" 
)

Value2017 <- as.numeric(Value2017)

Value2016 <- c(
  7200000,
  450000,
  90000,
  3600000,
  2250000,
  158000,
  0,
  675000,
  0,
  3600000,
  2700000,
  2700000,
  450000,
  450000,
  900000,
  1350000,
  540000,
  0,
  855000,
  135000,
  450000,
  9000000,
  1580000,
  116000
)

Value2015 <- c(
  7200000,
  450000,
  90000,
  3600000,
  2250000,
  158000,
  0,
  540000,
  0,
  3600000,
  450000,
  3150000,
  540000,
  450000,
  1800000,
  3150000,
  585000,
  0,
  500000,
  90000,
  450000,
  9000000,
  1800000,
  68000
)
  
  
Value2019 <- as.double(CurrentValue, digits=2)
Value2019 <- as.data.frame(Value2019)
Value2018 <- as.double(PreviousValue, digits=2)
Value2018 <- as.double(Value2018)

NorwichCity <- data.frame(PlayerName, NorwichclubCountryTM, NorwichAge, Value2017, Value2016, Value2015)
NorwichCity <- cbind(NorwichCity, Value2019, Value2018)

for (i in 1:nrow(NorwichCity)) {
  
  if(NorwichCity[i , "Value2019"] < 25)
    NorwichCity$Value2019[i] <- NorwichCity[i , "Value2019"]*1000000
  
  else
    NorwichCity$Value2019[i] <- NorwichCity[i , "Value2019"]*1000
  
  
}

for (i in 1:nrow(NorwichCity)) {
  
  if(NorwichCity[i , "Value2018"] < 25)
    NorwichCity$Value2018[i] <- NorwichCity[i , "Value2018"]*1000000
  
  else
    NorwichCity$Value2018[i] <- NorwichCity[i , "Value2018"]*1000
  
  
}


##################### Linear Regression ############################

#install.packages("ISLR")
library(ISLR)
NorwichCity <- NorwichCity
?Norwich
str(NorwichCity)


# check for missing data
sapply(NorwichCity, FUN=function(x) {sum(is.na(x))})

# Model Evaluation

# Going with our holdout set
# pick 75% of row indexes (i.e. row numbers)
index <- sample(1:nrow(NorwichCity), nrow(NorwichCity)*.75, replace=FALSE)

#those chosen, put in the training data frame
training <- NorwichCity[index, ]

#those not chosen, put in the testing data frame
testing <- NorwichCity[-index, ]


getPerformanceData <- function(model, testingNorwichCity) 
{
  # instrument the predictions
  yHat <- predict(model, newdata=testingNorwichCity)
  
  # calculate the measures of test performance
  MAE <- mean(abs(testing$Value2019 - yHat), na.rm = TRUE)
  MSE <- mean((testing$Value2019 - yHat)^2, na.rm = TRUE)
  RMSE <- sqrt(MSE)
  MAPE <- mean(abs((testing$Value2019 - yHat)/ testing$Value2019), na.rm = TRUE)
  
  return(data.frame(MAE, MSE, RMSE, MAPE))
}

# Multiple Linear Regression
# Y = beta_0 + beta_1 x1 + ... + beta_n xn + err
# balance = beta_0 + beta_1 x limit + beta_2 x income + err

#fit <- lm(testing$`2019 Value` ~ testing$`2018 Value` + testing$`2017 Value` + testing$`2016 Value`, data = Norwich)
#getPerformanceData(fit, testing)


LIRmodel <- lm(Value2019 ~ Value2018 + Value2017 + Value2016 + Value2015 , data=testing)
getPerformanceData(LIRmodel, testing)

summary(LIRmodel)
testing$Predicted<- predict(LIRmodel)


##### Train ####
getPerformanceData <- function(model, trainingNorwichCity) 
{
  # instrument the predictions
  yHat <- predict(model, newdata=trainingNorwichCity)
  
  # calculate the measures of test performance
  MAE <- mean(abs(training$Value2019 - yHat), na.rm = TRUE)
  MSE <- mean((training$Value2019 - yHat)^2, na.rm = TRUE)
  RMSE <- sqrt(MSE)
  MAPE <- mean(abs((training$Value2019 - yHat)/ training$Value2019), na.rm = TRUE)
  
  return(data.frame(MAE, MSE, RMSE, MAPE))
}

LIRmodelTrain <- lm(Value2019 ~ Value2018 + Value2017 + Value2016 + Value2015 , data=training)
getPerformanceData(LIRmodelTrain, training)


summary(LIRmodelTrain)
training$Predicted <- predict(LIRmodelTrain)

#### Combined Predicted Values ####
NorwichCity <- merge(testing, training, all = T)

##### Removing Rows ####
Norwich <- Norwich[-c( 2, 3), ]
rownames(Norwich)<-NULL
NorwichCity <- NorwichCity[-c(1, 2, 4, 8, 9, 13, 16, 18, 19), ]

#### Fixing Columns ####
Norwich <- Norwich[order(Norwich$Norwich),]
NorwichCity <- NorwichCity[order(NorwichCity$PlayerName),]


#### Binding Both Values and Football Data + More Fixes ####
NorwichCityFC <- cbind(Norwich, NorwichCity)
NorwichCityFC <- NorwichCityFC[ -c(1) ]
NorwichCityFC <- NorwichCityFC[c(6,1,2,3,4,5,7,8,9,10,11,12,13)]

write.csv(NorwichCityFC, file ="NorwichTest.csv" )