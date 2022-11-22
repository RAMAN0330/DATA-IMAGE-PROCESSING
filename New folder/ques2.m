#2
clear all;
close all;
clc;
pkg load image;


a=imread('lagartha.jpg');
subplot(3,2,1)
imshow(a);
title('original image-1');

d=255-a;
d=a;
for row=1:size(a,1)
  for col=1:size(a,2)
    d(row,col,:)=255-a(row,col,:);
  end
end

subplot(3,2,2)
imshow(d);
title('negative');


#b
img = a;
[x, y, z] = size(img);
for plane = 1 : z
  len = x;
  for i = 1 : x
    for j = 1 : y
      if i < x/2
        temp = img(i, j, plane);
        img(i, j, plane) = img(len, j, plane);
        img(len, j, plane) = temp;
      end
    end
    len = len - 1;
  end
end

subplot(3,2,3);
imshow(img);
title('Flipped Image')


#c
x=im2double(rgb2gray(imread('lagartha.jpg')));
T=graythresh(x);
[row col]=size(x);
IM_BW=zeros(row,col);
for i=1:row
  for j=1:col
    if(x(i,j)>T)
      IM_BW(i,j)=1;
    else
      IM_BW(i,j)=0;
    end
  end
end
subplot(3,2,4);
imshow(IM_BW);
title('Threshold image');

#d
X = imread('forest.jpg');
subplot(3,2,5)
imshow(X);
title('original image-2');

a = min(X(:));
b = max(X(:));
Y= (X-a).*(255/(b-a));
subplot(3,2,6);
imshow(Y);
title('Contrast Streached Image')

