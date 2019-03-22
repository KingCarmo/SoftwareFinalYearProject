install.packages("rvest")
library(rvest)
library(stringr)


fctables_wbpg <- read_html("stoke.html")

fctables_wbpg %>%
  html_node("title") %>%
  html_text()

#players names
PlayerNames <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(".header-title") %>%
  html_text()

TeamStats <- as.data.frame(PlayerNames)

#goals per player
Goals <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[2]/div/div/div[2]/div/div[1]') %>%
  html_text()

  Goals

as.numeric(gsub("([0-9]+).*$", "\\1", Goals))

for (i in 1:25) {
  fctables_wbpg %>%
    html_nodes(".player_box") %>%
    html_nodes(paste(".player_box:nth-child(",as.character(i),") .col-sm-6")) %>%
    html_text()
}




//*[(((count(preceding-sibling::*) + 1) = 25) and parent::*)]//*[contains(concat( " ", @class, " " ), concat( " ", "col-sm-6", " " ))] | //*[(((count(preceding-sibling::*) + 1) = 26) and parent::*)]//*[contains(concat( " ", @class, " " ), concat( " ", "col-sm-6", " " ))]//*[(((count(preceding-sibling::*) + 1) = 23) and parent::*)]//*[contains(concat( " ", @class, " " ), concat( " ", "col-sm-6", " " ))]//*[(((count(preceding-sibling::*) + 1) = 22) and parent::*)]//*[contains(concat( " ", @class, " " ), concat( " ", "col-sm-6", " " ))]//*[(@id = "team-players")]//*[(((count(preceding-sibling::*) + 1) = 20) and parent::*)]//*[contains(concat( " ", @class, " " ), concat( " ", "col-sm-6", " " ))]//*[(((count(preceding-sibling::*) + 1) = 19) and parent::*)]//*[contains(concat( " ", @class, " " ), concat( " ", "col-sm-6", " " ))]//*[(((count(preceding-sibling::*) + 1) = 17) and parent::*)]//*[contains(concat( " ", @class, " " ), concat( " ", "col-sm-6", " " ))]//*[(((count(preceding-sibling:...1) = 11) and parent::*)]//*[contains(concat( " ", @class, " " ), concat( " ", "col-sm-6", " " ))]//*[(((count(preceding-sibling::*) + 1) = 10) and parent::*)]//*[contains(concat( " ", @class, " " ), concat( " ", "col-sm-6", " " ))]//*[(@id = "team-players")]//*[(((count(preceding-sibling::*) + 1) = 7) and parent::*)]//*[contains(concat( " ", @class, " " ), concat( " ", "col-sm-6", " " ))]//*[(((count(preceding-sibling::*) + 1) = 8) and parent::*)]//*[contains(concat( " ", @class, " " ), concat( " ", "col-sm-6", " " ))]//*[(((count(preceding-sibling::*) + 1) = 5) and parent::*)]//*[contains(concat( " ", @class, " " ), concat( " ", "col-sm-6", " " ))]//*[(((count(preceding-sibling::*) + 1) = 4) and parent::*)]//*[contains(concat( " ", @class, " " ), concat( " ", "col-sm-6", " " ))]//*[contains(concat( " ", @class, " " ), concat( " ", "player_box", " " )) and (((count(preceding-sibling::*) + 1) = 2) and parent::*)]//*[contains(concat( " ", @class, " " ), concat( " ", "col-sm-6", " " ))]




StatsClean <- str_replace_all(stats, "[ \t\n\r\v\f]" , "")

#//*[@id="team-players"]/div/div[2]/div[4]/div/div/div[2]/div/div[1]

StatsClean
