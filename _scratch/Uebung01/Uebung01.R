library.()

library(nycflights13)

#data(package = "nycflights13")
names(flights)
delay <- flights$dep_delay

summary(delay, na.rm = TRUE)

mean(delay, na.rm = TRUE)

summary(delay)

str(flights)

flights_july <- subset(flights, month == 7)

head(flights_july)

flights_origin <- flights$origin

head(flights_origin)

summary(flights$dep_delay)

boxplot(dep_delay~origin,
        data = flights_july,
        ylim = c(-50,120))