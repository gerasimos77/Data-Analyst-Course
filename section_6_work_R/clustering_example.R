
# Data Preparation
#------------------

data = read.table("C:/Users/varvo/Desktop/DYPA/section_6_work_R/Mall_Customers.csv", sep=",", header=T)


colnames(data)

colnames(data) = c("ID","Gender", "Age", "Income", "SpendingScore")

summary(data)

str(data)

table(as.data.frame(data$Gender))

encoded <- model.matrix(~ Gender - 1, data = data)


data_encoded <- cbind(data, encoded)

data_encoded <- data_encoded[, -c(1,2, 7)]


scaled_data<- scale(data_encoded[,-4])
scaled_data <- cbind(scaled_data, encoded[,1])
colnames(scaled_data) = c("Age", "Income", "SpendingScore", "Female")


plot(data$Income, data$Age)
plot(data$Income, data$SpendingScore)

boxplot(data$SpendingScore)

boxplot(SpendingScore ~ Gender, data = data,
       main = "Spending Score by Gender",
       xlab = "Gender",
       ylab = "Spending Score",
       col = c("pink", "lightblue"))

hist(data$SpendingScore)
hist(data$SpendingScore[data$Gender=='Male'])
hist(data$SpendingScore[data$Gender=='Female'])
hist(data$Income)
#---------------

# Clustering
#------------

plot(data$Income, data$SpendingScore, pch=19, col="red")

# k-Means
install.packages("NbClust")
library(NbClust)

install.packages("Rtools")
rs.nb <- NbClust(scaled_data, min.nc=2, max.nc=10, method="complete")

model1<-kmeans(scaled_data, 5)

colnames(data_encoded) = c("Age", "Income", "SpendingScore", "Female")

plot(data_encoded$Income, data_encoded$SpendingScore, 
     col = model1$cluster,        
     pch = 19,                
     main = "k-Means Clustering Results")

model1<-kmeans(scaled_data[,-4], 5)

plot(data_encoded$Income, data_encoded$SpendingScore, 
     col = model1$cluster,        
     pch = 19,                
     main = "k-Means Clustering Results")

model1<-kmeans(data_encoded, 5)

plot(data_encoded$Income, data_encoded$SpendingScore, 
     col = model1$cluster,        
     pch = 19,                
     main = "k-Means Clustering Results")
#------------




