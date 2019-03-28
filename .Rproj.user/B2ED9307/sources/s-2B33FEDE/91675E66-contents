install.packages("rvest")
library(rvest)
library(stringr)


fctables_wbpg <- read_html("Stoke.html")

### players names ###
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

StokeGoal1 <- StokeGoal1[ StokeGoal1 == "foo" ] <- 0
StokeAssist1 <- StokeAssist1[ StokeAssist1 == "foo" ] <- 0


### Ashley Williams ###
StokeGoal2 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[2]/div/div/div[2]/div/div[1]') %>%
  html_text()

StokeAssist2 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[2]/div/div/div[2]/div/div[2]') %>%
  html_text()

StokeGoal2 <- StokeGoal2[ StokeGoal2 == "foo" ] <- 0
StokeAssist2 <- StokeAssist2[ StokeAssist2 == "foo" ] <- 0

### Benik Afobe ###
StokeGoal3 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[4]/div/div/div[2]/div/div[1]') %>%
  html_text()

StokeAssist3 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[4]/div/div/div[2]/div/div[2]') %>%
  html_text()

StokeGoal3 <-as.numeric(gsub("([0-9]+).*$", "\\1", StokeGoal3))
StokeAssist3 <-as.numeric(gsub("([0-9]+).*$", "\\1", StokeAssist3))

### Bojan Krkic ###
StokeGoal4 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[5]/div/div/div[2]/div/div[1]') %>%
  html_text()

StokeAssist4 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[5]/div/div/div[2]/div/div[2]') %>%
  html_text()

StokeGoal4 <-as.numeric(gsub("([0-9]+).*$", "\\1", StokeGoal4))
StokeAssist4 <-as.numeric(gsub("([0-9]+).*$", "\\1", StokeAssist4))


#Bruno Martins Indi
6

#Charlie Adam
7
#Danny Batth
8
#Darren Fletcher
9
#Jack Butland
10
#Jakob Haugaard
11
#James McClean
12
#Joe Allen

#Josh Tymon
14
#Lasse Soerensen
15
#Mame Biram Diouf
16
#Moritz Bauer
17
#Oghenekaro Etebo
18
#Ryan Shawcross
19
#Ryan Woods
20
#Saido Berahino
21
#Sam Clucas
22
#Sam Vokes
23
#Thibaud Verlinden
24
#Thomas Edwards
25
#Thomas Ince