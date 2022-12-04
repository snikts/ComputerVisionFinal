function [newIm] = MRELBP(originalIm, M1)
%MRELBP Find MRELBP of originalIm with neighborhood size of M1
%   Calculates Median Robust Extended Local Binary Pattern of image based
%   on neighborhood size M1.

% calculate rows and columns around center
diff = floor(M1/2);

% calculate size of original image
[rows, columns] = size(originalIm);

% pad original image with zeroes
paddedMatrix = zeros(rows+(diff*2), columns+(diff*2));
paddedMatrix(diff+1:diff+rows,diff+1:diff+columns)=originalIm;
newIm = paddedMatrix;

% for each pixel in original image
for r = diff+1:rows
    for c= diff+1:columns
        % get neighborhood
        submatrix = paddedMatrix( (r-diff : r+diff), (c-diff : c+diff) );

        % calculate mean of neighborhood
        meanVal = M1Median(submatrix);

        % assign values less than meanVal to 0 and greater than or equal to
        % meanVal to 1
        submatrix(submatrix < meanVal) = 0;
        submatrix( submatrix >= meanVal ) = 1;

        % place new calculated matrix in newIm
        newIm(r-diff:r-diff+M1-1,c-diff:c-diff+M1-1)=submatrix;
    end
end

end