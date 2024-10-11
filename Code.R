library(RIdeogram)

# Load the karyotype data
data <- read.csv("karyotype_dual_comparison.csv")
head(data)

# Check species in the dataset
table(data$species)

# Load the synteny dual comparison data
data(synteny_dual_comparison, package = "RIdeogram")
head(synteny_dual_comparison)

# Export synteny_dual_comparison as a CSV file
write.csv(synteny_dual_comparison, "synteny_dual_comparison.csv", row.names = FALSE)

# Create the ideogram
ideogram(karyotype = data, synteny = synteny_dual_comparison)

# Convert the ideogram to PNG
convertSVG("chromosome.svg", device = "png")
