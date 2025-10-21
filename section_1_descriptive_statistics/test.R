
x <- 3
y=-1


x <- 6-3

z <- "Hello!"

x1<-FALSE
x2 <- TRUE

print(FALSE & TRUE)
print(TRUE & TRUE)


print(FALSE | TRUE)

print(TRUE | FALSE | FALSE)


x<-3
y<-4

print(x>y)
print(y>x)

print(x >= y)
print(y >= x)
print(x <= y)

z = -1


print((x+y) >= 7)

print(((x+y) >= 7) | (x>3))

i <- 1

while (i <= 10) {
  print(i)
  i <- i + 1
}

while (i<=10) {
  print(i)
  i <- i +2
}

i <- 1

for (i in  1:10){
  print(i)
}




for (i in  seq(1, 10, 0.5)){
  print(i)
}

seq(1, 10, 0.5)



typeof(c(1,2,3))

list1<- c(10, 8, 10, 0, 5)

x <- 3L

typeof(x)

x<- "Hello"
typeof(x)

typeof(3L)

df <- data.frame(
  Home = c("Home 1", "Home 2", "Home 3", "Home 4"),
  Age = c(25, 5, 4, 52),
  Bedrooms = c(2,4,4,2),
  price = c(100000, 200000, 220000, 80000)
)

df

df$Bedrooms
df$price

df$Bedrooms[2]
df$Home[3]

df[2, 2]
df[3, 4]

df[df$price >100000, c(2,4)]
df[df$price <=100000,c(1, 4)]

df[df$price <=100000,c("Home", "price")]

df


head(df[,c(1,2)], 2)
colnames(df)

df_1 <- read.csv("C:/Users/varvo/Desktop/DYPA/section_1_descriptive_statistics/experience.csv")
colnames(df_1)

print(df_1, 5)

table(df_1$Prior.Experience)
table(df_1$Role)

table(df_1$Role)


df_1

mean(df_1$Experience)
median(df_1$Experience)


df_2 <- data.frame(
  salaries_gr = c(1000, 1200, 800, 920, 1800),
  salaries_ger= c(3000, 1850, 3100, 2400, 2200)
)

df_2

print("Greece:")
mean(df_2$salaries_gr)
median(df_2$salaries_gr)
#max(df_2$salaries_gr)
#min(df_2$salaries_gr)
range_gr = max(df_2$salaries_gr) -min(df_2$salaries_gr) 
range_gr
var(df_2$salaries_gr)
sd(df_2$salaries_gr)

print("Germany:")
mean(df_2$salaries_ger)
median(df_2$salaries_ger)
range_ger = max(df_2$salaries_ger) -min(df_2$salaries_ger) 
range_ger
sd(df_2$salaries_ger)

q1 = quantile(df_2$salaries_ger, 0.25)
q2 = quantile(df_2$salaries_ger, 0.5)
q3 = quantile(df_2$salaries_ger, 0.75)
median(df_2$salaries_ger)


df <- data.frame(
  Home = c("Home 1", "Home 2", "Home 3", "Home 4", "Home 5"),
  Age = c(25, 5, 4, 52, 4),
  Bedrooms = c(2,4,4,2, 2),
  price = c(100000, 200000, 220000, 80000, 190000)
)
df

hist(df$Age)

df_1

hist(df_1$Experience)



df <- data.frame(
  Home = c("Home 1", "Home 2", "Home 3", "Home 4", "Home 5"),
  Age = c(25, 5, 4, 52, 4),
  Bedrooms = c(2,4,4,2, 2),
  price = c(100000, 200000, 220000, 80000, 190000),
  type = c("Μονοκατοικία", "Μονοκατοικία", "Διαμέρισμα","Διαμέρισμα", "Διαμέρισμα")
)
df

# Εγκατάσταση
install.packages("plotly")

# Φόρτωση
library(plotly)



plot_ly(df_1, x = ~df_1$Role, y = ~df_1$Prior.Experience, type = 'bar')


df_2 <- data.frame(
  date = c("2020", "2021", "2022", "2023", "2024"),
  salaries_gr = c(1000, 1200, 1100, 920, 1800),
  salaries_ger= c(3000, 2850, 3100, 2400, 2200)
)

df_2


plot(df_2$date, df_2$salaries_gr, col="orange", type="l", 
     ylim = range(c(df_2$salaries_gr, df_2$salaries_ger)))

lines(df_2$date, df_2$salaries_ger, col="blue", type="l")

legend("topright", legend=c("Greece", "Germany"), col=c("orange", "blue"), lty=1)

#plot(df_2$date,df_2$salaries_ger, col="red",type='l')


df


plot(df$Age, df$Bedrooms, col="blue")
