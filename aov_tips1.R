x<-read.csv("C:\\Users\\aneek\\Documents\\Upwork\\ANOVA\\tips1_120.csv",header=TRUE)
x_aov <- aov(x$tip~factor(x$day))
summary(x_aov)