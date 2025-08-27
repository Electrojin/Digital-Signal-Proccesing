clc;
clear all;
close all;

%Verifying Non-Commutative property of Cross Corre

x=[1 2 1 1];
nx=0:3;
y=[3 5 8 13 21];
ny=-1:3;
[y1,ny1] = sigfold (y,ny);

[rxy,nrxy]= convolution_sum (nx,x,ny1,y1);
[x1,nx1] = sigfold (x,nx);

[ryx,nryx] = convolution_sum (ny,y,nx1,x1);

subplot(211)

stem (nrxy,rxy);

title ('Cross Correlation between x[n] & y[n]');

subplot(212)

stem (nryx,ryx);

title ('Cross Correlation between y[n] & x[n]');