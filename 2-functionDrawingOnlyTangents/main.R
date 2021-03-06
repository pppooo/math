# ---
# title: "1"
# objective: "Function as tangents"
# author: "Daniel Resende"
# date: "January 24, 2015"
# output: html_document
# ---

# Always loads
source('~/workspace/math/constants.R')

cat("\014")
# Chart
pallete <- c('1B305D', '32557B', 'A59750', '6B7D31', '3B461B')
pallete <- paste('#', pallete, sep='')
gray <- '#000000'

# Function
f <- function(x) {
    -4/3*x^2 + 2*x + 5
}

xDomain <- seq(-2, 2, by=.02)
# yDomain <- range(y)
xRange <- range(xDomain)
# yRange <- yDomain

par(mfrow=c(1,1))
curve(f, xlim=xRange, n=201, main="Derivatives: x^3 + x^2 - x")
abline(h = 0, v = 0, col = "gray30")

# png("derivatives.png", width=960, height=590)
x <- sapply(xDomain, function(x, n=.1) {
    slope <- (f(x + n) - f(x - n)) / (2*n)
    intercept <- f(x) - slope*x
    abline(a=intercept, b=slope, col=gray)
})
# dev.off()

