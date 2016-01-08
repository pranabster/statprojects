getwd()
setwd("C:/dev/MyProjects/statprojects")

#List the objects in the current workspace
ls()

#Remove (delete) one or more objects
age <- c(1,3,5,2,11,9,3,9,12,3)
rm(age)
rm(list = ls())

#View or set current options.
options()

#Display your last # commands (default = 25)  
history(10)
  
age <- c(1,3,5,2,11,9,3,9,12,3)
weight <- c(4.4,5.3,7.2,5.2,8.5,7.3,6.0,10.4,10.2,6.1)
mean(weight)
sd(weight)
cor(age,weight)
plot(age,weight)


#Demo plots available in R
demo(graphics)
demo(Hershey)
demo(persp)
demo(image)
demo()


