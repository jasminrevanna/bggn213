---
  title: 'Class 5'
author: "Jasmin Revanna"
date: "1/2020"
output: github_document
---

# Class 5
# Data visualization and graphics in R

plot(1:5, col="light blue", typ="o")

# Class 2
# Read the data file "weight_chart.txt"

baby <- read.table("bimm143_05_rstats/weight_chart.txt", header = TRUE)

plot(baby$Age, baby$Weight, typ="o", col="light pink", pch=15, cex=1.5, lwd=2, ylim=c(2,10), xlab = "Age (months)", ylab = "Weight (kg)", main = "Baby Chart")

plot(1:5, pch=1:5, col=1:5)

mouse <- read.table("bimm143_05_rstats/feature_counts.txt", header = TRUE, sep = "\t")

dotchart(mouse$Count, label=mouse$Feature)

par(mar=c(3.1, 11.1, 4.1, 5))
barplot(mouse$Count, names.arg=mouse$Feature, horiz=TRUE, ylab="", main="Number of features in the mouse GRCm38 genome", las=1, xlim=c(0,80000), col="light blue")

mf <- read.delim("bimm143_05_rstats/male_female_counts.txt")
barplot(mf$Count, names.arg = mf$Sample, col=rainbow(nrow(mf)))
par(mar=c(5.1, 4.1, 4.1, 2.1))

