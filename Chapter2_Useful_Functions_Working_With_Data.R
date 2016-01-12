rm (list = ls())

#refer to the inbuilt mtcars data set
mtcars

#Functions
#Number of elements/components/variables/column vectors 
length(mtcars)

#Dimensions of an object -> shows the number of rows and columns of the dataset 
dim(mtcars)

#Structure of an object.
str(mtcars)

#Class or type of an object.
class(mtcars)
class(mtcars$wt) 
typeof(mtcars)

#How an object is stored.
mode(mtcars)
mode(mtcars$mpg)

#Names of components in an object.
names(mtcars)

#Lists the first part of the object.
head(mtcars)
head(mtcars, n = 10)

#Lists the last part of the object.
tail(mtcars)
tail(mtcars, n = 10)

#Lists current objects.
ls()


#========================================================================================
# Combining objects
#========================================================================================
patientID <- c(101, 102, 103, 104)
age <- c(25, 34, 28, 52)
diabetes <- c("Type1", "Type2", "Type1", "Type1")           #Nominal data
status <- c("Poor", "Improved", "Excellent", "Poor")        #Ordinal data


#Combines objects as columns -> creates a matrix out of the data.
combineddata <- cbind(patientID, age, diabetes, status)
combineddata
class(combineddata)

dataframe <- data.frame(combineddata)
dataframe

#Lets add more rows to the data
#Combines objects as rows.
newpatientID <- c(105, 106)
newage <- c(27, 38)
newdiabetes <- c("Type2", "Type1")        #Nominal data
newstatus <- c("Poor", "Improved")        #Ordinal data

newpatientsmatrix <- cbind(newpatientID, newage, newdiabetes, newstatus) 

newpatientsdf <- data.frame(newpatientsmatrix)

names(newpatientsdf) <- names(dataframe)

#we are using rbind to merge two data sets vertically i.e. second dataset comes after the first dataset 
rbind(dataframe, newpatientsdf)


