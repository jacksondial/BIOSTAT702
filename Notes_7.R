#Section 7

# A random sample of size 𝑛1 = 60 former smokers was taken and mean ± SD BMI
# was 27.81 ± 5.44.
# A random sample of size 𝑛2 = 45 current smokers was taken and mean ± SD BMI
# was 24.10 ±3.54.


ybar1 <- 27.81
sd1 <- 5.44
n1 <- 60

ybar2 <- 24.1
sd2 <- 3.54
n2 <- 45


#95 confidence interval:

(ybar1 - ybar2) + 1.96*sqrt( (sd1/n1) + (sd2/n2) )
(ybar1 - ybar2) - 1.96*sqrt( (sd1/n1) + (sd2/n2) )



#90 confidence interval:

(ybar1 - ybar2) + 1.645*sqrt( (sd1/n1) + (sd2/n2) )
(ybar1 - ybar2) - 1.645*sqrt( (sd1/n1) + (sd2/n2) )


#sattherwaite df:
  
v1 <- sd1^2 / n1; v2 <- sd2^2 / n2
nu <- (v1+v2)^2 / (v1^2/ (n1-1) + v2^2 / (n2-1))



#practice f distribution


qf(.05, 3, 5)

1/qf(.95,5,3)

#Find F_30,25,.01
qf(.01,30,25)

#Find: 𝑝, if 𝐹10,4,𝑝 = 0.1668. 
pf(.1668, 10,4)


# We collect a sample of 𝑛1 = 222 females and determine that 78 of them have prediabetes. 
# We collect a sample of 𝑛2 = 121 males and determine that 47 have prediabetes. 
# A 99% CI for the difference in proportion of females and males who have
# pre-diabetes is given below.

n1 <- 222
p1 <- 78/222
n2 <- 121
p2 <- 47/121
zcrit <- qnorm(1-0.01/2)
p1-p2 + c(-zcrit, zcrit) * sqrt(p1*(1-p1) / n1 + p2*(1-p2)/n2)



zcrit <- qnorm(1-.1/2)
ddiff <- 5
sig1 <- sqrt(35)
sig2 <- sqrt(38)
n1 <- n2 <- 40

bbeta <- pnorm(zcrit - ddiff / sqrt(sig1^2/n1 + sig2^2 / n2)) -
  pnorm(-zcrit - ddiff / sqrt(sig1^2/n1 + sig2^2 / n2))
#this is the type II error probability^^^

power <- 1- bbeta
power
# When doing power/sample size calculations we must have:
# Desired difference
# type I error
# sample sizes
# estimated variance
# hypotheses

#Check slide 7-47 & 7-48 for R functions for two sample tests

