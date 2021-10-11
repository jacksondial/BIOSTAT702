#section 6

n <- 40
s <- 14.44
q95 <- qchisq(.95, 39) #.95 = 1-(\alpha/2)
q05 <- qchisq(.05, 39) #.05 = \alpha/2

#The confidence interval is:
((n-1)*s^2)/q95
((n-1)*s^2)/q05
