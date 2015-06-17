clc
clear all
close all

img = zeros(50,560);
img = uint8(cat(3, img, img, img));

img(:,:, 3) = 255;

[r,c,d] = size(img);

filled = false(1, c);

secnum = 8;
sect = c/secnum;
sets = sect:sect:c-sect;

for j=1:size(sets,2)
    filled(sets(j)-2:sets(j)) = true;
    img(:, sets(j)-2:sets(j), 1:3) = 10;
end

for i=1:c-(size(sets,2)*3)
    notfilleda = find(filled == false);
    rndnum = notfilleda(randi([1 size(notfilleda, 2)]));
    filled(rndnum) = true;
    img(:, rndnum, 1) = 255;
    imshow(img);
end