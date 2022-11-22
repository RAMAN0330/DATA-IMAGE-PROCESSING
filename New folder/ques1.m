#Q1
clear all;
close all;
clc;
pkg load image


#b
img = imread('groot.jpg');
subplot(3,3,1)
imshow(img);
title('original image')


#c
resized_img = imresize(img,0.1);
subplot(3,3,2)
imshow(resized_img);
title('resized image')


#d
grayscale_img = rgb2gray(img);
subplot(3,3,3)
imshow(grayscale_img)
title('grayscale')


#e
bw_img = im2bw(img);
subplot(3,3,4)
imshow(bw_img)
title('black and white')


#g
red_img=img(:,:,1);
green_img=img(:,:,2);
blue_img=img(:,:,3);


#h
temp_img=img;

#red image
img(:,:,2)=0;
img(:,:,3)=0;
subplot(3,3,5)
imshow(img);
title('red img');

#green image
img=temp_img;
img(:,:,1)=0;
img(:,:,3)=0;
subplot(3,3,6)
imshow(img);
title('green img');

#blue image
img=temp_img;
img(:,:,1)=0;
img(:,:,2)=0;
subplot(3,3,7)
imshow(img);
title('blue img');


#j
m=[0:9];
n=reshape(m,2,5);
subplot(3,3,8)
imshow(n,[]);
title('2-d data as image')









