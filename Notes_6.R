#section 6

n <- 40
s <- 14.44
q95 <- qchisq(.95, 39) #.95 = 1-(\alpha/2)
q05 <- qchisq(.05, 39) #.05 = \alpha/2

#The confidence interval is:
((n-1)*s^2)/q95
((n-1)*s^2)/q05


#investigate variability of punctuality, n = 35, mean +- sd = 19.7 +- 11.4

#At the .05 level, is the population sd lower than 15?

dat <- c(11, 18, 28, 10, 17, 23, 31, 25, 11, 2, -5, 29, 14, 38, 8, 30, 22, 33,
         29, 26, 12, 16, 29, 19,-12, 21, 27, 19, 31, 19, 24, 24, 33, 0, 27)

n <- length(dat)
s <- sd(dat)
sigma <- 15


ts <- (n-1)*s^2 / sigma^2

pchisq(ts,n-1, lower.tail = TRUE)

#step 1

#We assume the patient punctuality is normally distributed with unknown mean and variance.
par(mfrow=c(1,3))
hist(dat)
boxplot(dat)
library(car)
qqPlot(dat)
par(mfrow = c(1,1))

#confidence interval:

#(0, sqrt[(n-1)*s^2]/Chi^2_alpha)

qchisq(0.05, df = n-1) #21.664
sqrt((35-1)*11.4^2 / 21.664)

(0,14.28)



#want to construct a confidence around the unknown rate of bladder cancer death among
#workers aged 40-84.

#the rate of interest is the number of deaths per 10 years, this is why we are using 
#poisson process.

#approximate:
#(sqrt(y) - z_{1-\alpha / 2}*sqrt(1/4), sqrt(y) + z_{1-\alpha / 2}*sqrt(1/4) )^2
#(sqrt(21)- 1.96/2, sqrt(21) + 1.96/2)^2

#exact:
#(1/2 * chi^2_{0.05,42}, 1/2 * chi^2_{.95,44})




