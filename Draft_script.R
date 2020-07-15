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

# Reading German data to corpus
de_blogs <- readLines("Data/final/de_DE/de_DE.blogs.txt")
de_news <- readLines("Data/final/de_DE/de_DE.news.txt")
de_twitter <- readLines("Data/final/de_DE/de_DE.twitter.txt")
de <- paste(de_blogs, de_news, de_twitter, collapse = " ")
rm(de_blogs) ; rm(de_news) ; rm(de_twitter)

de_source <- VectorSource(de)
de_corpus <- Corpus(de_source)

# Cleaning German corpus
de_corpus <- tm_map(de_corpus, content_transformer(tolower))
de_corpus <- tm_map(de_corpus, removePunctuation)
de_corpus <- tm_map(de_corpus, stripWhitespace)
de_corpus <- tm_map(de_corpus, removeWords, stopwords("german"))

# Reading English data to corpus
en_blogs <- readLines("Data/final/en_US/en_US.blogs.txt")
en_news <- readLines("Data/final/en_US/en_US.news.txt")
en_twitter <- readLines("Data/final/en_US/en_US.twitter.txt")
en <- paste(en_blogs, en_news, en_twitter, collapse = " ")
rm(en_blogs) ; rm(en_news) ; rm(en_twitter)

en_source <- VectorSource(en)
en_corpus <- Corpus(en_source)

# Cleaning English corpus
en_corpus <- tm_map(en_corpus, content_transformer(tolower))
en_corpus <- tm_map(en_corpus, removePunctuation)
en_corpus <- tm_map(en_corpus, stripWhitespace)
en_corpus <- tm_map(en_corpus, removeWords, stopwords("english"))

# Reading Finnish data to corpus
fi_blogs <- readLines("Data/final/fi_FI/fi_FI.blogs.txt")
fi_news <- readLines("Data/final/fi_FI/fi_FI.news.txt")
fi_twitter <- readLines("Data/final/fi_FI/fi_FI.twitter.txt")
fi <- paste(fi_blogs, fi_news, fi_twitter, collapse = " ")
rm(fi_blogs) ; rm(fi_news) ; rm(fi_twitter)

fi_source <- VectorSource(fi)
fi_corpus <- Corpus(fi_source)

# Cleaning Finnish corpus
fi_corpus <- tm_map(fi_corpus, content_transformer(tolower))
fi_corpus <- tm_map(fi_corpus, removePunctuation)
fi_corpus <- tm_map(fi_corpus, stripWhitespace)
fi_corpus <- tm_map(fi_corpus, removeWords, stopwords("finnish"))

# Reading Russian data to corpus
ru_blogs <- readLines("Data/final/ru_RU/ru_RU.blogs.txt")
ru_news <- readLines("Data/final/ru_RU/ru_RU.news.txt")
ru_twitter <- readLines("Data/final/ru_RU/ru_RU.twitter.txt")
ru <- paste(ru_blogs, ru_news, ru_twitter, collapse = " ")
rm(ru_blogs) ; rm(ru_news) ; rm(ru_twitter)

ru_source <- VectorSource(ru)
ru_corpus <- Corpus(ru_source)

# Cleaning Russian corpus
ru_corpus <- tm_map(ru_corpus, content_transformer(tolower))
ru_corpus <- tm_map(ru_corpus, removePunctuation)
ru_corpus <- tm_map(ru_corpus, stripWhitespace)
ru_corpus <- tm_map(ru_corpus, removeWords, stopwords("Russian"))



# Internet example
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
