function [m2] = M2Median(M2Neighborhood)
%M2Median Calculate median of M2Neighborhood
%   Places matrix into a list and calculates median of list

% Place matrix into list
m2n = M2Neighborhood';
m2n = m2n(:)';

% Calculate and return median
m2 = median(m2n);
end