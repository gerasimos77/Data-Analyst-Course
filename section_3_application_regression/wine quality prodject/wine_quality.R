

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


# view wines with quality over 8
data[data$quality >=8,]
View(data[data$quality >=8,])

#-------

# Simple Linear Regression
#------------------

cor_table = cor(data)

cor(data$alcohol, data$quality)



# regress Y (quality) against X (alcohol)
x<-data$alcohol
y<-data$quality

plot(x,y)

best_wines <- data[data$quality==8, c(11,12)]
best_wines


model <- lm(y~x, data = data)

summary(model)




x_new <- c(9.4, 9.6)
y_hat <- predict(model, data.frame(x=x_new))
y_hat
#------------------






# Multiple Linear Regression
#------------------



model2 <- lm(quality~., data = data)

summary(model2)




x_new <- c(9.4, 9.6)
y_hat2 <- predict(model2, data.frame(x=x_new))
y_hat2

#----------------------------

model3 <- lm(quality~ alcohol + sulphates + volatile.acidity, data = data)

summary(model3)








#------------------
