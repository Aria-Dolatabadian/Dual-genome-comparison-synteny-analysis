library(RIdeogram)

data <- read.csv("karyotype_dual_comparison.csv")

head(data)

table(data$species)

ideogram(karyotype = data, synteny = synteny_dual_comparison)
convertSVG("chromosome.svg", device = "png")
