#Adam Federici
Goal1 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[1]/div/div/div[2]/div/div[1]') %>%
  html_text()

#Ashley Williams
Goal2 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[2]/div/div/div[2]/div/div[1]') %>%
  html_text()

#Benik Afobe
Goal3 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[4]/div/div/div[2]/div/div[1]') %>%
  html_text()

#Bojan Krkic
Goal4 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[5]/div/div/div[2]/div/div[1]') %>%
  html_text()

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