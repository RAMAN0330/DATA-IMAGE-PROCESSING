#8
clear all;
close all;
clc;
pkg load image;


img = imread('groot.jpg');
subplot(2,2,1);
q= rgb2gray(img)
imshow((q));

title('Original image');
b=size(img);

if size(b,2)==3
    a = rgb2gray(img);
end
a = imnoise(img,'salt & pepper');


n=9;
n1=ceil(n/2);
a=double(a);
lpf=(1/n^2)*ones(n);
hpf=-lpf;
hpf(n1,n1)=(n^2-1)/n^2;

c=0;
h=0;
for i=n1:b(1)-n1
    for j=n1:b(2)-n1
        p=1;
        for k=1:n
            for l=1:n
            c(p)=img(i-n1+k,j-n1+l);
            p=p+1;
            end
        end

        d(i,j)=median(c);
        c=0;
    end
end
e=uint8(d);

subplot(2,2,2);
imshow(e);
title('low pass image');

for i=n1:b(1)-n1
    for j=n1:b(2)-n1
        for k=1:n
            for l=1:n
            h=h+img(i-n1+k,j-n1+l)*hpf(k,l);
            end
        end

        g(i,j)=h;
        h=0;
    end
end
f=uint8(g);

subplot(2,2,3);
imshow(f);
title('high pass image');








