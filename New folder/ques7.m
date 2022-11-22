#7
clear all;
close all;
clc;
pkg load image;


img = imread('leaf.jpg');
subplot(3,3,1);
imshow(img);
title("Original image");

img_noise= imnoise(img,'salt & pepper',0.02);
subplot(3,3,2);
imshow(img_noise);
title("Image with salt and pepper noise");

img_gaussian_noise = imnoise(img,'gaussian');
subplot(3,3,3);
imshow(img_gaussian_noise);
title("Image with gaussian noise");

#a
mf=ones(3,3)/9;
img_restoration = imfilter(img_noise,mf)  # using mean filter
subplot(3,3,4);
imshow(img_restoration);
title("Image restoration using mean filter");

#b
sigma = 3 ;
cutoff = ceil(3*sigma);
h=fspecial('gaussian', 2*cutoff+1, sigma);
img_noise_removed=imfilter(img_noise,h); #using gaussian filter
subplot(3,3,5);
imshow(img_noise_removed);
title("Salt & pepper noise removed using gaussian filter");

#c
mf=ones(3,3)/9;
img_gaussian_noise_removed = imfilter(img_gaussian_noise,mf)  # using mean filter
subplot(3,3,6);
imshow(img_gaussian_noise_removed);
title('Gaussian noise removed using harmonic mean filter');


#d

img_medianfilter = img_noise;
for c = 1 : 3
    img_medianfilter(:, :, c) = medfilt2(img_noise(:, :, c), [3, 3]);
end
subplot(3,3,7);
imshow(img_medianfilter);
title("Image with median filter");
















