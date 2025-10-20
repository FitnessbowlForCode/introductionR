
# Befehl zum Import einer Datendatei im Format "txt (tabstopp-getrennt)"

# zuerst: # Verzeichnis ausw?hlen, in dem sich die Datei befindet.
# Wichtig dabei: Keine backslashes, sondern slashes (/) verwenden!
setwd("C:/Beispielpfad")

# nun: Datei importieren
dat = read.delim(file = "Beispieldatei.txt", header = TRUE, sep = "\t", dec = ",")
# header = TRUE muss gesetzt werden, falls in der ersten Zeile der Datei Ueberschriften (z.B. Variablennamen)
# stehen
# Falls man weitere Infos benoetigt -> in der R-Hilfe mittels ?read.delim oder im Internet nachsehen!

# grundlegende Befehle, um sich die Struktur, usw. des Datensatzes anzeigen zu lassen
# (ist sinnvoll, um einen ungefaehren Eindruck zu bekommen, ob der Import vernuenftig funktioniert hat)
str(dat)  # grundlegende Infos ueber die Struktur des Datensatzes (Variablennamen, -typ, etc.)
head(dat) # zeigt die ersten paar Zeilen an
tail(dat)  # zeigt das "Ende" des Datensatzes (die letzten paar Zeilen) an

# Befehle in R zum Erstellen verschiedener Grafiken: 

# - x-y-Streudiagramm: plot
# - Boxplot: boxplot
# - Balkendiagramm: barplot


# Fuer mehr Moeglichkeiten/etwas intuitivere Funktionen bzw. schoenere Plots: ggplot2-Package installieren
# Fuer Hilfe zu den einzelnen Funktionen siehe z.B. http://www.cookbook-r.com/Graphs/


# Befehle, um deskriptive Lage- und Streuungsmasse zu berechnen
# - Mittelwert: mean
# - Median: median
# - Modus: table-Befehl verwenden und dann visuell den Modalwert / die Modalwerte ablesen
# - Varianz bzw. Standardabweichung: var bzw. sd
# - Minimum und Maximum: range
# - Interquartilsabstand: IQR
# - Empirische Quantile: quantile
# - Simultane Ausgabe von Min, 1.Q., Median, Mittelwert, 3.Q., Max: summary

# Bemerkungen:
# - Vorsicht: Falls man fehlende Werte (NA) in den Daten hat, sollte man das Argument na.rm = TRUE setzen
# - Wichtig f?r den Vergleich mit h?ndisch berechneten Ergebnissen: summary und quantile verwenden per Default eine 
# bestimmte Definition der Quantile. Bei quantile kann man das mittels type ?ndern (type = 1 ist die 
# Inverse der empirischen Verteilungsfunktion, type = 2 ist die "Mittelungs"-Version, die man auch in der Schule
# oft verwendet)



# Vierfeldertafel f?r zwei Variablen Var1 und Var2 eines data frames dfr erstellen: 
tab = table(dfr$Var1, dfr$Var2)

# Zeilen- und Spaltensummen 
addmargins(tab)

# Zur Berechnung z.B. eines odds ratios muss man eigentlich nur wissen, wie man einzelne Elemente
# des Tables auswaehlen kann: z.B. Element in 1. Zeile und 1. Spalte ist:
tab[1,1]


