clc
close all
clear all

img = uint8(zeros(500, 500));

img(:,:,1) = img(:,:,1);
img(:,:,2) = img(:,:,1);
img(:,:,3) = img(:,:,1);

x0 = 250;
y0 = 250;
r0 = 70;
r1 = 100;

[r,c,d] = size(img);


yel = 0;
pink = 0;
for rrr = 1:100
    rand1 = rand;
    rand2 = rand;
    rand3 = rand;
    yel = yel + 15;
    pink = pink + 15;
    for x = 1:r
        for y = 1:c
            if x >= y
%                 img(x,y,:) = 255;
                if (x-x0)^2 + (y-y0)^2 <= r0^2
                    img(x,y,1:2) = yel;
                else
                    img(x,y,1) = pink;
                    img(x,y,3) = pink;
                end
            else
%                 img(x,y,:) = 255;
                if (x-x0)^2 + (y-y0)^2 <= r0^2
                    img(x,y,:) = 255;
                    img(x,y,1) = img(x,y,1) .* rand1;
                    img(x,y,2) = img(x,y,2) .* rand2;
                    img(x,y,3) = img(x,y,3) .* rand3;
                end
            end
        end
    end
    imshow(img);
end

