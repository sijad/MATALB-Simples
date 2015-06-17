clc
clear all
close all

img = imread('img/4.png');
bw = uint8(im2bw(img, .1)).*255;
[r,c] = size(bw);
bg = uint8(~im2bw(img, .1)).*255;
blue = uint8(im2bw(img, .1));
z = uint8(zeros(r,c));

bw1 = bw(1:r,1:c/2);
bw2 = bw(1:r,c/2:c-1);

for i=1:10
    blue = blue + 10;
    hert = [cat(3,bw1.*rand,bw1.*rand,bw1.*rand) cat(3,bw2.*rand,bw2.*rand,bw2.*rand)];
    background = cat(3,z,z,blue);
    imshow(hert+background),title(i);
    pause(.05);
end