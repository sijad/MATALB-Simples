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

[fr, fc] = find(labels == c);

for i= min(fr):max(fr)
    for j = min(fc)+abs((min(fc)-max(fc))/2):max(fc)
       if labels(i,j) == c
           img1(i,j,:) = 255;
       end
    end
end

[fr2, fc2] = find(labels == sc);

for i= min(fr2):max(fr2)
    for j = min(fc2)+abs((min(fc2)-max(fc2))/2):max(fc2)
       if labels(i,j) == sc
           img1(i,j,1) = 255;
           img1(i,j,3) = 255;
           img1(i,j,2) = 0;
       end
    end
end

% other = cat(3, other, other, other);
% imshow(img1);
imshow(img1);