learnRDataFrames <- function(myY = 3){
    ## make some samples to practice getting specific sets of a data frame
    set.seed(123)
    ## give me a thru f for the letters
    theLetters <- letters[1:6]
    ##print(theLetters)
    ##print(length(theLetters))
    ## give me 6 numbers between 1 and 6
    theNumbers <- sample(1:6,6,replace = TRUE)
    print(theNumbers)
    print(length(theNumbers))

    myData <- data.frame(theLetters, theNumbers, stringsAsFactors = FALSE)
    colnames(myData) <- c("cL","cN")
    print(myData)
    ## newData should be all rows of myData where numbers < myY
    newData <- myData[myData$cN < myY ,] ## rows that meet one condition
    ## example: m[,c(TRUE,FALSE,TRUE)]
    ## example: population[population$POPESTIMATE2009==smallest.state.pop,]
    
    ## to get rid of na values a better approach is to use filter
    ## need to use the dplyr package
    ## library(dplyr)
    newData2 <- filter(myData,
                       cN < myY)

    print(newData2)
    
    ## all about the by function
    

} ## end learnRDataFrames
