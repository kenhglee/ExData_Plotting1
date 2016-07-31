load_data <- function() {
    #1. Read data
    filename <- "./household_power_consumption.txt"
    df <- read.table(filename,
                     header=TRUE,
                     sep=";",
                     na="?")
    
    #2. Take the subset of specified dates first
    df <- df[df$Date %in% c("1/2/2007","2/2/2007"),]

    #3. Covert "Time" column to merge both data and time into Date/Time Class
    df$Time <- strptime(paste(df$Date, df$Time), "%d/%m/%Y %H:%M:%S")

    return(df)
}