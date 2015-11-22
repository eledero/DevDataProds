
library(shiny)



shinyUI(
  
  pageWithSidebar(
   headerPanel('Predict the next element with differnt types of mean.'),
    sidebarPanel(
      h4('Please input the first 5 elements: '),
      h4(' '),
      numericInput('e1', 'Element # 1', 1, min = 1, max = 10000000, step = 1),
      numericInput('e2', 'Element # 2', 1, min = 1, max = 10000000, step = 1),
      numericInput('e3', 'Element # 3', 1, min = 1, max = 10000000, step = 1),
      numericInput('e4', 'Element # 4', 1, min = 1, max = 10000000, step = 1),
      numericInput('e5', 'Element # 5', 1, min = 1, max = 10000000, step = 1),
      selectInput('opt', 'Select the type of prediction for the element # 6:', choices = c('Arithmetic Mean' = 1, 'Geometric mean' = 2, 'Harmonic mean' = 3), selected = 1)
      ),
    mainPanel(
    
      h4('The prediction is:'),
      verbatimTextOutput('prediction')
    )
)
)
