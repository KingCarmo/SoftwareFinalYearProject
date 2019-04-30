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
Value2019 <- as.double(CurrentValue, digits=2)
Value2019 <- as.data.frame(Value2019)
Value2018 <- as.double(PreviousValue, digits=2)
Value2018 <- as.double(Value2018)
NorwichCity <- data.frame(PlayerName, Value2017)
NorwichCity <- cbind(NorwichCity, Value2019, Value2018)

for (i in 1:nrow(NorwichCity)) {
  
  if(NorwichCity[i , "Value2019"] < 10)
    NorwichCity$Value2019[i] <- NorwichCity[i , "Value2019"]*1000000
  
  else
    NorwichCity$Value2019[i] <- NorwichCity[i , "Value2019"]*1000

  
}

for (i in 1:nrow(NorwichCity)) {
  
  if(NorwichCity[i , "Value2018"] < 10)
    NorwichCity$Value2018[i] <- NorwichCity[i , "Value2018"]*1000000
  
  else
    NorwichCity$Value2018[i] <- NorwichCity[i , "Value2018"]*1000
  
  
}

##################### Linear Regression ############################

#install.packages("ISLR")
library(ISLR)
Norwich <- Norwich
?Norwich
str(Norwich)

# check for missing data
sapply(Norwich, FUN=function(x) {sum(is.na(x))})

# Model Evaluation

# Going with our holdout set
# pick 75% of row indexes (i.e. row numbers)
index <- sample(1:nrow(Norwich), nrow(Norwich)*.75, replace=FALSE)

#those chosen, put in the training data frame
training <- Norwich[index, ]

#those not chosen, put in the testing data frame
testing <- Norwich[-index, ]


getPerformanceData <- function(model, testingNorwich) 
{
  # instrument the predictions
  yHat <- predict(model, newdata=testingNorwich)
  
  # calculate the measures of test performance
  MAE <- mean(abs(testing$`2019 Value` - yHat), na.rm = TRUE)
  MSE <- mean((testing$`2019 Value` - yHat)^2, na.rm = TRUE)
  RMSE <- sqrt(MSE)
  MAPE <- mean(abs((testing$`2019 Value` - yHat)/testing$`2019 Value`), na.rm = TRUE)
  
  return(data.frame(MAE, MSE, RMSE, MAPE))
}

# Multiple Linear Regression
# Y = beta_0 + beta_1 x1 + ... + beta_n xn + err
# balance = beta_0 + beta_1 x limit + beta_2 x income + err

#fit <- lm(testing$`2019 Value` ~ testing$`2018 Value` + testing$`2017 Value` + testing$`2016 Value`, data = Norwich)
#getPerformanceData(fit, testing)


LIRmodel <- lm(`2019 Value` ~ `2018 Value` + `2017 Value` + `2016 Value` + `2015 Value` , data=testing)
getPerformanceData(LIRmodel, testing)


summary(LIRmodel)
predict(LIRmodel)

