clc
clear all
close all

warning off

img = imread('img/heart.jpg');
gray = rgb2gray(img);
bw = im2bw(gray, graythresh(gray));

uinn = uint8(bw).*255;
uinn = cat(3, uinn, uinn, uinn);

[labels, c] = bwlabel(bw, 4);

for k=1:c
    [z, zz] = find(labels == k);
    rnd = rand(3).*255;
    rnd2 = rand(3).*255;
    for i=min(z):max(z)
        for j=min(zz):max(zz)-round(abs((min(zz)-max(zz))/2))
            if labels(i,j) == k
                uinn(i,j,1) = rnd(1);
                uinn(i,j,2) = rnd(2);
                uinn(i,j,3) = rnd(3);
            end
        end
        for j=min(zz)+round(abs((min(zz)-max(zz))/2)):max(zz)
            if labels(i,j) == k
                uinn(i,j,1) = rnd2(1);
                uinn(i,j,2) = rnd2(2);
                uinn(i,j,3) = rnd2(3);
            end
        end
    end
    imshow(uinn);
end