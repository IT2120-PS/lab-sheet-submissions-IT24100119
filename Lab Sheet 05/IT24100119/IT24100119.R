setwd('C:\\Users\\it24100119\\Desktop\\IT24100119')

# Import dataset
shareholders <- read.table("Data.txt", header = TRUE, sep = ",")

# View first few rows
head(shareholders)

hist(shareholders$Number_of_Shareholders.thousands.,
     main = "Histogram of Shareholders",
     xlab = "Number of Shareholders (thousands)",
     ylab = "Frequency",
     col = "lightblue",
     border = "black")

breaks <- seq(130, 270, length.out = 8)

hist(shareholders$Number_of_Shareholders.thousands.,
     breaks = breaks,
     main = "Histogram of Shareholders (7 Classes)",
     xlab = "Number of Shareholders (thousands)",
     ylab = "Frequency",
     col = "orange",
     border = "black")

# Frequency table
freq <- hist(shareholders$Number_of_Shareholders.thousands.,
             breaks = breaks,
             plot = FALSE)

# Create table
freq_table <- data.frame(
  ClassInterval = paste(head(freq$breaks, -1), "-", tail(freq$breaks, -1)),
  Frequency = freq$counts
)
print(freq_table)

plot(freq$mids, freq$counts, type = "o",
     main = "Frequency Polygon of Shareholders",
     xlab = "Number of Shareholders (thousands)",
     ylab = "Frequency",
     col = "blue", pch = 16)

cum_freq <- cumsum(freq$counts)

plot(freq$breaks[-1], cum_freq, type = "o",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Number of Shareholders (thousands)",
     ylab = "Cumulative Frequency",
     col = "red", pch = 16)



delivery_times <- read.table("Exercise - Lab 05.txt", header = TRUE)
names(delivery_times)[1] <- "DeliveryTime"  
head(delivery_times)

# Define 9 equal intervals
breaks <- seq(20, 70, length.out = 10)

hist(delivery_times$DeliveryTime,
     breaks = breaks,
     right = FALSE,
     main = "Histogram of Delivery Times",
     xlab = "Delivery Time (minutes)",
     ylab = "Frequency",
     col = "lightblue",
     border = "black")

#The distribution of delivery times is roughly symmetric with a slight right skew. Most deliveries take between 35 and 55 minutes.


# Frequency distribution
freq <- hist(delivery_times$DeliveryTime,
             breaks = breaks,
             right = FALSE,
             plot = FALSE)

cum_freq <- cumsum(freq$counts)

plot(freq$breaks[-1], cum_freq, type = "o",
     main = "Cumulative Frequency Polygon (Ogive) - Delivery Times",
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency",
     col = "blue", pch = 16)



