
# Load Data
#------------
install.packages("datarium")
library(datarium)

data('marketing',package='datarium')
head(marketing,5)
#--------------

# EDA
#-----
summary(marketing)

hist(marketing$sales)
hist(marketing$youtube)
hist(marketing$facebook)
hist(marketing$newspaper)

cor_table = cor(marketing)

plot(marketing$youtube, marketing$sales)
plot(marketing$newspaper, marketing$sales)
plot(marketing$facebook, marketing$sales)

plot(marketing$youtube, marketing$sales)
plot(marketing$facebook, marketing$sales)
plot(marketing$newspaper, marketing$sales)

sum(is.na(marketing))

#-----


# Regression
#----------

model1 <- lm(sales~youtube, data=marketing)
summary(model1)

# trial
#------
model4 <- lm(sales~facebook, data=marketing)
summary(model4)

model5 <- lm(sales~newspaper, data=marketing)
summary(model5)
#--------------

model2<-lm(sales~., data=marketing)
summary(model2)

model3<-lm(sales~youtube+facebook, data=marketing)
summary(model3)

plot(marketing$youtube, marketing$sales,
     xlab = "Youtube",
     ylab = "Sales",
     pch = 19,        
     col = "blue")

abline(model1, col = "red", lwd = 2)

plot(marketing$facebook, marketing$sales,
     xlab = "Facebook",
     ylab = "Sales",
     pch = 19,        
     col = "blue")

abline(model4, col = "red", lwd = 2)

plot(marketing$newspaper, marketing$sales,
     xlab = "Newspaper",
     ylab = "Sales",
     pch = 19,        
     col = "blue")

abline(model5, col = "red", lwd = 2)


install.packages("scatterplot3d")
library(scatterplot3d)


s3d <- scatterplot3d(marketing$youtube, marketing$facebook, marketing$sales,
                     pch = 19,
                     color = "blue",
                     main = "3D Linear Regression")

# Add regression plane
s3d$plane3d(model3, lty = "solid", col = "red", lwd = 2)

