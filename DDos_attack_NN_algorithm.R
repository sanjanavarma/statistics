library(funModeling) 
library(tidyverse) 
library(ROCR)
library(Hmisc)
library("ggpubr")
library('fastDummies')
library(caTools)

dataset = read.csv('D:/Parvathi_Sanjana_IIP/dataset_sdn.csv')

dataset <- na.omit(dataset)
dataset <- dataset[,c('switch','src','dst','Protocol','port_no','label')]
dataset <- dataset[1:10000,]

dataset
table(dataset$switch)
table(dataset$src)
table(dataset$dst)
table(dataset$Protocol)
table(dataset$port_no)
table(dataset$label)
library(caret)


dataf <- dummy_cols(dataset, select_columns = c('src', 'dst', 'Protocol','switch','port_no'))
dataf <- dataf
dataf


drop <- c("src","dst","Protocol","port_no","switch")
df = dataf[,!(names(dataf) %in% drop)]
df



set.seed(123)
split = sample.split(df$label, SplitRatio = 0.8)
split
training_data = subset(df, split == TRUE)
testing_data = subset(df, split == FALSE)

library(neuralnet)

n <- neuralnet(label~.,
               data = training_data, linear.output = F, hidden=8, threshold=0.01)

plot(n)

predict_reg <- predict(n, 
                       testing_data, type = "response")

Predict=compute(n,testing_data)
Predict

prob <- Predict$net.result
pred <- ifelse(prob>0.5, 1, 0)

pred
missing_classerr <- mean(pred != testing_data$label)
missing_classerr
print(paste('Accuracy =', 1 - missing_classerr))