clc
clear all
close all

img = uint8(imread('img/4.png'));
bw = uint8(im2bw(img, .1)).*255;
bg = uint8(~im2bw(img, .1)).*255;
for i=1:10
    hert = cat(3,bw.*rand,bw.*rand,bw.*rand);
    background = cat(3,bg.*rand,bg.*rand,bg.*rand);
    imshow(hert+background),title(i);
    pause(.05);
end