clc;
clear all;
close all;

n=-20:25;
delta = (n==0); 
[x2,n] = sigshift (delta, n, 1);
h1= zeros(1,length(n));

for i = 3:length(n)

h1(i) = delta(i)-delta(i-1)+4*h1(i-1)-4*h1(i-2)

end
b=[1,-1]; % coefficent vector of s[n]/delta[n]

a = [1, -4, 4]; % coefficient vector ofy[e]/h[n]

h2 = filter (b,a,delta);

nx=0:25; 

x=(5+3*cos (0.2*pi.*nx)+4*sin(0.6*pi.*nx));

[y,ny]= convolution_sum (nx, x, n, h1);

stem(ny,y);
title('y[n]=x[n]*h[n]');
