clc
close all
clear all

img = uint8(zeros(400,600));

img(:,:,1) = img(:,:,1);
img(:,:,2) = img(:,:,1);
img(:,:,3) = img(:,:,1);

x0 = 200;
y0 = 300;
r0 = 70;
r1 = 100;

[r,c,d] = size(img);


g = 255;
for rrr = 1:100
    rand1 = rand;
    rand2 = rand;
    rand3 = rand;
    g = g - 10;
    for x = 1:r
        for y = 1:c
            if (x-x0)^2 + (y-y0)^2 <= r0^2
                if x<=r && y>=c/2
                    img(x,y,2) = g;
                end
            end
            if (x-x0)^2 + (y-y0)^2 <= r1^2 && (x-x0)^2 + (y-y0)^2 >= r0^2
                if x<=r && y<=c/2
                    img(x,y,1:3) = 255;
                    img(x,y,1) = img(x,y,1) .* rand1;
                    img(x,y,2) = img(x,y,2) .* rand2;
                    img(x,y,3) = img(x,y,3) .* rand3;
                end
            end
        end
    end
    imshow(img);
end

