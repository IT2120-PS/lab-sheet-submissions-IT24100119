setwd("C:\\Users\\rashm\\OneDrive\\Desktop\\IT24102567")

##Exercise

#i
y <- rnorm(25, mean = 45, sd = 2)
print(y)

#ii
t.test(y, mu = 46, alternative = "less")
