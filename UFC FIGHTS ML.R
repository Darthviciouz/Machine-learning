#Machine learning for cluster in UFC#
cat("Please select the file from by ",
    "navigating to its location: \n")
directory <- dirname(file.choose())

setwd(directory)

#Load CVS File#
UFC <- read.csv("D:/ML/UFC/ALL UFC FIGHTS 2_23_2016.csv", sep=";", stringsAsFactors=FALSE)
str(UFC)

#Load Libraries#
libs<- c("tm","plyr", "class")
lapply(libs, require, character.only = T)

#set options#
options(stringsAsFactors = TRUE)

#clean data set#
UFC_cl <- UFC
UFC_cl <- UFC_cl[,-1]  
UFC_cl <- UFC_cl[,-3] 
UFC_cl <- UFC_cl[,-5] 
UFC_cl <- UFC_cl[,-5] 

#fighter column#

Win_Fighter <- UFC[UFC$f1result == "win", ]

