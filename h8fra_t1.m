clc
clear all
close all

img = imread('img/heart.jpg');
gray = rgb2gray(img);
bw = im2bw(gray, graythresh(gray));
img1 = img;

labels = bwlabel(bw);

areas = struct2array(regionprops(bw, 'Area'));

[r, c] = max(areas);
[r, sc] = min(areas);

bigest = uint8(bwlabel(labels == c)).*255;
bigest = cat(3, bw, bw, bigest);



smallest = uint8(bwlabel(labels == sc)).*255;
smallest = cat(3, smallest, smallest, bw);

for i= 1:size(img,1)
    for j = 1:size(img, 2) 
       if labels(i,j) == sc || labels(i,j) == c
           img1(i,j, : ) = 0;
       end
    end
end

% other = cat(3, other, other, other);
imshow(bigest + smallest + img1);