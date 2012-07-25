# figure 8.1 of Cover "Universal Portfolios"

require(logopt)
data(nyse.cover.1962.1984)
x <- nyse.cover.1962.1984
xik <- x[,c("iroqu","kinar")]
nDays <- dim(xik)[1]
Days <- 1:nDays
pik <- cumprod(xik)
plot(Days, pik[,"iroqu"], col="blue", type="l", ylim=range(pik), main = '"iroqu" and "kinar"', ylab="")
lines(Days, pik[,"kinar"], col="red")
grid()
legend("topright",c('"iroqu"','"kinar"'),col=c("blue","red"),lty=c(1,1))






