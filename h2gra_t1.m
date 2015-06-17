clc
clear all
close all

img = imread('img/4.png');
bw = uint8(im2bw(img, .1)).*255;
for i=1:10
    heart = cat(3,bw.*rand,bw.*rand,bw.*rand);
    imshow(heart),title(i);
    pause(.05);
end