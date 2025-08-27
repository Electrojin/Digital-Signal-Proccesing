%ID-20210105055
 %Problem 1
clc;
clear all;
close all;

x1=[5 6 7 8];
nx1=-1:2;


x2=[8 9 7];
nx2=-1:1;
[y,n]=sigmult(nx1,x1,nx2,x2);
subplot(311)
stem(n,y);
subplot(312)
stem(n,y);
subplot(313)
stem(n,y);