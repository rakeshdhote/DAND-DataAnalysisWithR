WD <- getwd() # get current working directory
if (!is.null(WD)) setwd(WD) #set WD


statesInfo <- read.csv('stateData.csv')
names(statesInfo)

stateSubset <- subset(statesInfo, state.region == 1) # subset method 1
head(stateSubset, 2)
dim(stateSubset)

stateSubsetBracket <- statesInfo[statesInfo$state.region == 1, ] #subset method 2
head(stateSubsetBracket, 2)
dim(stateSubsetBracket)
