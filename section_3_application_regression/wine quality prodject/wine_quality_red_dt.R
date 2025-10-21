# 1. Intro
#------
data = read.table(file.choose(), header=T, sep=";",nrows=-1) # red wine data

data

# Data Structure where data are saved
print(class(data))

# view data in table format
View(data)

# info about data
str(data)


# descriptive statistics
summary(data)


install.packages("rattle")
install.packages("rpart")
library(rpart)
library(rattle)
library(rpart.plot)


tree_model <-rpart(data$quality~., data=data, method="anova")


summary(tree_model)


plot(tree_model)
text(tree_model)
fancyRpartPlot(tree_model)

subset_data <- tree_model$where == 16
data[subset_data, ]
print(n)

data_best = data[data$quality >= 4,]
summary(data_best)
