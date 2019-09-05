num * 2
num <- 5 + 2
num * 2
a * 2

(times <- c(60, 40, 33, 15, 20, 55, 35))
times/60

mean(times)
sd(times)
sqrt(times)
range(times)

times < 30
times == 30
times != 20
times > 20 & times < 50
times < 20 | times > 50
which(times == 35)
sum(times < 30)

#Subsetting
times[3]
times[-3]
times[c(2,4)]
times[c(4,2)]
times[times < 30]
times
times[times > 50] <- 50
times[8] <- NA
mean(times)
mean(times, na.rm=T)
mean(times, 0, T)
mean(na.rm=T, x = times)

#Data frames
mtcars
head(mtcars)
tail(mtcars)
str(mtcars)
row.names(mtcars)
names(mtcars)
nrow(mtcars)
ncol(mtcars)
mtcars$mpg