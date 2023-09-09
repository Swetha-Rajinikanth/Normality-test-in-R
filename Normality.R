data<-read.csv(file.choose(),header=T)
data

##VISUAL TECHNIQUE##

hist(data$product.1,main = "NORMALITY TEST",col = "white",border="black")
hist(data$product.2,main = "NORMALITY TEST",col = "blue",border="black")

qqnorm(data$product.1,main = "NORMALITY TEST",col = "green")
qqline(data$product.1,col = "black")
qqnorm(data$product.2,main = "NORMALITY TEST",col = "green")
qqline(data$product.2,col = "black")


##STATISTICAL TECHNIQUES##

##Null Hypothesis(H0): The data follows a normal distribution.##
##Alternative Hypothesis(H1): The data does not follow a normal distribution.##
SW.TEST.1<- shapiro.test(data$product.1)
SW.TEST.1
SW.TEST.2<- shapiro.test(data$product.2)
SW.TEST.2

##Null Hypothesis(H0): The data follows a normal distribution.##
##Alternative Hypothesis(H1): The data does not follow a normal distribution.##
KS.TEST.1<- ks.test(data$product.1,"pnorm")
KS.TEST.1
KS.TEST.2<- ks.test(data$product.2,"pnorm")
KS.TEST.2