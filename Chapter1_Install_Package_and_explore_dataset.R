#Show the lib path
.libPaths()

#show library
library()

#search() tells you which packages are loaded and ready to use
search()

#install packages
install.packages("gclus")

#update packages
update.packages()

#see details on your packages
#lists the packages you have, along with their version numbers, dependencies, and other information
installed.packages()

#load the package using the library
library(base)

#get help for the package it illusitrative functions and how it works
help(package="spatial")

#================================================================
#run a simple linear regression predicting miles per gallon (mpg) 
#from car weight(wt), using the automotive dataset mtcars.
#================================================================

lmfit <- lm(mpg~wt, data=mtcars)
summary(lmfit)
plot(lmfit)
cook<-cooks.distance(lmfit)
plot(cook)
#================================================================


#================================================================
#Installing a package, exploring the dataset, getting help on functions etc.
#================================================================

help.start()
install.packages("vcd")
help(package="vcd")
library(vcd)
help(Arthritis)
Arthritis
example(Arthritis)

