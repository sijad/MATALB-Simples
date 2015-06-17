clc
clear all
close all

img = false(500, 800);

% sajjad hashemian

margin = [125, 125];
[r,c] = size(img);

for x = margin(1):r-margin(2)
    for y = margin(1):c-margin(2)
        img(x,y) = 1;
    end
end

img = uint8(edge(img)).*255;

cx0 = 125:10:375;
cy0 = 125:10:675;
cr0 = 30;

while 1
    for i = margin(1):10:c-margin(2)
        img2 = img;
        for x = 1:r
            for y = 1:c
                if x>=95 && x<=405 && y>=95 && y<=705 
                    if (x-125)^2 + (y-i)^2 < cr0^2
                        img2(x,y) = 255;
                    end
                end
            end
        end
        imshow(img2);
    end

    for i = 125:10:375
        img2 = img;
        for x = 1:500
            for y = 1:800
                if x>=95 && x<=405 && y>=95 && y<=705 
                    if (x-i)^2 + (y-675)^2 < cr0^2
                        img2(x,y) = 255;
                    end
                end
            end
        end
        imshow(img2);
    end

    for i = 675:-10:125
        img2 = img;
        for x = 1:500
            for y = 1:800
                if x>=95 && x<=405 && y>=95 && y<=705 
                    if (x-375)^2 + (y-i)^2 < cr0^2
                        img2(x,y) = 255;
                    end
                end
            end
        end
        imshow(img2);
    end

    for i = 375:-10:125
        img2 = img;
        for x = 1:500
            for y = 1:800
                if x>=95 && x<=405 && y>=95 && y<=705 
                    if (x-i)^2 + (y-125)^2 < cr0^2
                        img2(x,y) = 255;
                    end
                end
            end
        end
        imshow(img2);
    end
end



