ncols <- 1100
nrows <- 40000
ncells <- ncols*nrows
testit::assert(ncells < 2^32-1)
mem_use <- ncells * object.size(3.14)
format(mem_use, units = "Gb")

# Computer will freeze if you ignore this warning ..
testit::assert(mem_use < 2^32-1)

df <- data.frame(matrix(nrow = nrows, ncol = ncols, data = seq(1,ncells)))
df[2,1:10]
filename <- tempfile()
write.csv(x = df, file = filename, row.names = FALSE)
df2 <- read.csv(file = filename)
all.equal(df2, df, tolerance = 0.1)
file.info(filename)
