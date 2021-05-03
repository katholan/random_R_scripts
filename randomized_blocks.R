#Randomizing blocks
#Katerina Holan
#May 16, 2018

"""
This script will randomize a specified number of blocks.
To use: 
1. Update the seed to the date for every new experiment. Each unique seed will output the same random blocks every time, in the same order, so it is very important to update the seed for every new experiment! Using the date will ensure no duplicates are used.
2. Update treatment names to desired
3. Update the number of each treatment needed.  For example, if using 4 plants for treatment one, set n1 to 4.
4. Update the variables in "treatments" to generate a vector with the right number of each treatment.
5. Update the nblocks, nrow, and ncol to the desired number of blocks and rows and columns in each block.

The script should output the desired number of randomized blocks as matrices.  Additional treatments can be added as needed.
"""

set.seed(5162018)

#treatment names and number needed for each treatment
trt1 <- ""
trt2 <- ""
trt3 <- ""
trt4 <- ""
trt5 <- ""
trt6 <- ""
trt7 <- ""
trt8 <- ""
trt9 <- ""

n1 <- 3
n2 <- 6

treatments <- c(rep(trt1, n1), rep(trt2, n1), rep(trt3, n2), rep(trt4, n2), 
                          rep(trt5, n2), rep(trt6, n2), rep(trt7, n2), rep(trt8, n2), 
                          rep(trt9, n2))
nblocks <- 1
nrow <- 6
ncol <- 8

for (i in 1:nblocks){
  print(matrix(sample(treatments), nrow=nrow, ncol=ncol))
}

