setwd("~/Documentos/GitHub/exploratoryDataAnalysis/")

# declare output plot folder
if (!file.exists('exitPlots')) {
    dir.create('exitPlots')
}

# load data
source('createDataSet.r')

# change time format in input data 
inputData$Date <- as.Date(inputData$Date, format = '%d/%m/%Y')
inputData$DateTime <- as.POSIXct(paste(inputData$Date, inputData$Time))
# define exit device
png(filename = './exitPlots/plot2.png', width = 480, height = 480, units='px')
# plot figure
plot(inputData$DateTime, inputData$Global_active_power, xlab = '', ylab = 'Global Active Power (kilowatt)', type = 'l')
# close device
dev.off()
