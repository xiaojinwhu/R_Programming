corr <- function(directory,threhold = 0){
    csvfile <- list.files(directory,full.names = TRUE)
    crdata <- data.frame()
    corlist <- c()
    for (i in 1:332){
        pollutantdata <- read.csv(csvfile[i])
        n <- sum(complete.cases(pollutantdata))
        if (n >= threhold){
            corlist <- c(corlist,cor(pollutantdata$sulfate,pollutantdata$nitrate,use = "pairwise.complete.obs"))
        }
    }
    corlist
}