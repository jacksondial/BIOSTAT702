#Notes for section 8

library(MASS)

Arm <- c(rep("A", 4), rep("B", 4))
Score <- c(2,1,7,12,15,5,9,14)
df <- as.data.frame(cbind(Arm,Score))

df$rank <- rank(df$Score)
df$Score <- as.numeric(df$Score)
df

#Function from Tina
getW <- function(x){
  n <- length(x); sum(x)-n*(n+1)/2
  } # Computes W
tapply(df$rank, df$Arm, getW)

wilcox.test(x=df$Score[df$Arm=="A"], y=df$Score[df$Arm=="B"], alternative="less",
            mu=0, paired=F, exact=T, correct=F)

wilcox.test(Score ~ Arm, alternative = "less", mu = 0, paired = F, exact = T, correct = F)




