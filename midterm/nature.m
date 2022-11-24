
clc;
clf;
clear all;
close all;
pkg load image;

nature=imread('D:\shong\4th year\1st sem\CPEN 111\midterm\nature.jpg');

f = rgb2gray(nature);

whos nature
whos f

#convert original image to red image.
red=nature;
red(:,:,2)=0;
red(:,:,3)=0;

#convert original image to green image.
green=nature;
green(:,:,1)=0;
green(:,:,3)=0;

#convert original image to blue image.
blue=nature;
blue(:,:,1)=0;
blue(:,:,2)=0;

#convert jpg image to png image.
imwrite(nature,'D:\shong\4th year\1st sem\CPEN 111\midterm\nature.png');
imwrite(red,'D:\shong\4th year\1st sem\CPEN 111\midterm\nature_red.png');
imwrite(green,'D:\shong\4th year\1st sem\CPEN 111\midterm\nature_green.png');
imwrite(blue,'D:\shong\4th year\1st sem\CPEN 111\midterm\nature_blue.png');

subplot(2,2,1),imshow(nature),title('original image');%print original image.
subplot(2,2,2),imshow(red),title('red  image');%print gray image.
subplot(2,2,3),imshow(green),title('green image');%print gray image.
subplot(2,2,4),imshow(blue),title('blue image');%print gray image.
%figure,imshow(nature);

