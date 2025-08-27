clc;
clear all;
close all;

n = -20:25;
delta = (n==0); % delta[n]

[x2,n] =sigshift (delta, n, 1); %delta[n-1]

h1= zeros(1,length(n));

for i=3:length(n)

h1(i) = delta(i)-delta(i-1)+4*h1(i-1)-4*h1(i-2);

end

%using filter function

b=[1,-1];% coefficent vector of x[n]/delta[n] a=[1, -4, 4]; % coefficient vector of y[n]/h[n]
a=[1,-4,4];
h2=filter(b,a,delta);

subplot (211)

stem(n,h1);

subplot (212)

stem(n,h2);