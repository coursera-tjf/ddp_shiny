library(shiny)
library(data.table)
library(plyr)
library(dplyr)
library(ggplot2)
library(caret)

# read in raw data
raw.training.all <- fread(file.path('data', 'train.csv'))
raw.survived <- select(raw.training.all, one_of('Survived'))
raw.training <- select(raw.training.all, -one_of('Survived'))
raw.testing <- fread(file.path('data', 'test.csv'))

# process data by adding factors for Survived, Pclass, Sex, and Embarked
# as well as processing age as described
#
# TODO - need handle missing data in Age
process.data <- function(x) {
  if ('Survived' %in% colnames(x))
    x$Survived <- factor(x$Survived, levels=c(0,1), labels=c('No', 'Yes'))
  x$Pclass <- factor(x$Pclass, levels=c(1,2,3), labels=c('1st', '2nd', '3rd'))
  x$Sex <- factor(x$Sex, levels=c('male', 'female'), labels=c('male', 'female'))
  x$Embarked <- factor(x$Embarked, levels=c('C', 'Q', 'S'),
    labels=c('Cherbourg', 'Queenstown', 'Southampton'))
  x
}

proc.training.all <- process.data(raw.training.all)
proc.survived <- select(proc.training.all, one_of('Survived'))
proc.training <- select(proc.training.all, -one_of('Survived'))
proc.testing <- process.data(raw.testing)

shinyServer(
  function(input, output) {

    # Raw Data Summary
    output$rawSummaryOut <- renderPrint({ 
      summary(
        if(input$rawSummaryOf=='a')
          rbind(raw.training, raw.testing)
        else
          raw.training.all
      )
    })

    # Processed Data Summary
    output$procSummaryOut <- renderPrint({ 
      summary(
        if(input$procSummaryOf=='a')
          rbind(proc.training, proc.testing)
        else
          proc.training.all
      )
    })









  }
)

