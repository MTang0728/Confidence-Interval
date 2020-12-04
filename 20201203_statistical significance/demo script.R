## construct a normal distribution 
# create a sequence of number from 1.5 to 2.5
x <- seq(1.5, 2.5, by = 0.01)
# mean
mu = 2
# standard error (standard deviation of sample mean)
se = 1/sqrt(50)
# find PDF of x
y <- dnorm(x, mean = mu, sd = se)
# plot the normal line
plot(x, y, type = 'l', lwd = 1)

# calculate p-value
pnorm(1.6, mu, se) + (1- pnorm(2.4, mu, se))
