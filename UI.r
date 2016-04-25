
  library(shinythemes)
  library(shiny)
  library(tm)
  library(stringr)
  library(markdown)
  library(stylo)



shinyUI(navbarPage("Capstone Project", theme = shinytheme("flatly"),
  
                   
tabPanel("Word Prediction",
        
         fluidRow(
           column(3),
           column(6,
                  tags$div(textInput("text",
                                 label = h3("Enter Text here:"),
                                 value =),
                           br(),
                           tags$hr(),
                           h4("The next word is predicted to be :"),
                           tags$strong(tags$h3(textOutput("predictedWord"))),
                           align ="center")
                  ),
           column(3)
           )
         )                   
                   
                   
                   ))