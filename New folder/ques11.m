#11
clear all;
close all;
clc;
pkg load image;

I = imread('trimage.jpg');
subplot(2,2,1);
imshow(I);
title('original image')

#erosion
I=im2bw(I);
se=ones(5, 5);
[P, Q]=size(se);
I_erosion=zeros(size(I, 1), size(I, 2));
for i=ceil(P/2):size(I, 1)-floor(P/2)
    for j=ceil(Q/2):size(I, 2)-floor(Q/2)
        on=I(i-floor(P/2):i+floor(P/2), j-floor(Q/2):j+floor(Q/2));
        nh=on(logical(se));
        I_erosion(i, j)=min(nh(:));
    end
end

subplot(2,2,2);
imshow(I_erosion);
title('erosion of image')

#dilation
se=ones(5, 5);
[P, Q]=size(se);
I_dilation=zeros(size(I, 1), size(I, 2));

for i=ceil(P/2):size(I, 1)-floor(P/2)
    for j=ceil(Q/2):size(I, 2)-floor(Q/2)
        on=I(i-floor(P/2):i+floor(P/2), j-floor(Q/2):j+floor(Q/2));
        nh=on(logical(se));
        I_dilation(i, j)=max(nh(:));
    end
end

subplot(2,2,3);
imshow(I_dilation);
title('dilation of image')
