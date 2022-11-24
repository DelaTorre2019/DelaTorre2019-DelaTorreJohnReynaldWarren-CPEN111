clc;
clf;
clear all;
close all;
pkg load image;


parrot=imread('D:\shong\4th year\1st sem\CPEN 111\midterm\parrots.jpg');


whos parrot


image_gray=rgb2gray(parrot);
subplot(1,2,1),imshow(parrot),title('original image');
subplot(1,2,2),imshow(image_gray),title('converted gray  image');


