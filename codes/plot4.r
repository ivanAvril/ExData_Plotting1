setwd("~/Documentos/GitHub/exploratoryDataAnalysis/")

# declare output plot folder
if (!file.exists('exitPlots')) {
    dir.create('exitPlots')
}

# load data
source('createDataSet.r')

# define exit device
png(filename = './exitPlots/plot4.png', width = 480, height = 480, units='px')
# plot figure
par(mfrow = c(2, 2))
plot(inputData$DateTime, inputData$Global_active_power, xlab = '', ylab = 'Global Active Power (kilowatt)', type = 'l')
plot(inputData$DateTime, inputData$Voltage, xlab = 'datetime', ylab = 'Voltage', type = 'l')
plot(inputData$DateTime, inputData$Sub_metering_1, xlab = '', ylab = 'Energy sub metering', type = 'l')
lines(inputData$DateTime, inputData$Sub_metering_2, col = 'red')
lines(inputData$DateTime, inputData$Sub_metering_3, col = 'blue')
legend('topright', col = c('black', 'red', 'blue'), legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lwd = 1)
plot(inputData$DateTime, inputData$Global_reactive_power, xlab = 'datetime', ylab = 'Global_reactive_power', type = 'l')
# close device
dev.off()
