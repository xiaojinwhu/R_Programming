pollutantmean <- function(directory,pollutant,id = 1:332){
    csvfile <- list.files(directory,full.names = TRUE)
    pollutantdata <- data.frame()
    for (i in id){
        pollutantdata <- rbind(pollutantdata,read.csv(csvfile[i]))
    }
    subdata <- pollutantdata[,pollutant]
    mean(subdata,na.rm = TRUE)
}