function [m2] = M2Median(M2Neighborhood)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
m2n = M2Neighborhood';
m2n = m2n(:)';
m2 = median(m2n);
end