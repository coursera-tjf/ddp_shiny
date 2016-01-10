library(shiny)

shinyUI(
  navbarPage('',

    # Problem Description
    tabPanel('Problem Description'),

    # show data summary of all data
    # TODO need doc as to what you are looking at
    # TODO note survival shown if training only selected
    tabPanel('Raw Data Summary',
      sidebarLayout(
        sidebarPanel(
          radioButtons('rawSummaryOf', 'Display data summary of:',
            c('All data (Training + Test)'='a', 'Training only'='t')
          )
        ),
        mainPanel(
          verbatimTextOutput('rawSummaryOut')
        )
      )
    ),

    # show data summary of all data
    # TODO need doc as to what you are looking at
    # TODO note survival shown if training only selected
    tabPanel('Processed Data Summary',
      sidebarLayout(
        sidebarPanel(
          radioButtons('procSummaryOf', 'Display data summary of:',
            c('All data (Training + Test)'='a', 'Training only'='t')
          )
        ),
        mainPanel(
          verbatimTextOutput('procSummaryOut')
        )
      )
    ),


    tabPanel('Explore Data'),

    tabPanel('Prediction Model'),

    tabPanel('Model Evaluation')
  )
)

