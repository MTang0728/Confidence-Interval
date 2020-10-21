## construct a normal distribution 
# create a sequence of number from 90 to 100
x <- seq(90, 110, by = 0.1)
# find PDF of x
y <- dnorm(x, mean = 100, sd = 2)
# plot the normal line
plot(x, y, type = 'l', lwd = 1)

## demostrate sampling variability
# generate 10000 values from a standard normal distribution
population <- rnorm(10000,0,1)
# observe the first 10 values
population[1:10]
# create a histogram
hist(population,
     main="Histogram of Population Values",
     xlab="Population Values",
     col="light gray")
legend('topleft', 
       legend = paste('SD = ', round(sd(population), 2)))

set.seed(40)
# random sample 4 samples of size 30
s30 <- NULL 
for (i in 1:4) {
  s30 <- cbind(s30, sample(population,30))
  colnames(s30)[i] <- paste("sample", i, sep="") }
s30 <- data.frame(s30)
# look at the summary of 10 samples
summary(s30)
# Plot in 2 by 2 array
par(mfrow=c(2,2))           

hist(s30$sample1,
     main="Sample 1",
     xlab="Sample Values",
     col="light gray")
legend("topleft",
       legend=c(paste("Mean =",round(mean(s30$sample1),2)),
                paste("SD =",round(sd(s30$sample1),2))))

hist(s30$sample2,
     main="Sample 2",
     xlab="Sample Values",
     col="light gray")
legend("topleft",
       legend=c(paste("Mean =",round(mean(s30$sample2),2)),
                paste("SD =",round(sd(s30$sample2),2))))

hist(s30$sample3,
     main="Sample 3",
     xlab="Sample Values",
     col="light gray")
legend("topleft",
       legend=c(paste("Mean =",round(mean(s30$sample3),2)),
                paste("SD =",round(sd(s30$sample3),2))))

hist(s30$sample4,
     main="Sample 4",
     xlab="Sample Values",
     col="light gray")
legend("topleft",
       legend=c(paste("Mean =",round(mean(s30$sample4),2)),
                paste("SD =",round(sd(s30$sample4),2))))
