setwd("~/Documentos/GitHub/exploratoryDataAnalysis/")

# declare output plot folder
if (!file.exists('exitPlots')) {
    dir.create('exitPlots')
}

# load data
source('createDataSet.r')

# define plot device
png(filename = './exitPlots/plot1.png', width = 480, height = 480, units='px')
# plot figure
with(inputData, hist(Global_active_power, xlab = 'Global Active Power (kilowatt)', main = 'Global Active Power', col = 'red'))
# close device
dev.off()
