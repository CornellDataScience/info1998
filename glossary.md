---
title: Glossary
layout: main
---

On this page you can find some common terminology referenced in this course. Please note that this glossary may not be comprehensive. When in doubt, ask on Ed or refer back to lectures.
<br/>
<br/>
<br/>

### Common INFO 1998 Terminology


| Term | Definition | Link |
| --- | ---- | --- |
|Data Science |Data science is the field of study that combines domain expertise, programming skills, and knowledge of mathematics and statistics to extract meaningful insights from data. | Lecture 1 |
| | | |
|Machine Learning |Machine learning is a subfield of artificial intelligence, which is broadly defined as the capability of a machine to imitate intelligent human behavior. | Lecture 1 |
| | | |
|Concatenating |Combines together two data frames, either row-wise or column-wise. Concatenating is also combining two data frames, but while join offers a low level of control, concat has a lot more options. | Lecture 2 |
| | | |
|Imputation |Compensates for missing values in a dataset. 3 main techniques: Randomly replacing NaNs, Using summary statistics, and Using regression, clustering, and other advanced techniques | Lecture 2 |
| | | |
|Ordering |Converts categorical data to a numerical scale to easily facilitate analysis | Lecture 2 |
| | | |
|Dummy variables |Creates binary variable for each category in a categorical variable | Lecture 2 |
| | | |
|Filtering |Filtering means looking at only certain rows, based on the values in columns. | Lecture 2 |
| | | |
|Feature engineering |Generates new features which provide additional information to the user and to the model | Lecture 2 |
| | | |
|Joining |Joins together two data frames on any specified key (fills in NaN otherwise). 4 common types: inner, outer, left, and right | Lecture 2 |
| | | |
|Binning |Makes continuous data categorical by lumping ranges of data into discrete “levels”  | Lecture 2 |
| | | |
|Subsetting |Subsetting means getting rid of unnecessary columns and focus on certain characteristics. | Lecture 2 |
| | | |
|Summarizing |Summarizing is very useful as it gives us a quantitative overview of the dataset. Besides count, for numerical datasets, it gives us mean, standard deviation, minimum maximum and quartile numbers. For non-numerical datasets, it gives other useful overall statistics. | Lecture 2 |
| | | |
|Standardizing |Turns data into normal distribution with mean of 0 and standard deviation of 1 | Lecture 2 |
| | | |
|Normalizing |Turns data into values between 0 and 1 for easy comparison between different features | Lecture 2 |
| | | |
|Dataframe |DataFrame is a 2-dimensional labeled data structure with columns of potentially different types. You can think of it like a spreadsheet or SQL table, they provide functions for selecting and manipulating data.|Lecture 2|
| | | |
|Pandas |Open-source data analysis library built on top of the Python programming language to manage data in an orderly way. [API here] (https://pandas.pydata.org/docs/reference/index.html)|Lecture 2|
| | | |
|Correlation plots|2D matrix with all variables on each axis; each entry is the correlation coefficient between each pair of variables|Lecture 3|
| | | |
|Error bars |A line through a point on a graph parallel to one of the axes which represents the estimated error in a measurement (the uncertainty)|Lecture 3|
| | | |
|Boxplot|Also known as box and whisker plot. It provides Summary of data.Gives range, interquartile range, median, and outlier information|Lecture 3|
| | | |
|Seaborn|Another visualization package (plot graphs) built on matplotlib with high level commands|Lecture 3|
| | | |
|Violin plot|Combination of boxplot and density plot to show the spread and shape of the data. Can show if data is normal|Lecture 3|
| | | |
|Heatmap|Describes the density or intensity of variables, visualize patterns, and anomalies. Varying degrees of one metric are represented using color|Lecture 3|
| | | |
|Matplotlib|Python data visualization package inspired from MATLAB.Capable of handling most data visualization needs|Lecture 3|
| | | |
|Residual Plot|Scatter plot of residual values. Residuals are on vertical axis and the independent variable on the horizontal axis. Helps determine the accuracy of line of best fit.|Lecture 3|
| | | |
|Linear Regression|Linear regression attempts to model the relationship between two variables by fitting a linear equation to observed data. Can be configured with hyperparameters.|Lecture 3|
| | | |
|Overfitting|Overfitting refers to a model that models the training data too well. An overfitted model cannot accurately generalize predictions to new data|Lecture 4|
| | | |
|Model training|The model learns a relationship/program. The first phase in creating the model.|Lecture 4|
| | | |
|Model validation|Validates whether the learned relationship is accurate on other data. This is very important to determine if the model is overfitted.|Lecture 4|
| | | |
|Variance|A measure of overfitting. Results from sensitivity to fluctuations in the data.|Lecture 5|
| | | |
|Bias|A measure of underfitting. Results from incorrect assumptions in the algorithm|Lecture 5|
| | | |
|Underfitting|A model that can neither model the training data nor generalize to new data|Lecture 5 |
| | | |
|Classification|A supervised machine learning method where the model tries to predict the correct label of a given input data|Lecture 5|
| | | |
|Error|Error is used to see how accurately our model can predict on data it uses to learn; as well as new, unseen data. Based on our error, we choose the machine learning model which performs best for a particular dataset. |Lecture 5|
| | | |
|Collinear|When two features have a correlation near -1 or 1. This makes them redundant. But if features are collinear with the target, it’s a good choice for linear regression|Lecture 5|
| | | |
|Classifier|Predict the class/category (based off of target variable) of a set of data points|Lecture 5|
| | | |
|K-nearest neighbor (KNN) classifier|Uses k (user-specified value and hyperparameter) nearest data points to predict unknown one.|Lecture 6|
| | | |
|Confusion matrix|Table used to describe the performance of classifier on a set of binary test data for which the true values are known|Lecture 6|
| | | |
|Sensitivity|True positive rate (how many positives are correctly identified as positives)|Lecture 6|
| | | |
|Specificity|True negative rate (how many negatives are correctly identified as negatives)|Lecture 6|
| | | |
|Overall accuracy|Proportion of correct predictions ( (true positives + true negative) / total)|Lecture 6|
| | | |
|Overall error rate|Proportion of incorrect predictions ( (false positive + false negative) / total)|Lecture 6|
| | | |
|Precision|Proportion of correct positive predictions among all positive predictions ( true positive / (true positive + false positive))|Lecture 6|
| | | |
|Decision Trees|Supervised ML model used to predict target by learning decision rules from features|Lecture 7|
| | | |
|Classification and regression trees (CART)|Used for classification/regression; models a non-linear relationship|Lecture 7|
| | | |
|Logistic Regression|Used for binary classification; transforms linear relationship of probability by using the sigmoid function|Lecture 7|
| | | |
|K-fold cross validation|Create equally sized k-partitions/folds of training data. The average of these errors is the validation error|Lecture 7|
| | | |
|Linear classifiers|Hyper plane (decision boundary) used to classify data points|Lecture 8|
| | | |
|Linearly separable|Occurs when you cannot partition a dataset with a linear decision boundary. Not linearly separable, often due to outliers|Lecture 8|
| | | |
|Perceptron Learning Algorithm|Algorithm that find a normal vector w that perfectly classifies all the points in data set|Lecture 8|
| | | |
|Support Vector Machine (SVM) |A machine learning model that is able to generalise between two different classes if the set of labeled data is provided in the training set to the algorithm|Lecture 8|
| | | |
|Margins|Use cost function to penalize misclassified points|Lecture 8|
| | | |
|Kernels|Map 2 dimensional data onto 3 dimensional data; makes it easier to find a hyperplane|Lecture 8|
| | | |
|Unsupervised learning|Training data is unlabeled; algorithm tries to learn by itself. E.g. clustering, dimensionality reduction, etc.|Lecture 8|
| | | |
|Clustering Algorithms|Hierarchical Cluster Analysis (HCA), k-Means clustering, Gaussian Mixture Models (GMMs)|Lecture 9|

<br/>
<br/>
<br/>
<br/>
<br/>
References:
<font size = "2">
https://www.datarobot.com/wiki/data-science/<br/>
<br/>
https://mitsloan.mit.edu/ideas-made-to-matter/machine-learning-explained<br/>
<br/>
https://pandas.pydata.org/docs/user_guide/dsintro.html#:~:text=DataFrame%20is%20a%202%2Ddimensional,most%20commonly%20used%20pandas%20object.<br/>
<br/>
https://www.biologyforlife.com/interpreting-error-bars.html<br/>
<br/>
http://www.stat.yale.edu/Courses/1997-98/101/linreg.htm<br/>
<br/>
https://machinelearningmastery.com/overfitting-and-underfitting-with-machine-learning-algorithms/<br/>
<br/>
https://www.datacamp.com/blog/classification-machine-learning#:~:text=Classification%20is%20a%20supervised%20machine,prediction%20on%20new%20unseen%20data.<br/>
<br/>
https://machinelearningmastery.com/overfitting-and-underfitting-with-machine-learning-algorithms/<br/>
<br/>
https://www.simplilearn.com/tutorials/machine-learning-tutorial/bias-and-variance#:~:text=Errors%20in%20Machine%20Learning,-We%20can%20describe&text=In%20Machine%20Learning%2C%20error%20is,best%20for%20a%20particular%20dataset.<br/>
<br/>
</font>