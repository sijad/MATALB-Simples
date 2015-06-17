clc
clear all
close all

img = imread('img/4.png');
bw = uint8(im2bw(img, .1)).*255;
[r,c] = size(bw);
bg = uint8(~im2bw(img, .1)).*255;
green = bg;
z = uint8(zeros(r,c));
for i=1:10
    green = green - 10;
    hert = cat(3,bw.*rand,bw.*rand,bw.*rand);
    background = cat(3,z,green,z);
    imshow(hert+background),title(i);
    pause(.05);
end