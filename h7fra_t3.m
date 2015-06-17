clc
close all
clear all

img = uint8(zeros(50, 500));
img = cat(3, img, img, img);

for i=1:30:450;
    
    img(:, i:i+29, 1) = rand.*255;
    img(:, i:i+29, 2) = rand.*255;
    img(:, i:i+29, 3) = rand.*255;
    
	figure(1), imshow(img);

end