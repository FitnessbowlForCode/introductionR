# 1. Iris-Datensatz laden (falls noch nicht automatisch verfügbar)
data(iris)

setosa <- subset(iris, Species == "setosa")
versicolor <- subset(iris, Species == "versicolor")
virginica <- subset(iris, Species == "virginica")

# 3. Funktion, um nur Mittelwerte aus summary zu extrahieren
get_mean <- function(df) {
    sapply(df[, 1:4], function(x) summary(x)["Mean"])
}

# 4. Mittelwerte für jede Art
mean_setosa <- get_mean(setosa)
mean_versicolor <- get_mean(versicolor)
mean_virginica <- get_mean(virginica)

# 5. Schöne Ausgabe
cat("Mittelwerte der Iris-Arten:\n\n")

cat("Setosa:\n")
print(mean_setosa)
cat("\nVersicolor:\n")
print(mean_versicolor)
cat("\nVirginica:\n")
print(mean_virginica)

# ggplot2 laden
library(ggplot2)

# Plot erstellen
ggplot(iris, aes(x = Petal.Length, y = Petal.Width, color = Species)) +
    geom_point(size = 4) + # Punkte
    xlim(min(iris$Petal.Length), max(iris$Petal.Length)) +
    ylim(min(iris$Petal.Width), max(iris$Petal.Width)) +
    labs(
        title = "",
        x = "Petal.Length",
        y = "Petal.Width"
    ) +
    theme_minimal()
