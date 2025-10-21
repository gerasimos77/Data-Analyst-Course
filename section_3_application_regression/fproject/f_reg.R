

# Import Data
install.packages("readxl")
library(readxl)

data <- read_excel(file.choose())

summary(data)



# Inspect

plot(data$MinutesPlayed, data$GoalsPer90)
plot(data$PassAccuracy, data$GoalsPer90)
plot(data$ShotsOnTarget, data$GoalsPer90)


hist(data$GoalsPer90)

hist(data$PassAccuracy)


boxplot(data$GoalsPer90)


data$GoalsPer90[data$GoalsPer90 >= 3]


summary(data$GoalsPer90)


data_clean <- data[data$GoalsPer90 <= 3.5,]



plot(data_clean$MinutesPlayed, data_clean$GoalsPer90)
plot(data_clean$PassAccuracy, data_clean$GoalsPer90)
plot(data_clean$ShotsOnTarget, data_clean$GoalsPer90)


hist(data_clean$GoalsPer90)

hist(data_clean$PassAccuracy)


boxplot(data_clean$GoalsPer90)



# Multiple Linear Regression

model_1 = lm(data_clean$GoalsPer90~., data=data_clean)
summary(model_1)



# Second Trial

model_2 = lm(data_clean$GoalsPer90~data_clean$MinutesPlayed+data_clean$ShotsOnTarget, data=data_clean)
summary(model_2)
