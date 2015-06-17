% yek tandol!
% baraie keshidan ye line yek shib va yek noghte niaz darim y-y0 = m(x-x0)
% m = (y1 - y0)/(x1-x0)
% baraie daiere (x-x0)^2+(y-y0)^2 < r0^2
clc
clear all
close all

img = ones(500);

x0 = 1;
y0 = 250;

x1=250;
y1=1:500;

m = (y1-y0)/(x1-x0);

cx0 = 250;
cy0 = 1:500;
cr0 = 50;
% 
% for j=1:10:500
%     for x=1:500
%         for y=1:500
%             if y-y0 <= m(j)*(x-x0) && x < 250
%                 img(x,y) = 255;
%             end
%         end
%     end
% 
%     img = uint8(edge(img).*255);
%     img(250,:) = 0;
%     for x=1:500
%         for y=1:500
%             if x < 250 && (x-cx0)^2 + (y-cy0(j))^2 < cr0^2
%                 img(x,y) = 255;
%             end
%         end
%     end
%     imshow(img);
%     img(:,:) = 0;
% end

for j=cr0:15:500-cr0
    for x=1:500
        for y=1:500
            if y-y0 <= m(j)*(x-x0) && x < 250
                img(x,y) = 255;
            end
        end
    end
    img = uint8(edge(img).*255);
    img(250,:) = 0;
    for x=1:500
        for y=1:500
            if x < 250 && (x-cx0)^2 + (y-cy0(j))^2 < cr0^2
                img(x,y) = 255;
            end
        end
    end
    imshow(img);
    img(:,:) = 0;
end

for j=500-cr0:-20:cr0
    for x=1:500
        for y=1:500
            if y-y0 <= m(j)*(x-x0) && x < 250
                img(x,y) = 255;
            end
        end
    end
    img = uint8(edge(img).*255);
    img(250,:) = 0;
    for x=1:500
        for y=1:500
            if (x-cx0)^2 + (y-cy0(j))^2 < cr0^2
                img(x,y) = 255;
            end
        end
    end
    imshow(img);
    img(:,:) = 0;
end
