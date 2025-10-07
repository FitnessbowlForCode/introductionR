# Rscript R_Einführung_2024WS.R

# todo
# Install ggplot2 package --Fertig:)
# Diese Aufgaben ansehen
# .pdf Aufgaben  machen (Aufgabe 1, Aufgaben 2 und Aufgabe 3)

##############

# Beispiel 1: Einführung - Grundlagen

##############


# Fasse Zahlen in einem Vektor zusammen
# Fasse das Alter von 4 MitarbeiterInnen in einem Vektor zusammen

alter <- c(25, 56, 47, 38) # Beispiel: Alter von 4 MitarbeiterInnen
sum(alter)

# Fasse die Zugehörigkeit von 4 MitarbeiterInnen zu einem von 3 Abteilungen (mit den Nummern 1, 2, 3) in einem Vektor zusammen
# Beispiel: Zugehörigkeit zu einem von 3 Kursen


# Fasse die Zugehörigkeit von 4 MitarbeiterInnen zu einem von 3 Abteilungen ("Abt1", "Abt2", "Abt3") in einem Vektor zusammen


# Erzeuge eine "sparsame" Funktion für die möglichen Noten für eine Statistikklausur


# Erzeuge eine "sparsame" Funktion, für jene 10 AbteilungsleiterInnen, welche 40 Jahre alt sind

# Kontrolliere ob die Länge der konsturierten Funtkion wirklich 10 umfasst.

# Zeige Inhalt der Vektoren







##############

# Beispiel 2: Grundlagen Dataframes

##############

# Erstelle folgenden data.frame bsp1

# Geschlecht Alter Gewicht Groesse
# m          28    80      170
# w          48    55      174
# w          35    74      183
# m          49    101      190
# m          21    84      185
# w          39    74      178
# w          57    65      169
# w          46    56      163
# m          41    88      189
# m          62    78      184 -----


# Wähle  die Variable Geschlecht aus:

# Wähle die erste Beobachtung der Variable Geschlecht aus:

# Plot der Daten:  x="Alter" vs. y="Gewicht"

# Wie gross ist das Gewicht aller Personen zusammen?

# arithmetisches Mittel der Altersangabe

# empirische Varianz der Altersangabe -----

# Wertebereich der Altersangabe -----

# Wähle die Information aller Personen aus, die nicht älter als 24 Jahre sind -----

# wie viele Personen sind nicht älter als 24 -----

# Teile das Alter in 2 Altersgruppe "G1" und "G2";
# In "G1" sind alle Personen mit Alter < 25, in "G2" sind die restlichen Personen
# Weise das Ergebnis einer neuen Variable AG vom data.frame bsp1 zu
# Hinweis: ifelse(test, yes, no) -----

# Zeige den Datensatz an -----

# Lasse die Namen der Variablen anzeigen -----

###############

# Beispiel 3: Aktien

###############
# Sie haben 10 Aktien eines Unternehmens im Laufe des Jahres gekauft. Die Tabelle in den Folien zeigt die relative Häufigkeitsverteilung
# des Preises in Euro der Aktien zum Einstandspreis


# Bestimmen Sie folgende Größen: Median, Unteres und Oberes Quantil, Spannweite, Mittelwert




# Stellen Sie die Daten in einen Boxplot dar.



###############

# Beispiel 4: Blütenblätter und der wohlbekannte iris Datensatz

###############

# In R ist der bekannte Datensatz von Fisher über Blütenblätter von Schwertlilien (Iris sp.) verfügbar
# Dieser Datensatz beinhaltet die Spalten Species, Sepal.Length, Sepal.Width, Petal.Length und Petal.Width.
# Den Datensatz ist in R unter "iris" gespeichert.
# (a)  Informieren Sie sich über den Befehl subset und erzeugen Sie sich damit drei Variable virginica, setosa und versicolor
# die jeweils die Daten dieser Art enthalten.
# (b)  Berechnen Sie für jede Art den Mittelwert für die vier Variablen Sepal.Length, Selap.Width, Petal.Length und Petal.Width
# Plotten Sie Petal.Length und Petal.Width für alle Spezies in unterschiedlicher Farbe in einer Grafik.
# Vergessen Sie nicht, xlim und ylim in der plot und points Funktion anzugeben.
# Interpretieren Sie auch die Grafik insbesondere im Hinblick auf eine (eindeutige) Charakterisierung der Arten.


################

# Beispiel Workshop: Life Expectancy -- ggplot

################

# library(dplyr)
# library(tidyverse)
# library(gapminder)
# library(ggplot2)
# China <- gapminder %>%
# filter(country == "China")
# head(China)

# ggplot()


################

# Beispiel 5: Eigene Studie - Relevanz von Daten im Unternehmen

###############

# Versuchen Sie selbstständig den Datensatz zu bearbeiten und zu analysieren
# Lesen Sie dazu den Datensatz geeignet in R ein.
# Erstellen Sie erste deskriptive Ergebnisse (Lage- und Streumaße) und geeignete Visualisierungen.
# Erstellen Sie dazu auch Subgruppen und analysieren Sie Teildatensätze

################

# Beispiel 6: Wetterdaten

################

# Im Datensatz Seehöhe finde sie aktuell protokollierte Temperaturen und Seehöhen aus dem Bundesland Salzburg.


# (a) Berechnen Sie die Koeffizienten eines einfachen linearen Regressionsmodells,
# wobei die Seehohe als Einfluss- und die Temperatur als Zielvariable angesehen werden soll.
# Interpretieren Sie das Ergebnis!

# (b) Ist die Annahme eines linearen Regressionsmodells angemessen? Um diese Frage zu beantworten,
# erstellen Sie bitte einen Residuen-Plot in R (d.h. Modell-Residuen auf der y-Achse und die erklärende Variable auf der x-Achse auftragen).

# (c) Rechnen Sie eine geeignete einfache lineare Korrelation und interrpetieren Sie das Ergebnis


# scratch
3 + 5 == 8

meine_daten <- data_frame(x1 = c(1, 5, 3), x2 = c(2, 7, 3))
meine_daten
meine_daten$x1
mean(meine_daten$x1)
