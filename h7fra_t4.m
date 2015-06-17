clc
close all
clear all


img = uint8(zeros(50, 500));

img = cat(3, img, img, img);

img(:,:,1) = 255;

bimg = img;

while(1)
    for i=11:10:520;
        img = bimg;
        j = i+19;
        if(j > 500)
            j = 500;
        end
        img(:, i-10:j, 1) = 0;
        img(:, i-10:j, 2) = 255;
        figure(1), imshow(img);
    end
end