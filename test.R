library(qgraph)
library(bootnet)
library(NetworkComparisonTest)
library(networktools)
getwd()
setwd("C:/R/Breast Cancer")
data1<-read.csv("Breast Cancer.csv")
head(data1)
set.seed(1)
fit_obj<-mgm(data1,type = c(rep("g",6)),level = c(rep("1",6)),
             ruleReg = "OR",k=2)
mygroups=list("述情障碍"=c(1:3),"心理一致感"=c(4:6)
mynames<-c("识别情感障碍","描述情感障碍","外向性思维",
           "可理解感","可控制感","意义感")
plot(mynetwork, layout="spring", vsize=6, border.color="black",
             groups=mygroups, legend=T, 
             nodeNames=mynames,legend.cex = 0.7,
             color=c('#E31A1CFF','#8BD646FF')) 