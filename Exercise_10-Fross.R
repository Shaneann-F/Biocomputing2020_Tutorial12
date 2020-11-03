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

  
