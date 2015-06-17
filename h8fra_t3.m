clc
clear all
close all

warning off

img = imread('img/heart.jpg');
gray = rgb2gray(img);
bw = im2bw(gray, graythresh(gray));
img1 = img;

uinn = uint8(bw).*255;
uinn = cat(3, uinn, uinn, uinn);

[labels c] = bwlabel(bw, 4);

for k=1:c
    [z, zz] = find(labels == k);
    rnd = rand(3);
    for i=min(z):max(z)
        for j=min(zz):max(zz)
            if labels(i,j) == k
                uinn(i,j, 1) = 255 .* rnd(1);
                uinn(i,j, 2) = 255 .* rnd(2);
                uinn(i,j, 3) = 255 .* rnd(3);
            end
        end
    end
    imshow(uinn);
end