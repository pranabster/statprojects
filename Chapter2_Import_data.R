rm(list = ls())

#From key board using the graphical excel like structure
mydata <- data.frame(age=numeric(0), gender=character(0), weight=numeric(0))
mydata <- edit(mydata)
mydata

fix(mydata)
mydata


# import data from delimited text files using read.table() function
# Character data is by default converted into factor
# to switch off this behaviour use Strings
mydataframe <- read.table("C:/dev/MyProjects/statprojects/input/age_weight.csv", header=TRUE, sep=",")
names(mydataframe)
str(mydataframe)

# Create the data frame but this time set strings as factors to false
mydataframe <- read.table("C:/dev/MyProjects/statprojects/input/age_weight.csv", header=TRUE, sep=",", stringsAsFactors = FALSE)
str(mydataframe)

names(mydataframe)[1] <- "Age of the children (in years)"
names(mydataframe)

mydataframe
