library(dplyr)
library(ggpubr)
library(multcomp)
library(car)
x<-read.csv("C:\\Users\\aneek\\Documents\\Upwork\\ANOVA\\tips1_120.csv",header=TRUE)
dev.new()
plot(x$tip, ylab="Tip Amount", col="blue")
x_aov <- aov(x$tip~factor(x$day))
summary(x_aov)
dev.new()
ggboxplot(x,x="day",y="tip",color="day",palette = c("#00AFBB", "#E7B800","#76EE00","#EE7621"))
dev.new()
ggline(x, x = "day", y = "tip", color = "day", add = c("mean_se", "dotplot"),palette = c("#00AFBB", "#E7B800","#76EE00","#EE7621"))
dev.new()
plot(x_aov,1)
leveneTest(tip~factor(day),data=x)
dev.new()
plot(x_aov,2)
aov_residuals <- residuals(object = x_aov)
shapiro.test(x = aov_residuals )
x2<-x[-c(13,25,91),]
x_aov_2 <- aov(x2$tip~factor(x2$day))
summary(x_aov_2)
dev.new()
plot(x_aov_2,1)
leveneTest(tip~factor(day),data=x2)
dev.new()
plot(x_aov_2,2)
aov_residuals_2 <- residuals(object = x_aov_2)
shapiro.test(x = aov_residuals_2 )







