# Exercise 1
load("C:/Users/Legion/Downloads/depression (2).RData")
depression
depression$Age
#We will recode the variable gender with the labels "Male" and "Female"
depression$Gender = replace(depression$Gender,depression$Gender==1,'Female')
depression$Gender = replace(depression$Gender,depression$Gender==2,'Male')
depression$Gender
help(replace)

#Q. What are the categorical variables in this dataset?
# Hospt - The number describes which hospital is being referred to
# Treatment - What was the treatment given to them
# Outcome - What was the outcome of the treatment, successful or not
# Gender - It represents either male or female

#Q. What are the qunatitative variables in this dataset?
# Time - The data can be recorded at multiple times with arithmetic meaning
# AcuteT - Represent a unique characteristic of patient which is non recurring
# Age - Patients can have random age which is unique for every patient


# Exercise 2
load("C:/Users/Legion/Downloads/stat1 (1).RData")
friends
friends$Friends
t = table(friends$Friends)
t
#To see proportion of each category
prop = prop.table(t)
prop
#To see percentage of each category
percentage = prop*100
percentage
#To make a pie chart
pie(t)
pf = round(percentage,1)
pf
lbl = paste(c("No difference","Opposite sex","Same sex"),pf,"%",sep=" ")
lbl
pie(t,label=lbl)

#Q. Describe the distribution of the variable "friends" in dataset.
# The students are NOT divided equally among the three categories. 
# About 50% of the students find it as easy to make friends with the opposite sex as with the same sex. 
# Among the remaining 50% of the students, the majority (36.2%) find it easier to make friends with people of the opposite sex. 
# The remainder (13.7%) find it easier to make friends with people of their own sex.

# Exercise 3
load("C:/Users/Legion/Downloads/actor_2013.RData")
actor_age
# making and modifying the histogram
hist(actor_age$Age)
actor_age$Age
hist(actor_age$Age, xlab="Age of Best Actor Oscar Winners (1970-2013)", main="")
hist(actor_age$Age, xlab="Age of Best Actor Oscar Winners (1970-2013)", ylab="Number of Actors", main="Best Actor Oscar Winners Ages")
hist(actor_age$Age, breaks=20, xlab="Age of Best Actor Oscar Winners (1970-2013)", main="")
x11()
hist(actor_age$Age, xlab="Age of Best Actor Oscar Winners (1970-2013)", ylab="Number of Actors", main="Best Actor Oscar Winners Ages")

#Q. Describe the distribution of the ages of the Best Actor Oscar winners. 
#   Be sure to address shape, center, spread and outliers.
#
# Shape - The data is skewed to the right, most winners are relatively young aged
# Center - The data is centered about 43.5, that means half people are over it, and half are under it
# Spread - The data is spread across from 30 years to 75 years.
# Outliers - The data has only one outlier around the age of 75

# Various statistical properties of the data
summary(actor_age$Age)
mean(actor_age$Age)
sd(actor_age$Age)
var(actor_age$Age)
median(actor_age$Age)
IQR(actor_age$Age)       
min(actor_age$Age)
max(actor_age$Age)
length(actor_age$Age)
quantile(actor_age$Age, 0.25)
quantile(actor_age$Age, 0.75)
range(actor_age$Age)
# List the statistical properties of the data
# No. of Observations = 44 || Mean = 44.98 || Min = 29 || Max = 76 || Median = 43.5
# Range = 47 || Inter Quartile Range = 12.25


load("C:/Users/Legion/Downloads/graduation.RData")
grad_data
summary(grad_data)
boxplot(grad_data)
boxplot(grad_data, xlab="Colleges",ylab ="Graduation Rates", main="Comparison of Graduation Rates")
boxplot(grad_data, horizontal=TRUE, ylab="Colleges",xlab ="Graduation Rates", main="Comparison of Graduation Rates")


load("C:/Users/Legion/Downloads/sdintuition.RData")
ratings
#Calculating the standard deviation of each column
sapply(ratings, sd)

#Q. What are the standard deviations of all the classes?
# Class I - 1.5789 || Class II - 4 || Class III - 2.6311

#Q. Assume that the average rating in each of the three classes is 5. 
#   Judging from the table and the histograms, which class would have the largest standard deviation? 
#   And which one would have the smallest standard deviation? Explain your reasoning.
#
# In class I, almost all the ratings are 5, which is also the mean. The average distance between the observations and the mean, then, would be very small. 
# In class II most of the observations are far from the mean (at 1 or 9). The average distance between the observations and the mean in this case would be larger. 
# Class III is the case where some of the observations are close to the mean, and some are far, so the average distance between the observations and the mean would be somewhere in between class I and II.
# Ranking of Std. Dev from smallest to largest - 
# Class I - Class III - Class II
