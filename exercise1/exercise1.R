setwd("/home/alex/PLUS/WS2025/einfR/introductionR/exercise1/.")
data_frame <- read.delim(file = "GluLevelsData.txt", header = TRUE)

print("Summary output: ")
summary(data_frame)
str(data_frame)

group_t <- subset(data_frame, group == "T")
group_c <- subset(data_frame, group == "C")

print("group_T Output: ")
summary(group_t)

print("group_C Output: ")
summary(group_c)

sd_t_pre <- sd(group_t$pre, na.rm = TRUE)
sd_t_post <- sd(group_t$post, na.rm = TRUE)

print(paste("Standard deviation group T pre: ", sd_t_pre))
print(paste("Standard deviation group T post: ", sd_t_post))

sd_c_pre <- sd(group_c$pre, na.rm = TRUE)
sd_c_post <- sd(group_c$post, na.rm = TRUE)

print(paste("Standard deviation group C pre: ", sd_c_pre))
print(paste("Standard deviation group C post: ", sd_c_post))


# Exercise1f via help from ChatGPT
library(tidyverse)

# Daten vorbereiten
data <- tribble(
    ~group, ~patient, ~pre, ~post,
    "T", "1A", 69, 25,
    "T", "2B", 32, 23,
    "T", "3C", 36, 26,
    "T", "4D", 42, 19,
    "T", "5E", NA, 18,
    "T", "6F", 30, 19,
    "T", "7G", 27, 28,
    "T", "8H", 18, 16,
    "T", "9I", 19, 12,
    "T", "10J", 11, 16,
    "T", "11K", 32, 11,
    "T", "13M", 39, 19,
    "T", "14N", 22, 19,
    "T", "16P", 20, 17,
    "C", "1a", 48, 50,
    "C", "2b", 41, 27,
    "C", "3c", 53, 23,
    "C", "4d", 28, 19,
    "C", "5e", 28, 30,
    "C", "6f", NA, 23,
    "C", "7g", 25, 28,
    "C", "8h", 46, 40,
    "C", "9i", 20, 15,
    "C", "10j", 39, 20,
    "C", "11k", 20, 19,
    "C", "12l", 10, 19,
    "C", "13m", 24, 19,
    "C", "14n", 20, NA
)

# Daten in langes Format
data_long <- data %>%
    pivot_longer(cols = c(pre, post), names_to = "time", values_to = "value")

# Gruppendurchschnitt berechnen
group_mean <- data_long %>%
    group_by(group, time) %>%
    summarize(mean_value = mean(value, na.rm = TRUE), .groups = "drop")

# Plot erstellen
ggplot() +
    # Linien für einzelne Patienten
    geom_line(
        data = data_long, aes(x = time, y = value, group = patient, color = group),
        size = 0.5, alpha = 0.5
    ) +
    geom_point(
        data = data_long, aes(x = time, y = value, group = patient, color = group),
        size = 1.5, alpha = 0.5
    ) +
    # Dicke Linie für Gruppendurchschnitt
    geom_line(
        data = group_mean, aes(x = time, y = mean_value, color = group, group = group),
        size = 2
    ) +
    geom_point(data = group_mean, aes(x = time, y = mean_value, color = group), size = 3) +
    theme_minimal() +
    labs(
        title = "Pre- vs. Post-Werte nach Patient und Gruppe",
        x = "Zeitpunkt",
        y = "Wert",
        color = "Gruppe"
    ) +
    theme(legend.position = "bottom")
