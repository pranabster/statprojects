rm(list = ls())

#Plotting a graph
attach(mtcars)
plot(wt, mpg)
abline(lm(mpg~wt))
title("Regression of MPG on Weight")
detach(mtcars)


#Example2
dose <- c(20, 30, 40, 45, 60)
drugA <- c(16, 20, 27, 40, 60)
drugB <- c(15, 18, 25, 31, 40)
plot(dose, drugA, type="b")  

#list of current graphical settings
par()
par(no.readonly = TRUE)

#Changing graphicis params
opar <- par(no.readonly=TRUE)
par(lty=2, pch=17)
plot(dose, drugA, type="b")
par(opar)


#providing the optionname=value pairs directly to a high-level plotting function instead of setting it explictily.
#In this case, the options are only in effect for that specific graph.
plot(dose, drugA, type="b", lty=2, pch=18)


# pch : Specifies the symbol to use when plotting points
# cex : Specifies the symbol size.
# lty : Specifies the line type
# lwd : Specifies the line width
opar <- par(no.readonly=TRUE)
#par(pin=c(2, 3))
par(lwd=2, cex=1.5)
par(cex.axis=.75, font.axis=3)
plot(dose, drugA, type="b", pch=19, lty=2, col="red")
plot(dose, drugB, type="b", pch=23, lty=6, col="blue", bg="green")
par(opar)


