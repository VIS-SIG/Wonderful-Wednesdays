projectRoot <- "D:/WW/63/"

#library(dplyr)

files = list.files(pattern = ".csv", path = projectRoot)

setwd(projectRoot)

for (i in files){
  iname=sub("\\.csv","",i)
  f=read.csv(i, header = T)
  f$file=iname
  assign(iname,f)
}

dflist = as.list((sub("\\.csv","",files)))

data_all <- rbind(`plot-data-a-llc`, `plot-data-a-ulc`, `plot-data-a-mean`, `plot-data-b-llc`, `plot-data-b-ulc`, `plot-data-b-mean`)

data_all$class <- ifelse(grepl( "-a-", data_all$file, fixed = TRUE), "a", "b")
data_all$treat <- ifelse(grepl( "-a-", data_all$file, fixed = TRUE), "SZC group", "SPS group")

data_all$stat <- trimws(data_all$file, whitespace = ".*\\-")

data_all$x    <- round(data_all$x, 0)

data_all$visit = factor(data_all$x, 
                     levels = c(0, 1, 2, 3, 4, 5), 
                     labels = c("Baseline", "1st week", "2nd week", "4th week", "6th week", "8th week"))

data_all$serumK    <- round(data_all$y, 2)

write.csv(data_all, "fig2data.csv")
