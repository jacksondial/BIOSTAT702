#Homework 2

x1 <- c(10, 8, 13,9,11,14,6,4,12,7,5)
y1 <- c(8.04,
        6.95,
        7.58,
        8.81,
        8.33,
        9.96,
        7.24,
        4.26,
        10.84,
        4.82,
        5.68
)
mean(x1)
var(x1)
sd(x1)
mean(y1)
var(y1)
sd(y1)

cor(x1,y1)


x2 <- x1
y2 <- c(9.14,
        8.14,
        8.74,
        8.77,
        9.26,
        8.10,
        6.13,
        3.10,
        9.13,
        7.26,
        4.74
)
mean(y2)
var(y2)
sd(y2)

cor(x2,y2)

y3 <- c(7.46,
        6.77,
        12.74,
        7.11,
        7.81,
        8.84,
        6.08,
        5.39,
        8.15,
        6.42,
        5.73
)
mean(y3)
var(y3)
sd(y3)

cor(x2, y3)


x4 <- c(8.0,
        8.0,
        8.0,
        8.0,
        8.0,
        8.0,
        8.0,
        19.0,
        8.0,
        8.0,
        8.0
)
y4 <- c(6.58,
        5.76,
        7.71,
        8.84,
        8.47,
        7.04,
        5.25,
        12.50,
        5.56,
        7.91,
        6.89
)

mean(x4)
var(x4)
sd(x4)
mean(y4)
var(y4)
sd(y4)

cor(x4,y4)

library(tidyverse)

df1 <- as.data.frame(cbind(x1,y1))

ggplot(df1, aes(x1, y1))+
  geom_point()+
  xlim(3,20)+
  ylim(4, 13)


df2 <- as.data.frame(cbind(x2,y2))

ggplot(df2, aes(x2, y2))+
  geom_point()+
  xlim(3,20)+
  ylim(4, 13)

df3 <- as.data.frame(cbind(x2,y3))

ggplot(df3, aes(x2, y3))+
  geom_point()+
  xlim(3,20)+
  ylim(4, 13)

df4 <- as.data.frame(cbind(x4,y4))

ggplot(df4, aes(x4, y4))+
  geom_point()+
  xlim(3,20)+
  ylim(4, 13)
