n <- 100
ratio <- 10/log(100)
plot(log(1:n) * ratio,
     type="l",
     main="Sharpe",
     xlab="Risco",
     ylab="Rentabilidade",
     frame=F)


h <- c(5,10,
       45,50)
sapply(h, function(x) {
    y <- log(x) * ratio
    segments(x, 0, y1=y, lty="dashed")
    segments(0, y, x1=x, lty="dashed")
    log(h)
})
