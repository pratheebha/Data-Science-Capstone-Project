Capstone Project Presentation
========================================================
author: Pratheebha Lakshminarayanan
date: 04/24/16
transition: fade

Summary
========================================================
   The Capstone presentation highlights upon predicting the next word using Natural Language processing, as people are spending increasing amount of time using their mobile devices for emails,Social Networking,banking,texting and various other activities.
  
  The application pitches on building smart keyboards using predictive text for ease of use on mobile devices. 



Objective
========================================================
    The main goal of the project is to build a Shiny App thats able to predict the next word in a sentence. 
     The project was split into several sections/ subtasks as follows:
     - Analyzing the data : figuring what the data is all about? what standard tools and models can be used on the data?
     - Familiarizing with NLP and Text Mining : Common steps in NLP, issues in the analysis of text data.
     - Getting and Cleaning the data : Loading the data and Tokenizing and using profanity filters to remove profanity.
     - Exploratory Data Analysis : understand the distribution and relationship between words, tokens and phrases in the text.
     - Understand the Frequencies of words and word pairs
     - Modelling the data : Build n-gram models for predicting the next word based on previous 1,2 or 3 words.
     - Develop a prediction model keeping in the object size and runtime of the algorithm in check.
     - Create a shiny app to highlight the prediction algorithm that accepts an n-gram and predicts the next word.
     - Create a slide deck to pitch the Data product.
     
    
Methods and Model 
========================================================
  Since the files are too large to read & consumes more memory and time, we are limiting the files by reading in small sample of the file and storing the sample in a corpus. The corpus includes text files of various languages. The text files include:Blogs, News and Twitter files. Next step, clean up the data for numbers, whitespaces, punctuations, Removal of profanity words from corpus and converting text to lowercase. This sampled data was then tokenzied into so- called n-grams viz uni, bi, tri and quadgram term frequency matrices.
  The resulting data table are used in the prediction of the next word in relation with the text input by an user of the application and the frequencies of the underlying n-gram table.
  
  Application
==========================================================
The UI of this app takes in an input text where an user enters a word and based on the same the next word is predicted from the n-gram table and displayed for easy use of an user in choosing the word. 

References
==============================================================
. The application is hosted at 
https://pratheebha.shinyapps.io/CapstoneProject/

. The code files for the application and related scripts can be found at the https://github.com/pratheebha/CapstoneProject

. The slides for presentation is posted at 

 
  
  
  
  

  


