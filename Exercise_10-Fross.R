##Exercise 10
#02 November 2020

# load a package every time you wish to use it
library(ggplot2)
library(cowplot)

#Number 1
##Find some data and enter into an Excel and save a text file
##Write a script that loads this file
Grades <- read.csv("Grades_Exercise.csv")

#Produce a scatter plot of two variables
ggplot(data = Grades, 
       aes(x = Final.Score, y = Minutes.of.Study)) +
  geom_point() + 
  xlab("Final Score") + 
  ylab("Minutes of Study") +
  theme_classic() 

#Include a trend line
ggplot(data = Grades, 
       aes(x = Final.Score, y = Minutes.of.Study)) +
  geom_point() + 
  xlab("Final Score") + 
  ylab("Minutes of Study") +
  stat_smooth(method="lm") +
  theme_classic() 

#Number 2
##Load the data.txt
data = read.table("data.txt", header=TRUE, sep=",", stringsAsFactors=FALSE)

##Write a script that generates two figures that summarizes the data
##Show a barplot of the four populations
ggplot(data, aes(x = region, y = observations)) +
  stat_summary(fun = mean, geom = "bar") +
  xlab("Region") +
  ylab("Observations") +
  theme_Lect24()

##Show a scatter plot of all the observations
ggplot(data, aes(x=region, y=observations)) +
  geom_jitter() +
  xlab("Region") +
  ylab("Observations") +
  theme_classic()
  

##Do the bar and scatter plots tell different stories? Why?
#The bar and scatterplots do tell different stories. The bar plot shows the means for each of the regions which all hover around the same number.
#The scatterplot shows instead where each data point is. While east and west show a pretty spread distriution north is concentrated and south has two discreete populations. The scatter plot offers greater insight into the data.
