---
title       : Interactive Machine Learning Shiny Application
subtitle    : "Kaggle - Titanic: Machine Learning from Disaster"
author      : Coursera TJF
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}

--- intro



## Interactive Machine Learning Example

* Uses Kaggle "Getting Started" Competition [Titanic: Machine Learning from
Disaster](https://www.kaggle.com/c/titanic)
* Purpose: Use machine learning to predict who survived the titanic disaster
* Contains:
  1. Data summary (raw and processed as well as training, validation, and testing data)
  2. Interactive exploratory data analysis (one and two variable as well as
pair plots)
  3. Interactive model creation (data preprocessing, feature selection, and
machine learning algorithm selection)
  4. Model evaluation (in-sample error via training data and out-of-sample
error via validation data)
  5. Test data results (model applied to testing data to predict survival)

#### Deployed Shiny App and Code Publically Available
* shinyapps.io URL: https://coursera-tjf.shinyapps.io/ddp_shiny/
* Code and data available in github repository:
https://github.com/coursera-tjf/ddp_shiny


--- &twocol w1:40% w2:60%
## Data summary and Pairs Plot

*** =left


|            |colnames    |type    |
|:-----------|:-----------|:-------|
|PassengerId |PassengerId |integer |
|Survived    |Survived    |factor  |
|Pclass      |Pclass      |factor  |
|Name        |Name        |factor  |
|Sex         |Sex         |factor  |
|Age         |Age         |numeric |
|SibSp       |SibSp       |integer |
|Parch       |Parch       |integer |
|Ticket      |Ticket      |factor  |
|Fare        |Fare        |numeric |
|Cabin       |Cabin       |factor  |
|Embarked    |Embarked    |factor  |

*** =right

![plot of chunk pairs_plot](assets/fig/pairs_plot-1.png)

--- 

## Build prediction model

* Preprocessing = center, scale, BoxCox
* Method = Random Forests
* Data = Training data set


```
## Random Forest 
## 
## 428 samples
##  11 predictor
##   2 classes: 'No', 'Yes' 
## 
## Pre-processing: centered (4), scaled (4), principal component
##  signal extraction (4) 
## Resampling: Bootstrapped (25 reps) 
## Summary of sample sizes: 428, 428, 428, 428, 428, 428, ... 
## Resampling results across tuning parameters:
## 
##   mtry  Accuracy   Kappa      Accuracy SD  Kappa SD  
##   2     0.7742761  0.5315989  0.03218209   0.06482501
##   3     0.7757793  0.5351034  0.03245668   0.06502107
##   4     0.7750189  0.5331350  0.03165821   0.06367792
## 
## Accuracy was used to select the optimal model using  the largest value.
## The final value used for the model was mtry = 3.
```

---

## Evaluate model performance (using verification data)


```
## Confusion Matrix and Statistics
## 
##           Reference
## Prediction  No Yes
##        No  145  37
##        Yes  25  79
##                                           
##                Accuracy : 0.7832          
##                  95% CI : (0.7309, 0.8296)
##     No Information Rate : 0.5944          
##     P-Value [Acc > NIR] : 1.026e-11       
##                                           
##                   Kappa : 0.5429          
##  Mcnemar's Test P-Value : 0.1624          
##                                           
##             Sensitivity : 0.8529          
##             Specificity : 0.6810          
##          Pos Pred Value : 0.7967          
##          Neg Pred Value : 0.7596          
##              Prevalence : 0.5944          
##          Detection Rate : 0.5070          
##    Detection Prevalence : 0.6364          
##       Balanced Accuracy : 0.7670          
##                                           
##        'Positive' Class : No              
## 
```
