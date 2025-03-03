
# Task 1
convert_farenheit_to_kelvin <- function(F) {
  return ((F - 32) * (5/9)) + 273.15
}

print(convert_farenheit_to_kelvin(100))

# Task 2
# (a) Compute mean and median of the population.
data <- c(8, 9, 5, 19, 150, 7, 9, 1, 13, 15)
# data <- c(8, 9, 5, 19, 7, 9, 1, 13, 15)

mean(data)

median(data)

quantile(data)
quantile(data, 0.5)
quantile(data, 0.63)

sd(data) # calculates the standard deviation

# (b) Do a simulation when you in 100 repetitions choose a simple random sample 
# of size 5. Write your sample data into a matrix. For every sample compute 
# sample mean and show the results of the means in a histogram. Compute mean 
# of the sample means.
n <- 5
m <- 100

y <- matrix(nrow=m,ncol=n)
sample_mean <- rep(0,m)


for (i in 1:m) {
  y[i,]=sample(data,n,replace=FALSE)
  sample_mean[i]=mean(y[i,])
}

hist(sample_mean)

# Task 3
library(ggplot2)

crops <- as.data.frame(crops)
means <- sapply(crops[1,], mean, na.rm = TRUE)

