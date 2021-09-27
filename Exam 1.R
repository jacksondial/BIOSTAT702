## Exam

#3c
xbar <- 17/25
q <- 1-xbar
var <- xbar*q
z <- qnorm(.975)

xbar + z*sqrt(var)/sqrt(25)
xbar - z*sqrt(var)/sqrt(25)


#4d
#90
xbar <- -1.8
var <- 26.01
z <- qnorm(.95)
n <- 100

xbar + z*sqrt(var)/sqrt(n)
xbar - z*sqrt(var)/sqrt(n)

#95
z <- qnorm(.975)
xbar + z*sqrt(var)/sqrt(n)
xbar - z*sqrt(var)/sqrt(n)

#99
z <- qnorm(.995)
xbar + z*sqrt(var)/sqrt(n)
xbar - z*sqrt(var)/sqrt(n)




#5c
pt(-3.53, 99)
2* pt(-3.53,99)


qt(.85, 99)
#double checking my thinking is correct
pt(1.041891,99)
