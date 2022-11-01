#INFO 1998: Introduction to Machine Learning; 
#Assignment 8: Linear Classifiers and Model Validation

#There are a total of 4 problems corresponding to 4 examples in this file.
#All of the problems are required, so do your best to complete them.
#   If you have any questions, please contact a course staff member.

install.packages('caret') #This package needed for Example 4

##################################################################################################
#Example 1: (The Perceptron Algorithm) 
#We will be training a perceptron on the iris dataset to differentiate 
#between the setosa and versicolor species

# First, get a subset of iris data frame - extract only species versicolor and setosa
# and the sepal and petal lengths features
data(iris)
irissubdf <- iris[1:100, c(1, 3, 5)]
names(irissubdf) <- c("sepal", "petal", "species")
head(irissubdf)

#plot
library(ggplot2)
ggplot(irissubdf, aes(x = sepal, y = petal)) + 
  geom_point(aes(colour=species, shape=species), size = 3) +
  xlab("sepal length") + 
  ylab("petal length") + 
  ggtitle("Species vs sepal and petal lengths")

# add binary labels corresponding to species and split dataframe
irissubdf[, 4] <- 1
irissubdf[irissubdf[, 3] == "setosa", 4] <- -1
x <- irissubdf[, c(1, 2)]
y <- irissubdf[, 4]
head(x)

# perceptron algorithm: learning rate - eta, number of epochs - n.iter (i.e an entire pass through of dataset) 
perceptron <- function(x, y, eta, niter) {
  # initialize weight vector
  weight <- rep(0, dim(x)[2] + 1)
  errors <- rep(0, niter)
  
  # loop over number of epochs niter
  for (jj in 1:niter) {
    
    # loop through training data set
    for (ii in 1:length(y)) {
      
      # Predict binary label using Heaviside activation 
      # function
      z <- sum(weight[2:length(weight)] * 
                 as.numeric(x[ii, ])) + weight[1]
      if(z < 0) {
        ypred <- -1
      } else {
        ypred <- 1
      }
      
      # Change weight - the formula doesn't do anything 
      # if the predicted value is correct
      weightdiff <- eta * (y[ii] - ypred) * 
        c(1, as.numeric(x[ii, ]))
      weight <- weight + weightdiff
      
      # Update error function
      if ((y[ii] - ypred) != 0.0) {
        errors[jj] <- errors[jj] + 1
      }
      
    }
  }
  return(c(weight, errors))
}

eta = 1; niters = 10
result <- perceptron(x, y, eta, niters)
weight <- result[1:3]; errors <- result[4:(4+niters-1)]

# PROBLEM 1. (i) Split the dataframe into a train and test set, 
# (ii) run the perceptron on the train set with eta = 1, niters = 10, 
# (iii) and return the train and test error

################################################################################################
#Example 2: (Impact of train/test split on Validation error) 
#In this example, we will build upon Example 1 to investigate the effect of the size of the train/test split
#   on the validation error. Intuitively, a larger training set induces a smaller test set, so our validation error 
#   will remain relatively constant around different train/test splits -- and hence, the validation error will have LOW variance

#PROBLEM 2. Repeat problem 1 except with differing sizes of the train/test split. In particular,
#(i) run the algorithm 50 times and obtain the average validation error for splits of 0.10,0.20,0.30,...,0.90.
#(ii) comment on the relationship between # of training points and test error,
#(iii) relate the pattern observed in (ii) to how choosing different train/test split sizes may 
#      impact the variance of the train and validation error. You can answer (iii) without code, if you like.

################################################################################################
#Example 3: (Selection Bias in Validation for Classification)
#In this example, we look into the effect of having an imbalanced dataset. Intuitively, if you are working on a classification problem 
#   and your dataset has 99% positives and 1% negatives, a rather naive model that predicts always positive will do relatively well,
#   but completely miss the mark in terms of predicting negatives correctly. This is referred to as selection bias.

library(tree)
library(dplyr)
library(tibble)

df <- read.csv("phone.csv")
df['goal'] <- (df['talk_time'] >= 20 & df['three_g'])
df <- mutate(df, goal=as.factor(goal))
train <- sample(1:nrow(df), (0.70)*dim(df)[1])
test <- df[-train,]
tree.phone <- tree(goal~battery_power, data=df, subset=train)
tree.pred <- predict(tree.phone, test['battery_power'], type="class")
table(tree.pred, test$goal)

#PROBLEM 3. (i) What is the positive predictive value? (i.e. out of all test points with a positive or 'TRUE' label
# how many are accurately predicted to be positive?) What is the overall model accuracy?
#(ii) Give an explanation why the model accuracy is high; whereas the positive predictive value is low.

####################################################################################################
#Example 4: (Performance measures across Model Complexity)
#In this example, we will explore how classification accuracy and variance change with model complexity.
#Intuitively, a more complex model should achieve a lower validation error on average than a less complex mode,
#   that is, before the dip occurs in the familiar bias-variance tradeoff. However, this decrease in bias lends to
#   an increase in variance, which we many readily approximate by simulating several different train/test splits.

library(caret)
df['goal'] <- (df['talk_time'] >= 10 & df['three_g']) #make a more balanced dataset
df <- mutate(df, goal=as.factor(goal))

m <- 50
train_test_split <- 0.75
accuracy_scores_one_feature <- rep(0,m)
k <- 10
  
for (j in 1:m) {
  train <- sample(1:nrow(df), (train_test_split)*dim(df)[1])
  x_train <- df[train,'blue'] #use only a single feature
  x_test <- df[-train,'blue']
  y_train <- df[train,'goal']
  y_test <- df[-train, 'goal']
  knnmodel = knn3(as.matrix(x_train), y_train, k=k)
  rawpreds <- predict(knnmodel, x_test)
  preds <- rep(0,length(x_test))
  n_test <- length(x_test)
  for (i in 1:n_test) {
    if (rawpreds[i,1] < rawpreds[i,2]) {
      preds[i] = 1
    }
    else {
      preds[i] = 0
    }
  }
  
  result <- table(preds,y_test)
  accuracy_scores_one_feature[j] <- sum(diag(result)) / sum(result)
}


accuracy_scores_one_feature

accuracy_scores_many_features <- rep(0,m)
features <- c('battery_power', 'blue', 'clock_speed','dual_sim',
              'px_height','px_width','int_memory')
for (j in 1:m) {
  train <- sample(1:nrow(df), (train_test_split)*dim(df)[1])
  x_train <- df[train, features] #use several (non categorical/factor) features
  x_test <- df[-train, features]
  y_train <- df[train,'goal']
  y_test <- df[-train, 'goal']
  knnmodel = knn3(as.matrix(x_train), y_train, k=k)
  rawpreds <- predict(knnmodel, x_test)
  preds <- rep(0,length(x_test))
  n_test <- dim(x_test)[1]
  for (i in 1:n_test) {
    if (rawpreds[i,1] < rawpreds[i,2]) {
      preds[i] = 1
    }
    else {
      preds[i] = 0
    }
  }
  
  result <- table(preds,y_test)
  accuracy_scores_many_features[j] <- sum(diag(result)) / sum(result)
}

accuracy_scores_many_features


#PROBLEM 4: (i) Compute the sample variance and mean for both models above. 
#(ii) Comment on how your observations relate to the bias-variance tradeoff.
#(iii) Play around with some hyperparameters (e.g. k, train_test_split, the features used in the 2nd model).
#   and provide some commentary on how your tuning affects the bias and variance of both models.

# Some code taken from Faiyaz Hasan (RPub, Notes on Perceptron; 2016) 