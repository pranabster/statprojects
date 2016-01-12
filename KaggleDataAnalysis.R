rm(list = ls())

ageGender <- read.table("C:/dev/MyProjects/statprojects/input/age_gender_bkts.csv", header=TRUE, sep=",")
length(ageGender)
dim(ageGender)
names(ageGender)
str(ageGender)
summary(ageGender)

attach(ageGender)
opar <- par(no.readonly=TRUE)
#par(pin=c(3, 6))
hist(log(population_in_thousands), col = "blue")
par(opar)


sessions <- read.table("C:/dev/MyProjects/statprojects/input/sessions.csv", header=TRUE, sep=",")
length(sessions)
dim(sessions)
names(sessions)
str(sessions)
summary(sessions)



data <- data.frame(x = runif(200, 1, 10))
beta <- 5
sigma2 <- 4
data$y <- 0 + beta*data$x + rnorm(200, 0, sigma2)
plot(data$x, data$y)
