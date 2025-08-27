clc;
close all;
clear all:

x = [1, 1, 0, 1, 1]
nx = [- 2, - 1, 0, 1, 2]
h1 = [1, -1, 2, 5] ;
nh1 = -3:0
h2 = [1, -2, -3, 4] ; % system 2 h2[n]
nh2 = -3:0;
[heq, nheq]= convolution_sum (nh1, h1, nh2, h2);

[xh1,xnh1] = convolution_sum(nx,x,nh1,h1);

[y1,ny1] = convolution_sum(xnh1,xh1,nh2,h2); 

[y2,ny2] = convolution_sum(nx,x,nheq,heq);

subplot(211)

stem(ny1,y1, 'Linewidth', 2);

subplot(212)

stem(ny2, y2, 'Linewidth', 2);

