#homework 3

#3
#a
qnorm(.975)
qt(.975,10)
qt(.975,50)
qt(.975,100)
qt(.975,500)

#b
qt(.975,29)

#4
#a
# Suppose the number of apneic episodes per hour for individuals being treated with an 
# experimental drug for sleep apnea is N(1,0.7).
# What is the probability that a person chosen at random from this population will 
# have more than 3 episodes per hour?

mu <- 1
s <- sqrt(.7)
xbar <- 3
(xbar-mu)/s
pnorm((xbar-mu)/s,mu,s,lower.tail = F)


#b
# What is the probability that a person chosen at random will 
# have between 1 and 3 episodes per hour?
pnorm((xbar-mu)/s,mu,s,lower.tail = T)-.5

#c
#What is the 11th percentile of apneic episodes per hour for this distribution?
qnorm(.11,1,sqrt(.7))







