## Shiny app for [Titanic: Machine Learning from Disaster "Getting Started" Kaggle Competition](https://www.kaggle.com/c/titanic)

Purpose - Use machine learning to predict which passengers survived the tragedy.

Implementation - **NEED FINISH THIS**

### Dataset - downloaded from [here](https://www.kaggle.com/c/titanic/data)

Data already broken up into separate training and testing data sets.  Due to
Kaggle requiring a click to download data, data also uploaded to this GitHub
repo so can be downloaded into R directly at the launch of this Shiny app.

* [train.csv](data/train.csv)
* [test.csv](data/test.csv)

#### Data Description

```
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
```

## Deliverables

* Shinyapps.io - https://coursera-tjf.shinyapps.io/ddp_shiny/
* Slidify presentation - http://coursera-tjf.github.io/ddp_shiny/
