#Q4
clear all;
close all;
clc;
pkg load image;


X = imread('lagartha.jpg');
a = imresize (X, [410,728]);
a1=im2bw(a)
subplot(3,2,1);
imshow(a1);
title('original image-1')


Y = imread('tree.jpg');
b = imresize (Y, [410,728]);
b1=im2bw(b)
subplot(3,2,2);
imshow(b1);
title('original image-2');


#a
c=and(a1,b1)
subplot(3,2,3);
imshow(c);
title('AND operation')

#b
d=or(a1,b1)
subplot(3,2,4);
imshow(d);
title('OR operation')

#c
e=bitand(a1,b1)
subplot(3,2,5);
imshow(e);
title('Intersection')

#d
f=not(a1)
subplot(3,2,6);
imshow(f);
title('NOT operation')

