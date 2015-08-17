WD <- getwd() # get current working directory
if (!is.null(WD)) setwd(WD) #set WD

# Load from URL
income <- read.csv("http://datasets.flowingdata.com/tuts/2015/load-data/ACS_13_5YR_S1903.csv",
                   stringsAsFactors=FALSE, sep=",", colClasses=c("GEO.id2"="character"))

head(income)
dim(income)
names(income)
str(income)
# Quick summary
summary(income)

# Subsetting
# Just the first columns
income_total <- income[,1:7]
head(income_total)
dim(income_total)

# Based on value
income_upper <- subset(income_total, HC02_EST_VC02 >= 58985)

# Extract missing data (in thise case, returns empty)
income_without_na <- na.omit(income)

# Change column names
names(income_total) <- c("id", "FIPS", "name", "households", "households_moe", "med_income", "med_income_moe")
head(income_total)

# New columns
income_total$med_min <- income_total$med_income - income_total$med_income_moe
income_total$med_max <- income_total$med_income + income_total$med_income_moe

# Convert existing column
income_total$med_min <- income_total$med_min / 1000
income_total$med_max <- income_total$med_max / 1000








