#############################
# Pre Lab                   #
#############################

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
adopted <- animaldata[animaldata$Outcome.Type =="Adoption",]

daystoadopt <-adopted$Days.Shelter
#Was the first owner-surrendered animal in the dataset neutered?
#Neutered.Status
#https://www.r-bloggers.com/which-function-in-r/
which(daystoadopt>150)
plot(animaldata$daystoadopt)


#############################
#     Lab                   #
#############################

#Access CookBook
library(SDSFoundations)
?AnimalData

#Show how many adult(at intake) cats and dogs are in the dataset
table(animaldata$Animal.Type)

#how many adult dogs are in the shelter
dogs <- animaldata[animaldata$Animal.Type =="Dog",]
adultDogs<-dogs[dogs$Age.Intake>0,]
nrow(adultDogs)

#how many adult cats are in the shelter
cats <- animaldata[animaldata$Animal.Type =="Cat",]
adultCats<-cats[cats$Age.Intake>0,]
nrow(adultCats)

#what is the shape of distrbution of weight for adult dogs?
hist(adultDogs$Weight)

#what is the shape of distrbution of weight for adult cats?
hist(adultCats$Weight)

#Which measure of center should be used to describe the average weight of the adult cats?
#mean

#Average adult cat weight in pound
mean(adultCats$Weight)

#What the standard deviation of adult cats?
sd(adultCats$Weight)





