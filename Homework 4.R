#Homework 4

#1
# Assuming age is normally distributed in this population,
# is there evidence at the 0.1 level that the population mean age is less than 60 years?
# Conduct a hypothesis test.

dat <- c(62,62, 68,48,51,57,57,41,62,50,53,34,62,61)

t.test(x = dat, alternative = "less", conf.level = .9, mu = 60)

#yes there is evidence that the true mean is less than 60 according to our hypothesis test

#2
#a
t = -1.8/((sqrt(26.01)/10))
pt(t, 99)
#
#Yes, there is evidence that the population mean percent change in weight is different
#from 0 according to this hypothesis test

#b
xbar <- -1.8
s <- sqrt(26.01)

upper <- xbar + 2.576*s/10
lower <- xbar - 2.576*s/10
lower
upper
#Clinical effectiveness was defined to be a change of -5, and our interval does not
#contain that, so we conclude that the intervention is not clinically effective.

#c
t = (-1.8 + 5) / ( (sqrt(26.01) / 10) )
pt(t, 99, lower.tail = TRUE)

# the test statistic is approximately equal to 6.275, and the p-value is equal to 1.

#d 
# Since clinical effectiveness was defined to be -5, and our sample showed a statistic
# of -1.8, which is not very close to -5 in this situation, we could draw the conclusion
# without doing any testing that the intervention is not effective.


#3
#a
library(pwr)
pwr.norm.test(d = (-4+5) / sqrt(40), n = 50, sig.level = .05, power = NULL,
           alternative = 'two.sided')

# \muA | Power
# -9 | .9940
# -8 | .9184
# -7 | .6088
# -6 | .2010
# -5 | .05
# -4 | .2010
# -3 | .6088
# -2 | .9184
# -1 | .9940
# 

#b
 x <- c(-9:-1)
y <- c(.9940,.9184,.6088,.2010,.05,.2010,.6088,.9184,.9940)
plot(y~ x, pch = 16)

#c
pwr.norm.test(d = (-6+5) / sqrt(40), n = NULL, sig.level = .05, power = .9,
           alternative = 'two.sided')

#she would need a sample size of 421 individuals
