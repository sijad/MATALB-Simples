clc
close all
clear all


img = false(50, 500);


for i=1:10:500;
    
    img(:, 1:i+9) = 1;
    
    figure(1), imshow(img);
%     img = false(50, 500);
%     img(:, i:i+25) = 1;
%     figure(1), imshow(img);


%     if i < 500
%         figure(1), imshow(img), title('Please Wait...');
%     else
%         figure(1), imshow(img), title('Download Completed');
%     end
    
end