## Exam Review

# A doctor is interested in determining the population mean age of all his patients. He already
# knows that the ages are normally distributed and that the variance in age of all his patients is 20
# years. The doctor samples 10 patients and finds the sample mean to be 27.

y_bar <- 27
sigma <- sqrt(20)
n <- 10
z <- qnorm(.975)

y_bar + z*sigma/sqrt(n)
y_bar - z*sigma/sqrt(n)

#These are exact because we know the population is normally distributed

#slutsky's theorem only applies if you do not know the variance


# (Repeat Problem 1 with unknown variance) A doctor is interested in determining the
# population mean age of all his patients. He already knows that the ages are normally
# distributed. The doctor samples 10 patients and finds the sample mean to be 27 years with a
# sample variance of 20 years.

y_bar <- 27
sigma <- sqrt(20)
n <- 10
z <- qt(.975, n-1)

y_bar + z*sigma/sqrt(n)
y_bar - z*sigma/sqrt(n)


# A sports team doctor studies players with anterior cruciate ligament (ACL) tears and is
# interested in the average length of time (in days) between the occurrence of the injury and the
# first magnetic resonance imaging (MRI). She samples a sufficiently larger number of 17 players
# with ACL tears and counts the number of days until the MRI, computing the sample mean ± SD
# as 13.29 ± 8.89.

n <- 17
ybar <- 13.29
sd <- 8.89
z <- qnorm(.975)

ybar + z*sd/sqrt(n)
ybar - z*sd/sqrt(n)

#approximate by CLT and slutskys

# In a population of Hispanic women in San Antonio, Texas, of interest was the prevalence of
# women with impaired fasting glucose (IFG). In a sample of 301 of these women, 24 had IFG.

xbar <- 24/301
q <- 1-xbar

var <- xbar*q
z <- qnorm(.975)

xbar + z*sqrt(var)/sqrt(301)
xbar - z*sqrt(var)/sqrt(301)

#approximate by CLT and slutskys

#This^^ is a bernoulli distribution (discrete) therefore we compute the mean to be the number of 
#successes divided by the total number of trials. The variance is p*q and p = 1-q.

