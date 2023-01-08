---
title: Glossary
layout: main
---

On this page you can find some common terminology referenced in this course. Please note that this glossary may not be comprehensive. When in doubt, ask on Ed or refer back to lectures.
<br/>
<br/>
<br/>

### Common INFO 1998 Terminology

  
| Term               |        Definition |         Link          |
|Data Science |Data science is the field of study that combines domain expertise, programming skills, and knowledge of mathematics and statistics to extract meaningful insights from data. | [Lecture 1](resources/FA22_slides/Lecture_1.pdf)|
| | | |
|Machine Learning |Machine learning is a subfield of artificial intelligence, which is broadly defined as the capability of a machine to imitate intelligent human behavior. | [Lecture 1](resources/FA22_slides/Lecture_1.pdf)|
| | | |
|Concatenating |Combines together two data frames, either row-wise or column-wise. Concatenating is also combining two data frames, but while join offers a low level of control, concat has a lot more options. | [Lecture 2](resources/FA22_slides/Lecture_2_fa22.pdf)|
| | | |
|Imputation |Compensates for missing values in a dataset. 3 main techniques: Randomly replacing NaNs, Using summary statistics, and Using regression, clustering, and other advanced techniques |[Lecture 2](resources/FA22_slides/Lecture_2_fa22.pdf) |
| | | |
|Ordering |Converts categorical data to a numerical scale to easily facilitate analysis |[Lecture 2](resources/FA22_slides/Lecture_2_fa22.pdf)|
| | | |
|Dummy variables |Creates binary variable for each category in a categorical variable | [Lecture 2](resources/FA22_slides/Lecture_2_fa22.pdf)|
| | | |
|Filtering |Filtering means looking at only certain rows, based on the values in columns. | [Lecture 2](resources/FA22_slides/Lecture_2_fa22.pdf)|
| | | |
|Feature engineering |Generates new features which provide additional information to the user and to the model | [Lecture 2](resources/FA22_slides/Lecture_2_fa22.pdf)|
| | | |
|Joining |Joins together two data frames on any specified key (fills in NaN otherwise). 4 common types: inner, outer, left, and right | [Lecture 2](resources/FA22_slides/Lecture_2_fa22.pdf)|
| | | |
|Binning |Makes continuous data categorical by lumping ranges of data into discrete “levels”  | [Lecture 2](resources/FA22_slides/Lecture_2_fa22.pdf)|
| | | |
|Subsetting |Subsetting means getting rid of unnecessary columns and focus on certain characteristics. | [Lecture 2](resources/FA22_slides/Lecture_2_fa22.pdf)|
| | | |
|Summarizing |Summarizing is very useful as it gives us a quantitative overview of the dataset. Besides count, for numerical datasets, it gives us mean, standard deviation, minimum maximum and quartile numbers. For non-numerical datasets, it gives other useful overall statistics. | [Lecture 2](resources/FA22_slides/Lecture_2_fa22.pdf)|
| | | |
|Standardizing |Turns data into normal distribution with mean of 0 and standard deviation of 1 | [Lecture 2](resources/FA22_slides/Lecture_2_fa22.pdf)|
| | | |
|Normalizing |Turns data into values between 0 and 1 for easy comparison between different features |[Lecture 2](resources/FA22_slides/Lecture_2_fa22.pdf)|
| | | |
|Dataframe |DataFrame is a 2-dimensional labeled data structure with columns of potentially different types. You can think of it like a spreadsheet or SQL table, they provide functions for selecting and manipulating data.|[Lecture 2](resources/FA22_slides/Lecture_2_fa22.pdf)|
| | | |
|Pandas |Open-source data analysis library built on top of the Python programming language to manage data in an orderly way. [API here] (https://pandas.pydata.org/docs/reference/index.html)|[Lecture 2](resources/FA22_slides/Lecture_2_fa22.pdf)|
| | | |
|Correlation plots|2D matrix with all variables on each axis; each entry is the correlation coefficient between each pair of variables|[Lecture 3](resources/FA22_slides/Lecture_3_fa22.pdf)|
| | | |
|Error bars |A line through a point on a graph parallel to one of the axes which represents the estimated error in a measurement (the uncertainty)|[Lecture 3](resources/FA22_slides/Lecture_3_fa22.pdf)|
| | | |
|Boxplot|Also known as box and whisker plot. It provides Summary of data.Gives range, interquartile range, median, and outlier information|[Lecture 3](resources/FA22_slides/Lecture_3_fa22.pdf)|
| | | |
|Seaborn|Another visualization package (plot graphs) built on matplotlib with high level commands|[Lecture 3](resources/FA22_slides/Lecture_3_fa22.pdf)|
| | | |
|Violin plot|Combination of boxplot and density plot to show the spread and shape of the data. Can show if data is normal|[Lecture 3](resources/FA22_slides/Lecture_3_fa22.pdf)|
| | | |
|Heatmap|Describes the density or intensity of variables, visualize patterns, and anomalies. Varying degrees of one metric are represented using color|[Lecture 3](resources/FA22_slides/Lecture_3_fa22.pdf)|
| | | |
|Matplotlib|Python data visualization package inspired from MATLAB.
Capable of handling most data visualization needs|[Lecture 3](resources/FA22_slides/Lecture_3_fa22.pdf)|
| | | |
|Residual Plot|Scatter plot of residual values. Residuals are on vertical axis and the independent variable on the horizontal axis. Helps determine the accuracy of line of best fit.|[Lecture 3](resources/FA22_slides/Lecture_3_fa22.pdf)|
| | | |
|Linear Regression|Linear regression attempts to model the relationship between two variables by fitting a linear equation to observed data. Can be configured with hyperparameters.|[Lecture 3](resources/FA22_slides/Lecture_3_fa22.pdf)|
| | | |
|Overfitting|Overfitting refers to a model that models the training data too well. An overfitted model cannot accurately generalize predictions to new data|[Lecture 4](resources/FA22_slides/Lecture_4.pdf)|
| | | |
|Model training|The model learns a relationship/program. The first phase in creating the model.|[Lecture 4](resources/FA22_slides/Lecture_4.pdf)|
| | | |
|Model validation|Validates whether the learned relationship is accurate on other data. This is very important to determine if the model is overfitted.|[Lecture 4](resources/FA22_slides/Lecture_4.pdf)|
| | | |
|Variance|A measure of overfitting. Results from sensitivity to fluctuations in the data.|[Lecture 5](resources/FA22_slides/FA22_Lecture5.pdf) |
| | | |
|Bias|A measure of underfitting. Results from incorrect assumptions in the algorithm|[Lecture 5](resources/FA22_slides/FA22_Lecture5.pdf)|
| | | |
|Underfitting|A model that can neither model the training data nor generalize to new data|[Lecture 5](resources/FA22_slides/FA22_Lecture5.pdf) |
| | | |
|Classification|A supervised machine learning method where the model tries to predict the correct label of a given input data|[Lecture 5](resources/FA22_slides/FA22_Lecture5.pdf) |
| | | |
|Error|Error is used to see how accurately our model can predict on data it uses to learn; as well as new, unseen data. Based on our error, we choose the machine learning model which performs best for a particular dataset.|[Lecture 5](resources/FA22_slides/FA22_Lecture5.pdf) |
| | | |
|Collinear|When two features have a correlation near -1 or 1. This makes them redundant. But if features are collinear with the target, it’s a good choice for linear regression|[Lecture 5](resources/FA22_slides/FA22_Lecture5.pdf) |
| | | |
|Classifier|Predict the class/category (based off of target variable) of a set of data points|[Lecture 6](resources/FA22_slides/Lecture_6_fa22.pdf)|
| | | |
|K-nearest neighbor (KNN) classifier| |[Lecture 6](resources/FA22_slides/Lecture_6_fa22.pdf)|
| | | |
|Confusion matrix|Table used to describe the performance of classifier on a set of binary test data for which the true values are known|[Lecture 6](resources/FA22_slides/Lecture_6_fa22.pdf)|
| | | |
|Sensitivity|True positive rate (how many positives are correctly identified as positives)|[Lecture 6](resources/FA22_slides/Lecture_6_fa22.pdf)|
| | | |
|Specificity|True negative rate (how many negatives are correctly identified as negatives)|[Lecture 6](resources/FA22_slides/Lecture_6_fa22.pdf)|
| | | |
|Overall accuracy|Proportion of correct predictions ( (true positives + true negative) / total)|[Lecture 6](resources/FA22_slides/Lecture_6_fa22.pdf)|
| | | |
|Overall error rate|Proportion of incorrect predictions ( (false positive + false negative) / total)|[Lecture 6](resources/FA22_slides/Lecture_6_fa22.pdf)|
| | | |
|Precision|Proportion of correct positive predictions among all positive predictions ( true positive / (true positive + false positive))|[Lecture 6](resources/FA22_slides/Lecture_6_fa22.pdf)|
| | | |
| | | |
| | | |
| | | |
| | | |

<br/>
<br/>
<br/>
<br/>
<br/>
References:
<font size = "2">
https://www.datarobot.com/wiki/data-science/<br/>
https://mitsloan.mit.edu/ideas-made-to-matter/machine-learning-explained
</font>