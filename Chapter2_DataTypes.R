#Data Types

#================================================================
#Vector - one dimensional array with elements from the same mode
# 1 based index
# Can contain only one data type - one mode
#================================================================

a <- c(3,1,8,5,9)
print(a[1])
print(a[c(3,5)])
print(a[2:5])

#================================================================
#Matrices - two dimensional array with elements from the same mode
#1 based index
# Can contain only one data type
#================================================================

numberMatrix <- matrix(1:10, nrow = 2)  
numberMatrix

numberMatrix[1]
numberMatrix[1,]
numberMatrix[,2]
numberMatrix[1,3]
numberMatrix[1,c(3,5)]

cells <- c(1,26,24,68)
rnames <- c("R1", "R2")
cnames <- c("C1", "C2")

#Create matrix arrange cells by row
mymatrix <- matrix(cells, nrow=2, ncol=2, byrow=TRUE, dimnames=list(rnames, cnames))
mymatrix

#Create matrix arrange cells by column
mymatrix <- matrix(cells, nrow=2, ncol=2, byrow=FALSE, dimnames=list(rnames, cnames))
mymatrix


#================================================================
#Array
# Arrays have more than 2 dimensions
# Can contain only one data type
#================================================================
xdim <- c("x1", "x2","x3","x4")
ydim <- c("y1", "y2")
zdim <- c("z1", "z2", "z3")
threeDimArray <- array(1:24, dim = c(4,2,3), dimnames = list(xdim, ydim, zdim))
threeDimArray

threeDimArray["x1","y1","z2"]
threeDimArray["x1",,"z3"]

#================================================================
# Dataframes
# Can contain only multimodal data
#================================================================
patientID <- c(101, 102, 103, 104)
age <- c(25, 34, 28, 52)
diabetes <- c("Type1", "Type2", "Type1", "Type1")           #Nominal data
status <- c("Poor", "Improved", "Excellent", "Poor")        #Ordinal data
patientdata <- data.frame(patientID, age, diabetes, status)
#patientdata <- data.frame(patientID, age, diabetes, status, row.names=patientID)

patientdata
names(patientdata)

patientdata[2]
patientdata[2:4]
patientdata[c(2,3)]
patientdata["age"]
patientdata[c("age","diabetes")]

#$ notation is used to indicate a particular variable from a given data frame
patientdata$age
patientdata$diabetes

#cross tabulation
table(patientdata$diabetes, patientdata$status)


#example - Let's  
rm(list = ls())

mtcars

summary(mtcars)
plot(mtcars$mpg, mtcars$disp)
plot(mtcars$wt, mtcars$mpg, main = "Plot for wt Vs mpg - mtcars inbuilt data", xlab = "Weight", ylab = "Milage", col.main = "blue", col.lab = "blue", cex.main = 1.2, cex.lab = 1.0, font.main = 4, font.lab = 3)

attach(mtcars)
plot(mpg, disp)
detach(mtcars)
