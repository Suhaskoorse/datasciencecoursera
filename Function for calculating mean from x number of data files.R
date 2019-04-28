#clearing the environement 
rm(list = ls())
# setting up my working directory
setwd("C:/Users/Suhas/OneDrive/Documents/Personal/Rprograms")
pollutantmean <-function(directory,pollutant, id) 
{
  # Putting all data into files 
  files_full <-list.files(directory, full.names=TRUE)
  #Create empty frame work
  dat <-data.frame()
  for (i in id){ 
    dat <- rbind(dat, read.csv(files_full[i]))
  }
  mean(dat[,pollutant],na.rm=TRUE)
  
}
pollutantmean("specdata","sulfate",1:10)