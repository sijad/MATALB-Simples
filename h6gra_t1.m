% yek tandol!
% baraie keshidan ye line yek shib va yek noghte niaz darim y-y0 = m(x-x0)
% m = (y1 - y0)/(x1-x0)
% baraie daiere (x-x0)^2+(y-y0)^2 < r0^2
clc
clear all
close all


img = ones(500);

% imshow(img);
% while(1)
%     for i = 25:size(img, 2)-25
%         line([250 i], [0 250], 'LineWidth', 4, 'Color', 'r');
%         viscircles([i 250], 25, 'EdgeColor', 'b');
%         pause(.0001);
%         imshow(img);
%     end
% %     for i = size(img, 2)-25:25
% %         line([250 -i], [0 250], 'LineWidth', 4, 'Color', 'r');
% %         viscircles([-i 250], 25, 'EdgeColor', 'b');
% %         pause(.0001);
% %         imshow(img);
% %     end
% end


% x0 = 1;
% y0 = 250;
% 
% x1=250;
% y1=1:500;
% 
% m = (y1-y0)/(x1-x0);
% 
% for j=1:500
%     for x=1:500
%         for y=1:500
%             if y-y0 <= m(j)*(x-x0) && x < 250
%                 img(x,y) = 1;
%             end
%         end
%     end
% %     pause(.0001)
%     e = edge(img);
%     e(250,:) = 0;
%     imshow(e);
% end

x0 = 1;
y0 = 250;

x1=250;
y1=1:500;

m = (y1-y0)/(x1-x0);

cx0 = 250;
cy0 = 1:500;
cr0 = 50;

for j=1:10:500
    r1 = uint8(rand(3,1).*255);
    r2 = uint8(rand(3,1).*255);
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
    
    linenc = uint8(img == 255);
    
    linenc = cat(3, linenc.*r2(1), linenc.*r2(2), linenc.*r2(3));
    
    img2 = uint8(~img);
    rgbim = cat(3, img2.*r1(1), img2.*r1(2), img2.*r1(3));
    figure, imshow(rgbim+linenc);
    pause(1);
    img(:,:) = 0;
end

%for j=500:-10:1
%    r1 = uint8(rand(3,1).*255);
%    r2 = uint8(rand(3,1).*255);
%    for x=1:500
%        for y=1:500
%            if y-y0 <= m(j)*(x-x0) && x < 250
%                img(x,y) = 255;
%            end
%        end
%    end
%    img = uint8(edge(img).*255);
%    img(250,:) = 0;
%    for x=1:500
%        for y=1:500
%            if (x-cx0)^2 + (y-cy0(j))^2 < cr0^2
%                img(x,y) = 255;
%            end
%        end
%    end
%    
%    linenc = uint8(img == 255);
%    
%    linenc = cat(3, linenc.*r2(1), linenc.*r2(2), linenc.*r2(3));
%    
%    img2 = uint8(~img);
%    rgbim = cat(3, img2.*r1(1), img2.*r1(2), img2.*r1(3));
%    imshow(rgbim+linenc);
%    img(:,:) = 0;
%end
