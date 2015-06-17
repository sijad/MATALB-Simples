clc
clear all
close all

vid = VideoReader('traffic.mj2');
num = vid.NumberOfFrames;

% implay(vixd);
I = read(vid, 1);
vid2 = zeros([size(I, 1), size(I, 2), 3, num], class(I));
empty = zeros(size(I, 1), size(I, 2));
for i = 1:num-1
    f1 = read(vid, i);
    f2 = read(vid, i+1);
    diff = abs(f1-f2);
    gray = rgb2gray(diff);
    rgb = uint8(im2bw(gray, .1))*255;
    rgb = cat(3, rgb, rgb, rgb);
    for x = 1:size(I, 1)
        for y = 1:size(I, 2)
            if x >= 20 && x <= 100 && y>=25 && y<= 135
                rgb(x,y,2) = 0;
                
            end
        end
    end
    
%     f1(1:80,106:107,:) = 0;
%     f1(40:41,:,:) = 0;
%     f1(80:81,:,:) = 0;
    f1 = f1 + rgb;
    
    % left
    f1(20:90,25:35,:) = 0;
    f1(20:90,25:35,1) = 255;
    
    % right
    f1(20:90,60:70,:) = 0;
    f1(20:90,60:70,1) = 255;
    
    % top
    f1(20:30,25:70,:) = 0;
    f1(20:30,25:70,1) = 255;
    
    % bottom
    f1(90:100,25:70,:) = 0;
    f1(90:100,25:70,1) = 255;
    
    % left2
    f1(20:90,130:140,:) = 0;
    f1(20:90,130:140,1) = 255;
    
    % right2
    f1(20:90,90:100,:) = 0;
    f1(20:90,90:100,1) = 255;
    
    % top2
    f1(20:30,90:140,:) = 0;
    f1(20:30,90:140,1) = 255;
    
    % bottom2
    f1(90:100,90:140,:) = 0;
    f1(90:100,90:140,1) = 255;

    
%     % left
%     f1(20:100,25:35,:) = 0;
%     f1(20:100,25:35,2) = 255;
%     f1(20:100,25:35,3) = 255;
%     
%     % right
%     f1(20:100,125:135,:) = 0;
%     f1(20:100,125:135,2) = 255;
%     f1(20:100,125:135,3) = 255;
%     
%     % top
%     f1(20:30,25:135,:) = 0;
%     f1(20:30,25:135,2) = 255;
%     f1(20:30,25:135,3) = 255;
%     
%     % bottom
%     f1(90:100,25:135,:) = 0;
%     f1(90:100,25:135,2) = 255;
%     f1(90:100,25:135,3) = 255;

    imshow(f1);
%     pause(.02)
end

% implay(vid2);

% for i=1:num
%     imshow(read(vid, i));
% end