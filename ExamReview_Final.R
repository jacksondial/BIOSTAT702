#Final Review

#regression

mylm <- lm(mpg ~ disp, data = mtcars)
summary(mylm)

plot(mpg ~ disp, data =mtcars)


mylm2 <- lm(Sepal.Length ~ Petal.Length + Species, data = iris)
summary(mylm2)


#Mcnemar's test

dat <- data.frame(R=c("Y", "Y", "N", "N", "Y", "N", "Y", "N", "N", "Y", "N",
                      "N", "Y", "N", "Y", "N", "N", rep("Y",3)), P=c(rep("Y",3), "N",
                                                                     rep("Y",3), "N", "N", rep("Y",5), "N", rep("Y",5)))
Oij <- table(dat$R, dat$P)
nn <- 8
data.frame(K=0:nn, PDF=dbinom(0:nn, nn, 0.5))

XX <- min(Oij[1,2], Oij[2,1])
XX
2*pbinom(XX, nn, 0.5) 

#Or just use the function:

mcnemar.test(Oij, correct = TRUE)

## Another Mcnemar

Oij <- matrix(c(40, 10, 33, 7), nrow = 2)
Oij
mcnemar.test(Oij, correct = TRUE)

#Interpretations of measures of association start on 10-17

## Chi squared example 10-40

oddsratio.wald(Oij, rev = "neither")

Oij <- matrix(c(180, 936, 215, 1421), byrow = TRUE, nrow = 2)
Oij
chisq.test(Oij, correct = FALSE)
fisher.test(Oij)

# the MH test answers the question: "is baldness associated with MI after controlling for age?"

library(abind)
S1 <- matrix(c(49,71,280,639), nrow=2)
S2 <- matrix(c(131,144,656,782), nrow=2)
mantelhaen.test(abind(S1,S2, along=3))

# 
# The Mantel-Haenszel estimate 𝜃𝑀𝐻 is developed assuming that the 𝑂𝑅s are the same
# for each stratum. If the 𝑂𝑅s are very different across strata, it doesn’t make sense to
# compute a common odds ratio. The Breslow-Day test can be used to test
# homogeneity of the strata odds ratios, i.e. 
# Rejection gives evidence against assuming a common odds ratio.


# Give one drawback to powering off a one-sided test rather than a two-sided test

# If we power off a one-sided test, we basically ignore the other side of the hypothesized null 
# value. Our power will also be higher than if we used a two-sided test, which could lead to
# incorrect sample size calculations in the long run if we find the one sided test to be
# incorrect for our experiment.





