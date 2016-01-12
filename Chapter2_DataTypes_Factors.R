rm(list = ls())

#Create the data frames
patientID <- c(101, 102, 103, 104)
age <- c(25, 34, 28, 52)
diabetes <- c("Type1", "Type2", "Type1", "Type1")           #Nominal data
status <- c("Poor", "Improved", "Excellent", "Poor")        #Ordinal data

#Type of the original data
typeof(diabetes)
typeof(status)


#factor
# 1. factor strores the categorical values as a vector of integers in the range [1..k] , 
#     where k is the number of unique values in the niminal vaiable and an intenal vector of
#     character strings mapped to these integers

#nominal categorical variable
typeof(diabetes)
diabetes <- factor(diabetes)
typeof(diabetes)

#Ordinal categorical variable
typeof(status)
status <- factor(status, order=TRUE, levels=c("Poor", "Improved", "Excellent"))


patientdata <- data.frame(patientID, age, diabetes, status, row.names=patientID)

patientdata

#Structure of the patient data
str(patientdata)

summary(patientdata)

# N. B.
# Please note that 
# Type of the categorical variables are autometically changed to integer
# when a dataframe is created from the data and factor conversation is not required
typeof(patientdata$diabetes)
typeof(patientdata$status)
