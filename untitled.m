apples = imread("RT09_9.png");

sub = apples(1:9, 1:9);
med = M1Median(sub);
disp(med);