clc
clear all
close all

vid = VideoReader('traffic.mj2');
num = vid.NumberOfFrames;

I = read(vid, 1);
for i = 1:num-1
    f1 = read(vid, i);
    f2 = read(vid, i+1);
    diff = abs(f1-f2);
    gray = rgb2gray(diff);
    rgb = uint8(im2bw(gray, .1))*255;
    rgb = cat(3, rgb, rgb, rgb);
    for x = 1:size(I, 1)
        for y = 1:size(I, 2)
            if x <= 40
                if y <= 53;
                    
                elseif y <= 106;
                    rgb(x,y,1) = 0;
                    rgb(x,y,3) = 0;
                else
                    rgb(x,y,1) = 0;
                    rgb(x,y,2) = 0;
                end
            elseif x <= 80
                if y <= 53;
                    rgb(x,y,2) = 0;
                elseif y <= 106;
                    rgb(x,y,1) = 0;
                else
                    rgb(x,y,3) = 0;
                end
            else
                rgb(x,y,2) = 0;
                rgb(x,y,3) = 0;
            end
        end
    end
    f1(1:80,53:54,:) = 0;
    f1(1:80,106:107,:) = 0;
    f1(40:41,:,:) = 0;
    f1(80:81,:,:) = 0;
    f1 = f1 + rgb;
    imshow(f1);
    pause(.02)
end

% implay(vid2);

% for i=1:num
%     imshow(read(vid, i));
% end