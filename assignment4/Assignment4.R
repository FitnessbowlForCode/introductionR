# Exercise 1 - Restaurantbesuche
## (c)
model_restaurant <- lm(Getraenke ~ Essen, data = daten)

# Zielgröße: Getraenke (y)
# Erklärende Variable: Essen (x)
summary(model_restaurant)

# Exercise 3 - R: Lineare Regression mit Wetterdaten
## (a)
wetter <- read.table("Seehoehe.txt", header = TRUE, dec = ",")

# Check Daten
head(wetter)

# Lineares Modell erstellen
model_wetter <- lm(Temperatur ~ Seehoehe, data = wetter)

# Koeffizienten und Zusammenfassung anzeigen
summary(model_wetter)

# INTERPRETATION
# Der Intercept (Intercept) ist die theoretische Temperatur auf Meereshöhe (0m).
# Der Koeffizient für 'Seehoehe' sollte NEGATIV sein.

## (b)
# Residuenplot zur Überprüfung der Linearität
plot(x = wetter$Seehoehe, 
     y = residuals(model_wetter),
     main = "Residuenplot: Temperatur vs. Seehöhe",
     xlab = "Seehöhe (m)",
     ylab = "Residuen")
abline(h = 0, col = "red", lty = 2) # Nulllinie zur Orientierung rot

# INTERPRETATION:
# Wenn die Punkte wild um die rote Linie streuen: Lineares Modell okay.
# Wenn die Punkte eine Kurve bilden: Modell ist nicht angemessen (nicht linear).

# Exercise 4 - R: Hippocampi Daten
## (a)
Vols <- read.delim("HippocampalVolumes.txt", header = TRUE, dec = ",")

# Überblick verschaffen
str(Vols)
summary(Vols)

# Deskriptive Analyse: Boxplot der Gruppen
# Zeigt, ob sich das Volumen (VolLeft) zwischen den Gruppen (Mci, Sci, Healthy) unterscheidet.
boxplot(VolLeft ~ Group, data = Vols,
        main = "Linkes Hippocampus-Volumen nach Gruppe",
        xlab = "Gruppe", ylab = "Volumen links (cm^3)",
        col = c("blue", "green", "red"))

## (b)
# Streudiagramm (Scatterplot) erstellen
plot(x = Vols$Tiv, y = Vols$VolLeft,
     main = "Zusammenhang: Intrakranielles Volumen vs. Hippocampus Links",
     xlab = "Total Intracranial Volume (TIV)",
     ylab = "Volumen Hippocampus Links",
     pch = 19, col = "blue")

# Einfaches Lineares Modell (Simple Regression)
model_hippo <- lm(VolLeft ~ Tiv, data = Vols)
abline(model_hippo, col = "red", lwd = 2) # Regressionsgerade einzeichnen

summary(model_hippo)
# Interpretation: Ich erwarten einen positiven Zusammenhang. 
# Ein größeres Gehirn (TIV) hat meist auch einen größeren Hippocampus.

# Multiples Lineares Modell (Erweiterung um Alter)
model_hippo_multi <- lm(VolLeft ~ Tiv + Age, data = Vols)
summary(model_hippo_multi)

# Interpretation:
# Schau auf den 'Age' Koeffizienten. Er ist wahrscheinlich negativ, 
# da das Hirnvolumen im Alter oft abnimmt (Atrophie), selbst wenn man TIV konstant hält.

# Modelldiagnose (Assumptions)
par(mfrow = c(2, 2)) # 4 Plots in einem Fenster
plot(model_hippo_multi)
par(mfrow = c(1, 1)) # reset

# Wichtig hierbei: 
# "Residuals vs Fitted" (oben links) sollte keine Struktur zeigen (Linearität).
# "Normal Q-Q" (oben rechts) sollte zeigen, dass Punkte auf der Linie liegen (Normalverteilung der Residuen).