### DRAFT SCRIPT ###

# Opening libraries
library(tm)
library(clue)
library(stringr)
library(stopwords)

# Setting working directory
setwd("~/Downloads/Data_Science_Specialization/Course_10_Capstone")

# Downloading data
url <- "https://d396qusza40orc.cloudfront.net/dsscapstone/dataset/Coursera-SwiftKey.zip"

# Reading data
de_blogs <- readLines("Data/final/de_DE/de_DE.blogs.txt")

de_source <- VectorSource(de_blogs)
de_corpus <- Corpus(de_source)

# Cleaning
de_corpus <- tm_map(de_corpus, content_transformer(tolower))
de_corpus <- tm_map(de_corpus, removePunctuation)
de_corpus <- tm_map(de_corpus, stripWhitespace)
de_corpus <- tm_map(de_corpus, removeWords, stopwords("german"))



de <- Corpus(DirSource(directory = "Data/final/de_DE"))
en <- Corpus(DirSource(directory = "Data/final/en_US"))
fi <- Corpus(DirSource(directory = "Data/final/fi_FI"))
ru <- Corpus(DirSource(directory = "Data/final/ru_RU"))

stopwords("english")
stopwords::stopwords("russian")

# Techniques
## Stemming
## Dictionaries
## Cleaning
## Stopwords
