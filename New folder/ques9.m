#9
clear all;
close all;
clc;
pkg load image;
img = imread('square.jpg');
input_image = rgb2gray(img)
subplot(2,2,1);
imshow(input_image);
title("Original Image")

img_fft = fft2(input_image);
subplot(2,2,2);
imshow(img_fft);
title("FFT applied on Image")


[M, N] = size(input_image);
FT_img = fft2(double(input_image));
D0 = 10; % one can change this value accordingly
u = 0:(M-1);
idx = find(u>M/2);
u(idx) = u(idx)-M;
v = 0:(N-1);
idy = find(v>N/2);
v(idy) = v(idy)-N;
[V, U] = meshgrid(v, u);
D = sqrt(U.^2+V.^2);
H = double(D > D0);
G = H.*FT_img;
output_image = real(ifft2(double(G)));

subplot(2, 2, 3);
imshow(output_image, [ ]);
title("FFT Image")

[M, N] = size(input_image);
FT_img = fft2(double(input_image));
D0 = 30;
% Designing filter
u = 0:(M-1);
idx = find(u>M/2);
u(idx) = u(idx)-M;
v = 0:(N-1);
idy = find(v>N/2);
v(idy) = v(idy)-N;
[V, U] = meshgrid(v, u);
D = sqrt(U.^2+V.^2);
H = double(D <= D0);
G = H.*FT_img;
output_image = real(ifft2(double(G)));
subplot(2, 2, 4);
imshow(output_image, [ ]);
title("IFFT Image")
