clc
close all
clear all

img = uint8(zeros(600, 600));

img(:,:,1) = img(:,:,1);
img(:,:,2) = img(:,:,1);
img(:,:,3) = img(:,:,1);

x0 = 300;
y0 = 300;
r0 = 70;
r1 = 100;
r2 = 130;

[r,c,d] = size(img);

for x = 1:r
    for y = 1:c
        if (x-x0)^2 + (y-y0)^2 <= r0^2
            if x<=r/2 && y<=c/2
                img(x,y,1) = 255;
            end
            if x<=r/2 && y>=c/2
                img(x,y,2) = 255;
            end
            if x>=r/2 && y<=c/2
                img(x,y,3) = 255;
            end
            if x>=r/2 && y>=c/2
                img(x,y,1:2) = 255;
            end
        end
        if (x-x0)^2 + (y-y0)^2 <= r1^2 && (x-x0)^2 + (y-y0)^2 >= r0^2
            if x<=r/2
                img(x,y,1) = 255;
                img(x,y,3) = 255;
            end
            if x>=r/2
                img(x,y,2:3) = 255;
            end
        end
        if (x-x0)^2 + (y-y0)^2 <= r2^2 && (x-x0)^2 + (y-y0)^2 >= r1^2
            if x<=r/2
                img(x,y,1:0) = 0;
            end
            if x>=r/2
                img(x,y,1:3) = 255;
            end
        end
        if (x-x0)^2 + (y-y0)^2 >= r2^2 && (x-x0)^2 + (y-y0)^2 >= r1^2 && (x-x0)^2 + (y-y0)^2 >= r0^2
            img(x,y,1:3) = 120;
        end
        
    end
end

imshow(img);

