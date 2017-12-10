setwd("~/Documentos/GitHub/exploratoryDataAnalysis/")

if(!file.exists('data')) dir.create('data')
fileUrl <- 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
download.file(fileUrl, destfile = './data/household_power_consumption.zip')
unzip('./data/household_power_consumption.zip', exdir = './data')

# read data into R
# According to the problem's condition we use data from the dates 2007-02-01 and 2007-02-02
files <- file('./data/household_power_consumption.txt')
inputData <- read.table(text = grep("^[1,2]/2/2007",readLines(files),value=TRUE), sep = ';', col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), na.strings = '?')

# create output folder
if(!file.exists('exitPlots')) dir.create('exitPlots')
