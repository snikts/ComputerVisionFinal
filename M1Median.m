function [centerVal] = M1Median(M1Neighborhood)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
[M1NeighborhoodRows, M1NeighborhoodCols] = size(M1Neighborhood);
neighborhoodSize = sqrt(M1NeighborhoodRows);
centerOffset = floor(neighborhoodSize/2);
averageMedians = uint32(0);
numMedians = uint32(0);
for r = 1:neighborhoodSize:M1NeighborhoodRows
    for c = 1:neighborhoodSize:M1NeighborhoodCols
        submatrix = M1Neighborhood(r:r+neighborhoodSize-1, c:c+neighborhoodSize-1);
        neighborhoodMedian = M2Median(submatrix);
        averageMedians = averageMedians+uint32(neighborhoodMedian);
        numMedians = numMedians+1;
    end
end
centerVal = averageMedians/numMedians;
end