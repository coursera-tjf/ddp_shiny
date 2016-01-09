## Shiny app for [Titanic: Machine Learning from Disaster "Getting Started" Kaggle Competition](https://www.kaggle.com/c/titanic)

Purpose - Use machine learning to predict which passengers survived the tragedy.
Implementation - **NEED FINISH THIS**

### Dataset - downloaded from [here](https://www.kaggle.com/c/titanic/data)

Data already broken up into separate training and testing data sets and also
contains a gendermodel and genderclassmodel.  Due to Kaggle requiring a click
to download data, data also uploaded to this GitHub repo so can be downloaded
into R directly at the launch of this Shiny app.

* [train.csv](data/train.csv)
* [test.csv](data/test.csv)
* [gendermodel.csv](data/gendermodel.csv)
* [genderclassmodel.csv](data/genderclassmodel.csv)

#### Data Description

VARIABLE DESCRIPTIONS:
survival        Survival
                (0 = No; 1 = Yes)
pclass          Passenger Class
                (1 = 1st; 2 = 2nd; 3 = 3rd)
name            Name
sex             Sex
age             Age
sibsp           Number of Siblings/Spouses Aboard
parch           Number of Parents/Children Aboard
ticket          Ticket Number
fare            Passenger Fare
cabin           Cabin
embarked        Port of Embarkation
                (C = Cherbourg; Q = Queenstown; S = Southampton)

SPECIAL NOTES:
Pclass is a proxy for socio-economic status (SES)
 1st ~ Upper; 2nd ~ Middle; 3rd ~ Lower

Age is in Years; Fractional if Age less than One (1)
 If the Age is Estimated, it is in the form xx.5

With respect to the family relation variables (i.e. sibsp and parch)
some relations were ignored.  The following are the definitions used
for sibsp and parch.

Sibling:  Brother, Sister, Stepbrother, or Stepsister of Passenger Aboard Titanic
Spouse:   Husband or Wife of Passenger Aboard Titanic (Mistresses and Fiances Ignored)
Parent:   Mother or Father of Passenger Aboard Titanic
Child:    Son, Daughter, Stepson, or Stepdaughter of Passenger Aboard Titanic

Other family relatives excluded from this study include cousins,
nephews/nieces, aunts/uncles, and in-laws.  Some children travelled
only with a nanny, therefore parch=0 for them.  As well, some
travelled with very close friends or neighbors in a village, however,
the definitions do not support such relations.

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
