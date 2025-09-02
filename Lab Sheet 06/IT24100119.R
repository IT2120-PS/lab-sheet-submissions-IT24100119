setwd('C:\\Users\\it24100119\\Desktop\\IT24100119')

dbinom(44,40,0.92)

pbinom(35,44,0.92,lower.tail = TRUE)

1-pbinom(37,44,0.92,lower.tail = TRUE)

pbinom(37,44,0.92,lower.tail = FALSE)

pbinom(42,44,0.92,lower.tail = TRUE)-pbinom(39,44,0.92,lower.tail = TRUE)

dpois(6,5)

ppois(6,5,lower.tail= FALSE)

#Exercise

dbinom(47,50,0.85)

1 - pbinom(46,50,0.85)

#problem two

#i.Distribution of X(poisson)
dpois(15,12)

#ii.Probability that exactly 15 calls are recieved in an hour
dpois(15,12)

#iii.Probability that at least 15 calls are recieved in an hour
ppois(15,12, lower.tail = FALSE)

