
  library(shinythemes)
  library(shiny)
  library(tm)
  library(stringr)
  library(markdown)
  library(stylo)

Data2 <- readRDS(file = "./Data/2Data.RData")
Data3 <- readRDS(file = "./Data/3Data.RData")
Data4 <- readRDS(file = "./Data/4Data.RData")

cleanData <- function(text) {
  cleanedText <- tolower(text)
  cleanedText <- removePunctuation(cleanedText)
  cleanedText <- removeNumbers(cleanedText)
  cleanedText <- str_replace_all(cleanedText, "[^[:alnum:]]", " ")
  cleanedText <- stripWhitespace(cleanedText)
  
  return(cleanedText)
}

cleanInput <- function(text) {
  Input <- cleanData(text)
  Input <- txt.to.words.ext(Input,
                                language =" English.all",
                                preserve.case = TRUE)
  return(Input)
}
               
wordPrediction <- function(WC, Input) {
  
  if(WC >= 3) {
    Input <- Input[(WC-2):WC]
  }
  else if(WC == 2) {
    Input <- c(NA, Input)
  }
  else{
    Input <- c(NA, NA, Input)
  }
  prediction <- as.character(Data4[Data4$unigram == Input[1] &
                                    Data4$bigram ==Input[2] &
                                    Data4$trigram == Input[3],][1,]$quadgram)
  if(is.na(prediction)) {
    prediction <- as.character(Data3[Data3$unigram == Input[2] &
                                        Data3$bigram == Input[3],][1,]$trigram)
    
    if (is.na(prediction)) {
      prediction <- as.character(Data2[Data2$unigram == Input[3],][1,]$bigram)
    }
  }
  print(prediction)
}
