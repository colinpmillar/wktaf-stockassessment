library(icesTAF)

mkdir("report")

(load("model/fit.RData"))

# get years from fit
years <- unique(fit$data$aux[, "year"])

## catage
catage <- read.taf("data/catage.csv")
# row.names(catage) <- years[1:nrow(catage)]

catage <- cbind(catage, total = rowSums(catage))
catage <- rbind(catage, mean = round(colMeans(catage), 2))

write.taf(catage, "report/catage.csv")

