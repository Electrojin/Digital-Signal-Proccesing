clc;
clear all;
close all;
n=0:199;
x=(cos(0.2*pi.*n)+0.5*cos(0.6*pi.*n));

[x2,nx2]=sigshift(0.1*x,n,20);
[y,ny]=sigadd(n,x,nx2,x2);
[y1,ny1]=sigfold(y,ny);

[ryy,nryy]=convolution_sum(ny,y,ny1,y1);

[rxy,nrxy]=convolution_sum(n,x,ny1,y1);

subplot(211)
stem(nryy,ryy);
title('auto correlationy[n]');
subplot(212)
stem(nryx,ryx);
title('cross correlation');


