## Run analysis, write model results

## Before:
## After:

library(TAF)
library(stockassessment)

mkdir("model")

(load("bootstrap/data/sam_fit/fit.RData"))

retro_fit <- stockassessment::retro(fit, year = 2017:2021)

save(fit, file = "model/fit.RData")
save(retro_fit, file = "model/retro_fit.RData")


# copy data to model folder

# ...

# copy exe to model folder
#file.copy(
#  'bootstrap/software/ss_win.exe',
#  'model/ss_win.exe', 
#  overwrite = TRUE
#)


#setwd('model')
#system('ss_win.exe', intern = TRUE)
#setwd("..")
