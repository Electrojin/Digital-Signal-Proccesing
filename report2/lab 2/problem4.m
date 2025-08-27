clc;
close all;
clear all;
nx=-4:5;
x=[1 1 2 3 5 8 13 21 34 55];

[x1,nx] = sigfold (x, nx);

[xi,nxi] = sigshift (x1, nx, -3); 
[xii,nxii] = sigshift (x1, nx, 4); 

subplot (311)

stem (nx,x);

title ('Signal x');

subplot (312)

stem (nxi,xi);

title ('Signal x[-n-3]');

subplot (313)

stem (nxii,xii);

title ('Signal x[-n+4]');