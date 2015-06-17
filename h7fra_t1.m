clc
close all
clear all


img = uint8(zeros(50, 500));

img = cat(3, img, img, img);

img(:,:,3) = 255;


for i=1:10:500;
    
    img(:, 1:i+9, 3) = 0;
    img(:, 1:i+9, 2) = 255;
    
    figure(1), imshow(img);

    
end