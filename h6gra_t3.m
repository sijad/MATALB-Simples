clc
clear all
close all

% sajjad hashemian

img = false(500);

r1 = 25;

[r,c] = size(img);

while(1)
    for i=r1:10:r-r1
        img2 = img;
        j = -i+r;
        for x=1:r
            for y=1:c
                if x+y+1 > r && y-j <= (i)/(j)*(x-i)
                    img2(x,y) = 1;
                end

                if x+y-1 < r && y-i >= (i)/(j)*(x-j)
                    img2(x,y) = 1;
                end
            end
        end

        img2 = edge(img2);

        for x=1:r
            for y=1:c
                if x+y-1 <= r && x+y+1 >= r
                    img2(x,y) = 0;
                end
            end
        end

        for x=1:r
            for y=1:c
                if (x-i)^2 + (y-j)^2 <= r1^2
                    img2(x,y) = 1;
                end
                if (x-j)^2 + (y-i)^2 <= r1^2
                    img2(x,y) = 1;
                end
            end
        end

        figure(1), imshow(img2);
    end
    for i=r-r1:-10:r1
        img2 = img;
        j = -i+r;
        
        for x=1:r
            for y=1:c
                if x+y+1 > r && y-j <= (i)/(j)*(x-i)
                    img2(x,y) = 1;
                end

                if x+y-1 < r && y-i >= (i)/(j)*(x-j)
                    img2(x,y) = 1;
                end
            end
        end

        img2 = edge(img2);

        for x=1:r
            for y=1:c
                if x+y-1 <= r && x+y+1 >= r
                    img2(x,y) = 0;
                end
            end
        end

        for x=1:r
            for y=1:c
                if (x-i)^2 + (y-j)^2 <= r1^2
                    img2(x,y) = 1;
                end
                if (x-j)^2 + (y-i)^2 <= r1^2
                    img2(x,y) = 1;
                end
            end
        end

        figure(1), imshow(img2);
    end
end