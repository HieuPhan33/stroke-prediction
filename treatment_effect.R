library(ROCR)
library(dplyr)
library(e1071) # svm + naive bayes
library("PerformanceAnalytics")
library(caret)

setwd('E:\\Program\\Working\\stroke-prediction')

df <- read.csv('data\\treatment.csv')
summary(glm.fit <- glm(stroke_in_2018 ~ (TreatmentA +
                                       TreatmentB + TreatmentC + TreatmentD)^4,
                        data = df,family = binomial("logit")))