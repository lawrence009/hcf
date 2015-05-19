library(data.table)

filename <- 'npidata_20150427-20150503.csv'

npi <- as.data.table(read.csv(filename, na.strings = ''))

