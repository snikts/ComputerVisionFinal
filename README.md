 # Median Robust Extended Local Binary Pattern

So far, I have implemented the median calculation function
for this algorithm, which calculates M2--the median for each
small individual neighborhood in an image. I have also implemented
the M1Median function, which finds the mean of all median neighborhood
values in a neighborhood.

## M2Median
M2Median takes a neighborhood of pixels, places all pixel values
in an array, and calculates the median of the neighborhood from this
array. This median is then returned.

## M1Median
M1Median takes a neighborhood of pixels. It then calculates the size
of each of the subneighborhoods of this neighborhood and loops through
these subneighborhoods. It calls M2Median on each of these neighborhoods
and adds the returned medians together. It then finds the mean of all these
median values and returns this value.

## Main
The main function currently only tests the ability of M1Median to correctly find and return the average
median of a 9x9 window from a texture of the Kylberg dataset. 
