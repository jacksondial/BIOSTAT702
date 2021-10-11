#Notes_5
# 
# Retrospective analysis of 782 patients, 248 of them reported previous MI. 
# 
# Is there evidence at the .05 level to suggest that the population proportion of patients with
# a previous MI is different from 35%?

Y_i ~ Bern(pi)

#rule of thumb is satisfied, we can use Slutsky's and CLT to perform a hypothesis test
782*(.35)*(1-.35) > 5

#H_0: pi = .35
#H_a: pi \neq .35

Z <- (p_hat - pi_0)/ sqrt((pi_0*(1-pi_0))/n) 
#~ N(0,1) under H_0

p_hat <- 248/782
pi_0 <- .35
n <- 782

###
#Should get -1.93 for Z
###




# 
# Population sd of SBP among pre-diabetics was known to be 16. n = 40, \alpha = .05. 
# H_0: \mu <= 118
# H_a: \mu > 118.
# Z = (Y_bar - \mu_0) / (\sigma/sqrt(n))


##### 
# Sample Size Calculation
#####

#Interested in SBP among pre-diabetics
#assume SBP is approximately normally distributed with unknown \mu & \sigma^2

#set \alpha = 0.05
# H_0: \mu <= 118, H_a: \mu > 118
#want to have enough power to detect a difference of 130

# Power is the probability of rejecting the null when the alternative is true.
# We want high power to detect the alternative, so we choose 90%
# 
# Variance estimation:
#   1) previous studies
#   2) Pilot Study
#   3) Range of population
# 
# We are using an estimate for sigma which typically means we would use a t
# distribution. But the t distribution changes as the sampel size changes.
# To simplify things, we will assume sigma = 14.44 and base sample size calculations
# on the normal distribution
#
# Note: The final test of the study will still be a t test

library(pwr)
pwr.norm.test(d = (125-118) / 116, n = 40, sig.level = .05, power = NULL,
              alternative = 'greater')
#this is doing the power calculation, now if I wanted to do the sample size
#calculation, I would set n = NULL and power = whatever it needs to be: .9, .85 etc

pwr.t.test(d = (125-118) / 116, n = 40, sig.level = .05, power = NULL,
              alternative = 'greater')

# what sample size do we need for 90% power to detect an alt of .4 if the null
# proportion is .35 and alpha = .05?









