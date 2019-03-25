install.packages("rvest")
library(rvest)
library(stringr)


fctables_wbpg <- read_html("Stoke.html")


#Adam Federeci
Goal1 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[1]/div/div/div[2]/div/div[1]') %>%
  html_text()
#Ashley Williams
Goal2 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[2]/div/div/div[2]/div/div[1]') %>%
  html_text()
#Adam Federeci
Goal3 <- fctables_wbpg %>%
  html_nodes(".player_box") %>%
  html_nodes(xpath = '//*[@id="team-players"]/div/div[2]/div[4]/div/div/div[2]/div/div[1]') %>%
  html_text()



Goal1 <- Goal1[ Goal1 == "foo" ] <- 0
Goal3 <- Goal3[ Goal3 == "foo" ] <- 0

CombinedGoals <- c(Goal1, Goal2, Goal3)

CombinedGoalsCleaned <- str_replace_all(CombinedGoals, "[ \t\n\r\v\f]" , "")

CombinedGoalsCleaned <-as.numeric(gsub("([0-9]+).*$", "\\1", CombinedGoals))

TeamGoals <- as.data.frame(CombinedGoalsCleaned)
