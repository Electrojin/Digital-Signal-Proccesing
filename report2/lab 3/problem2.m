clc;
clear all;
close all;

x=[7 6  1 4 8 9 3];
nx=-3:3;
[xo,nxo] = sigfold (x, nx); %folded signs
[x1,nx1]= sigadd (nx,x,nxo,xo); % sum of the x[n] & x[-n]
xe=0.5.*x1; %even portion of the signal
[x2,nx2]= sigadd(nx,x,-1.*nxo,xo); % difference of the x[n] & x[-n]
xo = 0.5.*x2; %odd portion of the signal
subplot(311)
stem(nx,x);
title ('Signal x');
subplot(312)
stem(nx,xe);
title ('Even component of signal x');
subplot(313)
stem(nx,xo);
title ('Odd component of signal x');