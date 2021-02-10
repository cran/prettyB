## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(results = "hide", echo = TRUE )
set.seed(1)
library(prettyB)

## ---- echo = c(-1, -2)--------------------------------------------------------
op = par(mfrow = c(1, 2))
reset_prettyB()
x = rlnorm(100)
hist(x)
hist_p(x)

## ---- echo = c(-1, -2)--------------------------------------------------------
op = par(mfrow = c(1, 2))
reset_prettyB()
y = rnorm(100)
hist(y, main = "Base Graphics", sub = "Sub heading", 
                       xlab = "x-axis", ylab = "y-axis")
hist_p(y, main = "prettyB",  sub = "Sub heading", xlab = "x-axis", ylab = "y-axis")

## ---- echo = c(-1, -2)--------------------------------------------------------
op = par(mfrow = c(1, 2))
reset_prettyB()
z = rt(100, 4)
hist(z, col = "grey60", freq = FALSE)
hist_p(z, col = "grey60", freq = FALSE)

## ---- out.width="100%"--------------------------------------------------------
op = par(mfrow = c(1, 2))
reset_prettyB()
library("grDevices") # for colours
tN = table(stats::rpois(100, lambda = 3))
barplot(tN)
barplot_p(tN)

## -----------------------------------------------------------------------------
reset_prettyB()
r = barplot(tN, col = rainbow(20))
#- type = "h" plotting *is* 'bar'plot
lines(r, tN, type = "h", col = "red", lwd = 2)
r = barplot_p(tN, col = rainbow(20))
#- type = "h" plotting *is* 'bar'plot
lines(r, tN, type = "h", col = "red", lwd = 2)

## -----------------------------------------------------------------------------
reset_prettyB()
barplot(tN, space = 1.5, axisnames = FALSE,
        sub = "barplot(..., space= 1.5, axisnames = FALSE)")
barplot_p(tN, space = 1.5, axisnames = FALSE,
        sub = "barplot(..., space= 1.5, axisnames = FALSE)")

## -----------------------------------------------------------------------------
reset_prettyB()
barplot(VADeaths, beside = TRUE,
        col = c("lightblue", "mistyrose", "lightcyan",
                "lavender", "cornsilk"),
        legend = rownames(VADeaths), ylim = c(0, 100))

barplot_p(VADeaths, beside = TRUE,
        col = c("lightblue", "mistyrose", "lightcyan",
                "lavender", "cornsilk"),
        legend = rownames(VADeaths), ylim = c(0, 100))

## -----------------------------------------------------------------------------
par(mfrow = c(1, 2))
plot_p(1:100, rnorm(100), xlab = "X", ylab = "Y")
boxplot_p(rnorm(100), horizontal = TRUE, 
          main = "A boxplot")

