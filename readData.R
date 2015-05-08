#total rows: 4551490

n = 100000 # 100,000 rows


## http://nppes.viva-it.com/NPI_Files.html
## Full Replacement Monthly NPI file
npi <- read.csv('npidata_20050523-20150412.csv', nrows = 100)

colClasses <- as.vector(sapply(npi, class))
ncols = ncol(npi)
npi <- matrix(character(), n, ncols)

#npi <- read.csv(file = 'npidata_20050523-20150412.csv', colClasses = colClasses, na.strings = '', nrows = n)
#Error in scan(file, what, nmax, sep, dec, quote, skip, nlines, na.strings,  :
#                  scan() expected 'an integer', got '"1679576722"'

npi <- read.csv(file = 'npidata_20050523-20150412.csv', na.strings = '', as.is = T, colClasses = 'character', nrows = n)


temp <- as.matrix(npi)
temp <- read.csv(file = 'npidata_20050523-20150412.csv', na.strings = '', as.is = T, colClasses = 'character', nrows = n, skip = n)
colnames(temp) <- colnames(npi)

npi <- rbind(npi, temp)
