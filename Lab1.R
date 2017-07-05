#Lab 1

#read in the data file
bike<-read.csv(BikeData.csv)
#Make a table to show how many daily riders are in the original dataset
table(bike$cyc_freq)

#Create a dataframe that includes only daily riders
dailyRiders<-bike[bike$cyc_freq=='Daily',]

#create a table to show the number of male and female riders
table(dailyRiders$gender)

#how many daily male riders are there
nrow(dailyRiders[dailyRiders$gender=='M',])

#what is the average age of all the daily riders
mean(dailyRiders$age)

#what is the average age of the female daily riders
femaleDailyRiders<-dailyRiders[dailyRiders$gender =='F',]
mean(femaleDailyRiders$age)

#what is the average age of the male daily riders
maleDailyRiders<-dailyRiders[dailyRiders$gender=='M',]
mean(maleDailyRiders$age)

#how many observations of male daily riders are of the age of 30 and over
nrow(maleDailyRiders[maleDailyRiders$age>29,])