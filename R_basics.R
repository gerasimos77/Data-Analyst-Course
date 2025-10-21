# Βασικές Πράξεις
#-------------------------

# Πρόσθεση
print(1+2)

# Αφαίρεση
print(2-2)

# Πολλαπλασιασμός
print(8*2)

# Διαίρεση
print(2/2)

# Δύναμη
print(2^4)

# Τετραγωνική ρίζα
print(sqrt(64))
#------------------------


# Μεταβλητές - Θέσεις Μνήμης
#---------------------------
x <- 8

y = -3

z <- 6-3 # μπορούμε να αναθέσουμε και αποτελέσματα πράξεων σε μεταβλητές

text_1 <- "Γεράσιμος"
text_1 <- "Μαρία"

text_2 <- "John"

bool_1 <- TRUE

bool_2 <- FALSE

print(text_1)
print(typeof(bool_2)) # typeof() function -> τύπος δεδομένων της μεταβλητής
#--------------------------------------------------------------------------

# Λογικές Πράξεις
#----------------
print(TRUE & TRUE)
print(TRUE & FALSE)
print(FALSE & FALSE)

print(TRUE | TRUE)
print(TRUE | FALSE)
print(FALSE | FALSE)

x<-12
y<-13

print(x>13)
print(x<3 | x>y)
print(x<3 & x>y)
print(x >= 10)
#--------------

# Dataframes
#-----------
df <- data.frame(
  Home = c("Home 1", "Home 2", "Home 3", "Home 4"), 
  Age = c(25, 5, 4, 52),
  Bedrooms = c(2, 4, 4, 2),
  price = c(100000, 200000, 220000, 80000)
)

print(df)

print(df$Age)
print(df$Age[3])

print(df$Bedrooms)
print(df$Bedrooms[1])

print(df[2,1])

dim(df)
nrow(df)
ncol(df)
#-------------


# Φόρτωση εξωτερικών δεδομένων csv
#---------------------------------
# Automatically set working directory to current R script location
if (requireNamespace("rstudioapi", quietly = TRUE)) {
  setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
  message("Working directory set to: ", getwd())
} else {
  stop("Please install 'rstudioapi' package to auto-detect script location.")
}


df_1 <-read.csv('experience.csv')

print(head(df_1,5))
#-----------------------------------

# Κεντρική Τάση
#--------------

mean (df_1$Experience)

median(df_1$Experience)
#-----------------------




# Διασπορά
#----------

max(df_1$Experience)
min(df_1$Experience)

max(df_1$Experience) - min(df_1$Experience)

var(df_1$Experience)
sd(df_1$Experience)
var(df_1$Experience)^(1/2)
#---------------------------


# Θέση - Τεταρτημόρια
#---------------------
q1 <- quantile(df_1$Experience, 0.25)
q2 <- quantile(df_1$Experience, 0.5)
q3 <- quantile(df_1$Experience, 0.75)

print(q1)
print(q2)
print(q3)


print(quantile(df_1$Experience, 0.9))
print(quantile(df_1$Experience, 0.95))
print(quantile(df_1$Experience, 0.99))
#--------------------



# Data Visualization
#-------------------

# Εγκατάσταση
install.packages("plotly")

# Φόρτωση
library(plotly)



# Histogram 
plot_ly(x = ~df_1$Experience, type = 'histogram')


plot_ly(df_1, x = ~df_1$Role, y = ~df_1$Prior.Experience, type = 'bar')

df <- df[-1,]
df <- df[-1,]
plot_ly(df, x = ~df$Age, y = ~df$price, type = 'scatter', mode = 'lines')


plot_ly(df, x = ~df$Age, y = ~df$Bedrooms, type = 'scatter', mode = 'markers')

#-------------------

      