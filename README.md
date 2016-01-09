## Shiny app for [Titanic: Machine Learning from Disaster "Getting Started" Kaggle Competition](https://www.kaggle.com/c/titanic)

Purpose - Use machine learning to predict which passengers survived the tragedy.
Implementation - **NEED FINISH THIS**

### Dataset - downloaded from [here](https://www.kaggle.com/c/titanic/data)

Data already broken up into separate training and testing data sets and also
contains a gendermodel and genderclassmodel.  Due to Kaggle requiring a click
to download data, data also uploaded to this GitHub repo so can be downloaded
into R directly at the launch of this Shiny app.

* [train.csv](../tree/master/data/train.csv)
* [test.csv](../tree/master/data/test.csv)
* [gendermodel.csv](../tree/master/data/gendermodel.csv)
* [genderclassmodel.csv](../tree/master/data/genderclassmodel.csv)

### Assignment = will delete

Write a shiny application with associated supporting documentation. The
documentation should be thought of as whatever a user will need to get started
using your application.

1. Deploy the application on Rstudio's shiny server
2. Share the application link by pasting it into the provided text box
3. Share your server.R and ui.R code on github

The application must include the following:

1. Some form of input (widget: textbox, radio button, checkbox, ...)
2. Some operation on the ui input in sever.R
3. Some reactive output displayed as a result of server calculations
4. You must also include enough documentation so that a novice user could use your application.
5. The documentation should be at the Shiny website itself. Do not post to an external link.

The Shiny application in question is entirely up to you. However, if you're
having trouble coming up with ideas, you could start from the simple
prediction algorithm done in class and build a new algorithm on one of the R
datasets packages. Please make the package simple for the end user, so that
they don't need a lot of your prerequisite knowledge to evaluate your
application. You should emphasize a simple project given the short time frame.
