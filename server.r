
  library(shinythemes)
  library(shiny)
  library(tm)
  library(stringr)
  library(markdown)
  library(stylo)
  
source("./helper.r")
Data2 <- readRDS(file = "./Data/2Data.RData")
Data3 <- readRDS(file = "./Data/3Data.RData")
Data4 <- readRDS(file = "./Data/4Data.RData")

shinyServer(function(input, output) {
  WPrediction <- reactive({
    text <- input$text
    Input <- cleanInput(text)
    WC <- length(Input)
    wordPrediction <- wordPrediction(WC, Input)
  })
  output$predictedWord <- renderPrint(WPrediction())
  
}
)