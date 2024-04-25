%Ex8_3 Coin Counting using Erosion
clear, clc, close all;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%load test image
Img = imread('circles.png');

%perform erosion with a square with side = 45
se1 = strel("square", 45);
BW1 = imerode(Img, se1);

%perform erosion with a disk with radius = 48
se2 = strel("disk", 48, 0);
BW2 = imerode(Img, se2);

%perform erosion with a rectangle with dimensions = [35 45]
se3 = strel("rectangle", [35 45]);
BW3 = imerode(Img, se3);

%perform erosion with a diamond with radius = 45
se4 = strel("diamond", 45);
BW4 = imerode(Img, se4);

%perform erosion with a line with length = 30 and inclined degree = 45
se5 = strel("line", 45, 45);
BW5 = imerode(Img, se5);

%show images
FS = 20; %fontsize of caption
figure(1), clf;
subplot(2, 3, 1), imshow(Img), title('Original Image', "fontsize", FS);
subplot(2, 3, 2), imshow(BW1), title('Square', "fontsize", FS);
subplot(2, 3, 3), imshow(BW2), title('Disk', "fontsize", FS);
subplot(2, 3, 4), imshow(BW3), title('Rectangle', "fontsize", FS);
subplot(2, 3, 5), imshow(BW4), title('Diamond', "fontsize", FS);
subplot(2, 3, 6), imshow(BW5), title('Line', "fontsize", FS);

saveas(1, 'Erosion Circles with Different SEs.png');
