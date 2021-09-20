#section 4

#A research team is interested in SBP among american adults without pre-diabetes
#or diabetes. In a random sample of n = 40, the sample mean was 117.81 mmHg. 
#Let's assume the SBP in this population is normally distributed with 
#standard deviation sigma = 15.

#construct a 95% confidence interval for the true mean
ybar <- 117.81
n <- 40
sigma <- 15
z_{1-p} = z_{1-.05}
z <- qnorm(.95)

ybar + z * (15/sqrt(40))
ybar - z * (15/sqrt(40))

# 
# The birth weight of a random sample of 9 infants  collected, mean = 117, sd = 21
# 
# What is a 90% confidence interval

ybar <- 117
n <- 9
df <- n-1
s <- 21/3

#upper bound
117+qt(.9, df)*21/sqrt(9)
#lower bound
117-qt(.9, df)*21/sqrt(9)

#95%
#upper bound
117+qt(.95, df)*21/sqrt(9)
#lower bound
117-qt(.95, df)*21/sqrt(9)

#99%
#upper bound
117+qt(.99, df)*21/sqrt(9)
#lower bound
117-qt(.99, df)*21/sqrt(9)





















# A research team is interested in SBP among American adults without pre-diabetes
# or diabetes. In a random sample of size 𝑛 = 40 from this population, the average
# SBP was 𝑦̅ = 117.81 mmHg. It is known that SBP in this population is normally
# distributed with standard deviation 𝜎 = 15.

n <- 40
y_bar <- 117.81
sigma <- 15
z_score <- qnorm(.95)

distribution: normal

upper <- y_bar + z_score*sigma/sqrt(n) 
upper
lower <- y_bar - z_score*sigma/sqrt(n)
lower

# 
# A research team wants to investigate patient punctuality in keeping appointments.
# In a random sample of size 𝑛 = 35, they found that patients were 19.7 minutes early
# on average. It is known that punctuality in this population is normally distributed
# with standard deviation 𝜎 = 18 minutes.


n <- 35
y_bar <- 19.7
#distribution: normal
sigma <- 18

z_score <- qnorm(.95)
upper <- y_bar + z_score*sigma/sqrt(n)
upper
lower <- y_bar - z_score*sigma/sqrt(n)
lower
# 
# Example: The birthweights of random sample of 9 infants were collected from Duke
# Regional. The estimated mean ± SD birthweight was 117 ± 21 oz. Assuming the
# birthweights at Duke Regional are normally distributed…
# What is a 90% CI for the true mean, 𝜇?
#   
bounds <- 117+ c(qt(.9, 9-1)*21/3, -qt(.9, 9-1)*21/3)
bounds








# Example: A sample of 16 ten-year-old girls had a mean ± SD weight of 71.5 ± 12
# pounds. Assuming that weight is normally-distributed in this population…

#90% confidence
bounds <- 71.5 + c(qt(.95, 16-1)*12/sqrt(16), - qt(.95, 16-1)*12/sqrt(16))
bounds

#95% confidence
bounds <- 71.5 + c(qt(.975, 16-1)*12/sqrt(16), - qt(.975, 16-1)*12/sqrt(16))
bounds

#99% confidence
bounds <- 71.5 + c(qt(.995, 16-1)*12/sqrt(16), - qt(.995, 16-1)*12/sqrt(16))
bounds


