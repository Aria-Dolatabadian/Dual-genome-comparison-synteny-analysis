library(RIdeogram)

data <- read.csv("karyotype_dual_comparison.csv")

head(data)

table(data$species)

data(synteny_dual_comparison, package="RIdeogram")
head(synteny_dual_comparison)

ideogram(karyotype = data, synteny = synteny_dual_comparison)
convertSVG("chromosome.svg", device = "png")
