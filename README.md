 # Median Robust Extended Local Binary Pattern

## M2Median
M2Median takes a neighborhood of pixels, places all pixel values in an array, and calculates the median of the neighborhood from this array. This median is then returned.

## M1Median
M1Median takes a neighborhood of pixels. It then calculates the size of each of the subneighborhoods of this neighborhood and loops through these subneighborhoods. It calls M2Median on each of these neighborhoods and adds the returned medians together. It then finds the mean of all these median values and returns this value.

## MRELBP
MRELBP takes an image and a neighborhood size. It then partitions the image into subneighborhoods of size M1. It calls M1Median on each of these neighborhoods to calculate the mean median value of the neighborhood. It then sets all pixels less than the mean value to 0 and all pixels greater or equal to the mean value to 1. This is the main component of the MRELBP algorithm.

## Main
The main function currently tests the MRELBP function by reading in an image of some apples from the Kylberg dataset and calling MRELBP on it. The resulting image with the texture features highlighted is displayed, alongside the original image for comparison.

## Phase Updates
### Phase 1 Update
So far, I have implemented the median calculation function for this algorithm, which calculates M2--the median for each small individual neighborhood in an image. I have also implemented the M1Median function, which finds the mean of all median neighborhood values in a neighborhood.

### Phase 2 Update
In this phase I implemented the remainder of the MRELBP algorithm. This included two major ideas of the algorithm--partitioning the image into neighborhoods of size M1 and calculating their mean median value, and assigning any pixels less than the mean value to 0 and pixels greater than or equal to the mean value to 1.

