clc
clear all
close all

img = imread('img/heart.jpg');
gray = rgb2gray(img);
bw = im2bw(gray, graythresh(gray));
% figure, imshow(bw);

labels = bwlabel(bw);

regs = regionprops(bw, 'Area', 'Centroid');

areas = struct2array(cat(1, regs.Area));

[r, c] = max(areas);
[r, sc] = min(areas);

bigest = bwlabel(labels == c);
smallest = bwlabel(labels == sc);

imshow(bigest + smallest);