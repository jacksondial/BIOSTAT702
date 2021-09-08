#data and summaries r

dat <- c(127,122, 117, 184,143)
dat
data
iris
library(tidyverse)
ggplot(iris, aes(x = Species, y = Sepal.Width))+
  geom_boxplot()
ggplot(iris, aes(x = Species, y = Sepal.Width))+
  geom_violin()

set.seed(11)
#plot(mpg ~ cyl, mtcars)


#SBP among american adults without pre-diabetes or diabetes is N(118, 225). Note that
#SBP >= 140 mmHg is indicative of hypertension and 130 <= SBP < 140 is indicative of
#pre-hypertension

#1
pnorm(130, 118,15)

#2
(pnorm(140, 118,15)) - pnorm(130, 118, 15)

#3
1- pnorm(140, 118, 15)

#4
qnorm(.1, 118, 15)



