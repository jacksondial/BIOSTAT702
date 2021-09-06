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






