%ID-20210105055
 %Problem 1
 clc;
clear all;
close all;

x1 = [5 6 7 8];
nx1 = -1:2;
x2= [8 9 7];
nx2=-1:1;
[y,y1,y2,n] =isig(nx1,x1,nx2,x2);

subplot(311)
stem(n,y1);
subplot(312)
stem(n,y2);
subplot(313)
stem(n,y);