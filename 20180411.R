# Can R handle violin plots of the size I need?
library(ggplot2)

n_repeats <- 100
ncols <- 1000

as <- rep(seq(1,3), each = 9, times = 1)
bs <- rep(seq(1,3), each = 3, times = 3)
cs <- rep(seq(1,3), each = 1, times = 9)

