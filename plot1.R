
gh <- read.table("ncc.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
f <- gh[gh$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetData)
globalActivePower <- as.numeric(f$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
