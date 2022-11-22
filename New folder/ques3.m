#Q3
clear all;
close all;
clc;
pkg load image;


X = imread('groot.jpg');
subplot(2,2,1);
imshow(X);
title('original image-1')
a = imresize (X, [410,728]);

Y = imread('leaf.jpg');
subplot(2,2,2);
imshow(Y);
title('original image-2');
b= imresize (Y, [410,728]);

#a
c=imadd (a,b);
subplot(2,2,3);
imshow(c);
title('addition of image 1 and 2');

#b
d=imsubtract(a,b);
subplot(2,2,4);
imshow(d);
title('subtract of image 1 and 2');

#c
e=mean(X(:))
e
title('mean of image 1');


