close all;
clear all;
clc

pkg load image;

% Reduce the spatial resolution of the original image. Using imwrite function, save it as fruits2.png
Orig_Img = imread('D:\shong\4th year\1st sem\CPEN 111\fruits.png');
subplot(231);
Gray = rgb2gray(Orig_Img)
%imshow(Gray)

title('Original Image')

Orig_Img2 = imresize(imresize(Gray,1/4),4);
subplot(232);
%imshow(Orig_Img2)
title('at 64x64 resolution')


Orig_Img3 = imresize(imresize(Gray,1/8),8);
subplot(233);
%imshow(Orig_Img3)
title('at 32x32 resolution')


Orig_Img4 = imresize(imresize(Gray,1/16),16);
subplot(234);
%imshow(Orig_Img4)
title('at 16x16 resolution')


Orig_Img5 = imresize(imresize(Gray,1/32),32);
subplot(235);
%imshow(Orig_Img5)
title('at 8x8 resolution')

imwrite(Orig_Img3, 'D:\shong\4th year\1st sem\CPEN 111\fruits2.png');

%Convert from its color RGB image to HSV and save it as fruits3.png
g = rgb2hsv(Orig_Img);
imshow(g);

imwrite(g,'D:\shong\4th year\1st sem\CPEN 111\fruits3.png');


