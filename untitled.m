apples = imread("RT09_9.png");

sub = apples(1:9, 1:9);
med = M1Median(sub);
newM = MRELBP(apples, 9);
figure, imshow(imbinarize(newM));
figure, imshow(apples);