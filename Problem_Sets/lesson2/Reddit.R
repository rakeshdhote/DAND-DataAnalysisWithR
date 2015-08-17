WD <- getwd() # get current working directory
if (!is.null(WD)) setwd(WD) #set WD

reddit <- read.csv('reddit.csv')
str(reddit)
table(reddit$employment.status)
summary(reddit)
levels(reddit$age.range)

library(ggplot2)
qplot(data = reddit, x = age.range)

#ordered levels
reddit$age.range <- ordered(reddit$age.range, levels = c("Under 18", "18-24", "25-34", "35-44", "45-54", "55-64", "65 or Above"))
qplot(data = reddit, x = age.range)

reddit$age.range <- factor(reddit$age.range, levels = c("Under 18", "18-24", "25-34", "35-44", "45-54", "55-64", "65 or Above"), ordered=T)
qplot(data = reddit, x = age.range)
