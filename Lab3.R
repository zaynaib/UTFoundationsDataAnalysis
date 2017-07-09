#############################
# Pre Lab                   #
#############################

#read the data from the csv file
library(SDSFoundations)
#or bull<-read.csv("BullRiders.csv)
bull<-BullRiders
nrow(bull)
head(bull,10)

#Of the top 15 riders so far in 2015, how many rides were completed by the rider with the fewest buck-outs in 2014?

Rank15
RidePer14
BuckOuts14
top15<-head(bull,15)
top15$BuckOuts14