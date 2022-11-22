#10
clear all;
close all;
clc;
pkg load image;

img = imread('shape.jpg');
img= rgb2gray(img)
subplot(2,3,1);
imshow(img);
title("Original image");

img_prewitt = edge(img,'Prewitt');
subplot(2,3,2);
imshow(img_prewitt);
title("Edge detection using Prewitt mask");

img_sobel = edge(img,'Sobel');
subplot(2,3,3);
imshow(img_sobel);
title("Edge detection using Prewitt mask");

img_robertcross = edge(img,'Sobel');
subplot(2,3,4);
imshow(img_robertcross);
title("Edge detection using Robert cross mask");

img_laplacian = edge(img,'log');
subplot(2,3,5);
imshow(img_laplacian);
title("Edge detection using Robert cross mask");
