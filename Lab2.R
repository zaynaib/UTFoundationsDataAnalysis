#read the data from the csv file
animaldata<-read.csv("AnimalData.csv")

#How many variables are in this dataset
str(animaldata)

#How many of the first 10 animals in the dataset
#were adopted?
#http://rfunction.com/archives/699
head(animaldata, n=10)

#OR we can do some subset magic
outcome <- animaldata$Outcome.Type
head(outcome,n=10)

#Was the first owner-surrendered animal in the dataset neutered?
#Neutered.Status
#https://www.r-bloggers.com/which-function-in-r/
which()
