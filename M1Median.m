function [centerVal] = M1Median(M1Neighborhood)
%M1Median Calculate pixel value for center pixel of neighborhood
%   Partition M1Neighborhood into smaller neighborhoods. Calculate median
%   of each neighborhood and find the mean of them all.

% Find smaller neighborhood size
[M1NeighborhoodRows, M1NeighborhoodCols] = size(M1Neighborhood);
neighborhoodSize = sqrt(M1NeighborhoodRows);

% Save the number of medians found and the sum of all the medians
averageMedians = uint32(0);
numMedians = uint32(0);

% Loop through each neighborhood and find the median. Add it to sum of
% medians.
for r = 1:neighborhoodSize:M1NeighborhoodRows
    for c = 1:neighborhoodSize:M1NeighborhoodCols
        submatrix = M1Neighborhood(r:r+neighborhoodSize-1, c:c+neighborhoodSize-1);
        neighborhoodMedian = M2Median(submatrix);
        averageMedians = averageMedians+uint32(neighborhoodMedian);
        numMedians = numMedians+1;
    end
end

% Calculate the mean of all medians in M1Neighborhood
centerVal = averageMedians/numMedians;
end