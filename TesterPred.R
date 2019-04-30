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




######################## C5.0 or Random Forest ####################################

titanicData <- read.csv("C:/Users/afajemisin/Desktop/Modules/Advanced Data Mining H9ADM/Lectures & Labs/Week 4/titanicCleaned.csv")

index <- sample(1:nrow(titanicData), nrow(titanicData) * .75, replace=FALSE)
training <- titanicData[index, ]
testing <- titanicData[-index, ]

set.seed(18)

#install.packages("C50")
library(C50)

cFifty <- C5.0(Survived~., data = training, trials=10) #Boosting: many weak learners to create a strong learner

summary(cFifty)


cFiftyPredict <- predict(cFifty, newdata = testing[,-1])

caret::confusionMatrix(testing$Survived, cFiftyPredict, positive = "Yes")

# Winnowing
cFiftyWinnow <- C5.0(Survived ~ ., data = training, control = C5.0Control(winnow = TRUE))

cFiftyWinnowPredict <- predict(cFiftyWinnow, newdata = testing[,-1])


caret::confusionMatrix(testing$Survived, cFiftyWinnowPredict, positive = "Yes")




