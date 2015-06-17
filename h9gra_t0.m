clc
clear all
close all

vid = VideoReader('traffic.mj2');
num = vid.NumberOfFrames;

% implay(vixd);
I = read(vid, 1);
vid2 = zeros([size(I, 1), size(I, 2), 3, num], class(I));
empty = zeros(size(I, 1), size(I, 2));
for i = 1:num-1
    f1 = read(vid, i);
    f2 = read(vid, i+1);
    diff = abs(f1-f2);
    gray = rgb2gray(diff);
    rgb = uint8(im2bw(gray, .1))*255;
    rgb = cat(3, rgb, empty, rgb);
    f1 = f1 + rgb;
    imshow(f1);
    pause(.01)
end

% implay(vid2);

% for i=1:num
%     imshow(read(vid, i));
% end