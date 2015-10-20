complete <- function(directory,id = 1:332){
    dataframe <- data.frame()
    csvfile <- list.files(directory,full.names = TRUE)
    for (i in id){
        pollutantdata <- data.frame()
        pollutantdata <- rbind(pollutantdata,read.csv(csvfile[i]))
        nobs <- sum(complete.cases(pollutantdata))
        dataframe <- rbind(dataframe,data.frame(i,nobs))
    }
    dataframe
}