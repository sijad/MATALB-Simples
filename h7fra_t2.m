clc
close all
clear all


img = uint8(zeros(50, 500));

img = cat(3, img, img, img);

b = false;

figure(1), imshow(img), title('Please Wait...');
hold on;

for i=1:20:500;
    
    if b
        img(:, i:i+19, 1) = 255;
        img(:, i:i+19, 2) = 255;
    else
        img(:, i:i+19, 1) = 255;
        img(:, i:i+19, 3) = 255;
    end
    
    b = ~b;
    
    
    if i<491
        figure(1), imshow(img), title('Please Wait');
    else
        figure(1), imshow(img), title('Download Completed');
    end

    
end