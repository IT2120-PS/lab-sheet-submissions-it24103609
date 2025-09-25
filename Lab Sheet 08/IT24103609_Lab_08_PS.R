setwd("C:\\Users\\it24100198\\Desktop\\IT24100198_Lab08")
getwd()

weights <- scan("Exercise - LaptopsWeights.txt", skip=1)

#1
pop_mean <- mean(weights)
pop_sd <- sqrt(mean((weights - pop_mean)^2))

pop_mean
pop_sd

#2
set.seed(123) 
sample_means <- numeric(25)
sample_sds <- numeric(25)
for (i in 1:25) {
  sample_i <- sample(weights, size = 6, replace = TRUE)
  sample_means[i] <- mean(sample_i)
  sample_sds[i] <- sd(sample_i)
}

sample_means
sample_sds

#3
mean_of_sample_means <- mean(sample_means)
sd_of_sample_means <- sd(sample_means)

mean_of_sample_means
sd_of_sample_means
