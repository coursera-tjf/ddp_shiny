library(shiny)

# Disable shiny widget, from:
# https://groups.google.com/forum/#!topic/shiny-discuss/uSetp4TtW-s
disable <- function(x) {
  if (inherits(x, 'shiny.tag')) {
    if (x$name %in% c('input', 'select'))
      x$attribs$disabled <- 'disabled'
    x$children <- disable(x$children)
  }
  else if (is.list(x) && length(x) > 0) {
    for (i in 1:length(x))
      x[[i]] <- disable(x[[i]])
  }
  x
}
# function to generate the complete model summary in a single string
completeModelSummary <- function() {
  'TODO - This will be the model summary'
}


shinyUI(
  fluidPage(titlePanel('Kaggle - Titanic: Machine Learning from Disaster'),

    navbarPage('',

      # Problem Description
      tabPanel('Problem Description',
        sidebarLayout(
          sidebarPanel(
            p('placeholder')
          ),
          mainPanel(
            p('placeholder')
          )
        )
      ),

      # show data summary of all data - give options to see raw or processed data
      # TODO need doc as to what you are looking at
      # TODO note survival shown if training only selected
      # separate outcomes from predictors
      tabPanel('Data Slicing/Summary',
        sidebarLayout(
          sidebarPanel(
  #          sliderInput('sliderTrainValidation', 
  #            'Select percentage of training sample to use for validation', 
  #            min=0, max=50, value=40),
            radioButtons('RawOrProc', 'Which data for summary?',
              c('Processed'='p', 'Raw Data'='r')
            ),
            radioButtons('SummaryOf', 'Display data summary for predictors of:',
              c('All data (Training + Validation + Test)'='a', 
                'Training + Validation'='tv', 'Training only'='t')
            )
          ),
          mainPanel(
            h4('Predictors'),
            verbatimTextOutput('PredictorsSummaryOut'),
            h4('Outcome (Training and Validation only)'),
            verbatimTextOutput('OutcomeSummaryOut')
          )
        )
      ),
      
      # explore the data
      tabPanel('Explore Data',
        sidebarLayout(
          sidebarPanel(
            selectInput('singlePlotGeom', 'Select plot type', 
              choices=c('point', 'boxplot', 'histogram', 'density', 'jitter'),
              selected='jitter'),
            uiOutput('expXaxisVarSelector'),
            uiOutput('expYaxisVarSelector'),
            uiOutput('expColorVarSelector')
          ),
          mainPanel(
            p('placeholder'),
            #plotOutput('expPairsPlot')
            plotOutput('expSinglePlot')
          )
        )
      ),
     
      # Data PreProcessing 
      tabPanel('Data PreProcessing',
        sidebarLayout(
          sidebarPanel(
            p('placeholder'),
            selectInput('preProcessMethods', 'Select data preprocessing method(s)',
              choices=c(
                'Center Data' = 'center', 
                'Scale Data' = 'scale', 
                'Box Cox Transform Data' = 'BoxCox',
                'Yeo-Johnson Transform Data' = 'YeoJohnson',
                'Inpute missing data with k-nearest neighbors' = 'knnImpute',
                'Principle Compnent Analysis (95% variance)' = 'pca'
              ),
              selected='BoxCox', 
              multiple=TRUE
            )
          ),
          mainPanel(
            p('placeholder')
          )
        )
      ),

      tabPanel('Prediction Model',
        sidebarLayout(
          sidebarPanel(
            uiOutput('featureSelectInput'),
            selectInput('machLearnAlgorithm', 
              'Select the model or machine learning algorithm',
              choices= c('Generalized Linear Model (logit)' = 'glm',
                'Random Forests (may take a few minutes)' = 'rf'), 
              selected='glm')
          ),
          mainPanel(
            h4('Final model fit'),
            verbatimTextOutput('finalModel'),
            h4('Summary'),
            verbatimTextOutput('summaryModel')
          )
        )
      ),

      # show model evaluation
      tabPanel('Model Evaluation',
        fluidRow(
          wellPanel(completeModelSummary())
        ),
        fluidRow(
          column(6,
            wellPanel(
              h4('Estimated In Sample Accuracy (within training data)'),
              verbatimTextOutput('inSampleAccuracy')
            )
          ),
          column(6,
            wellPanel(
              h4('Estimated Out of Sample Accuracy (within verification data)'),
              verbatimTextOutput('outOfSampleAccuracy')
            )
          )
        )
      ),
  
      tabPanel('Test Data Results'
      
      )

    )
  )
)

