##Setting the directory
setwd("C:\\Users\\ASUS\\Desktop\\PS_Lab07")
getwd()

#Question1
#Uniform distribution
#Part1
#It asks to find P(X<=10).Following command gives the cumulative
#probability (<=),if"""lower.tail" argument equals to "True".
punif(10,min=0,max=30,lower.tail=TRUE)

#Part2
#It asks to find P(x>20).This can find using"punif"command as follows.
#You need to rearrange the probability statement as follows
#P(X>20)=1-P(X<=20)
#Then command will be as follows
1-punif(20,min=0,max=30,lower.tail=TRUE)
#Or else following command can also used by keeping arugument "lower.tail"as "FALSE".
punif(20,min = 0,max = 30,lower.tail = FALSE)

#Question 2
#Exponential Distribution

#Part 1
#It asks to find P(X<=3).Following command gives the cumulative
#probability(<=),if""lower.tail"argument equals to "TRUE".
pexp(3,rate=0.5,lower.tail=TRUE)

#Part2
#It asks to find(X>4).This can find using"pexp"command as follows.
#You need to rearrange the probability statement as follows.
#P(X>4) = 1-P(X<=4)
#Then command will be as follows.
1-pexp(4,rate =0.5,lower.tail =TRUE)
#or else following command can also used by keeping argument "lower.tail"as "FALSE".
#Here ,when taht argument is"False",it means that P(X>4)
pexp(4,rate = 0.5,lower.tail = FALSE)

#Part 3
#It asks to find P(2<X<4).This can find using"pexp"command as follows.
#You need to rearrange the probability statement as follows.
#P(2<X<4) = P(X<=4)-P(X<=2)
pexp(4,rate = 0.5,lower.tail = TRUE)-pexp(2,rate =0.5,lower.tail = TRUE)

#Question 3
#Normal Distribution
#Here,random variable x has normal distribution with mean = 36.8 and standard deviation = 0.4

#Part1
#It asks to find P(X>=37.9).Following command gives the cumulative
1-pnorm(37.9,mean=36.8,sd = 0.4,lower.tail = TRUE)

#Part2
#It asks to find P(36.4<X<36.9).This can find using"pnorm"command as follows.
pnorm(36.9,mean = 36.8,sd = 0.4,lower.tail = TRUE)-pnorm(36.4,mean = 36.8,sd=0.4,lower.tail = TRUE)

#Part3
#Let consider that the maximum temperature they want to find is "b".
#Then, P(X<b)=1.2% = 0.012
#Here,they want to find the value of "b".This can be done using "qnorm"command.
qnorm(0.012,mean = 36.8,sd = 0.4,lower.tail = TRUE)

#Part 4
qnorm(0.01,mean = 36.8,sd = 0.4,lower.tail = FALSE)



#Exercise 
#Question 1
prob1 <- punif(25, min = 0, max = 40) - punif(10, min = 0, max = 40)
prob1
#Question 2
prob2 <- pexp(2, rate = 1/3)
prob2
#Question 3
#Part 1
1 - pnorm(130, mean = 100, sd = 15)
#Part 2
qnorm(0.95, mean = 100, sd = 15)



