#6
clear all;
close all;
clc;
pkg load image;


img = imread('square.jpg');
subplot(2,3,1);
imshow(img);
title("Original Image")

#a Translation
x_shift = 50;
y_shift = 50;
img_translate = uint8(zeros(size(img,1)+y_shift-1, size(img,2)+x_shift-1, size(img,3)));
img_translate(y_shift:end, x_shift:end, :) = img;
subplot(2,3,2);
imshow(img_translate);
title("Translated Image")

#b Scaling
img_scale = imresize(img, 0.2);
subplot(2,3,3);
imshow(img_scale);
title("Saling Image")

#c Rotation
img_rotate = imrotate(img,-90,'bilinear','crop');
subplot(2,3,4);
imshow(img_rotate);
title("Rotation Image")

#d Shirinking
img_shirink = imresize(img,0.4,'nearest');
subplot(2,3,5);
imshow(img_shirink);
title("Shirinking Image")

#e Zooming
f = 2;
img_zoom = imresize(img, f);
subplot(2,3,6);
imshow(img_zoom(96:287, 81:241, :));
title("Zooming Image")


