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



