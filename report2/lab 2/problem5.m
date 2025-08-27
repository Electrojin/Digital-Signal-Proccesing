
clc;
close all;
clear all;
 x= [1 1 2 3 5 8 13 21 34 55];
nx=-4:5;
[x1,nx] = sigfold (x, nx);
 [xi,nxi] = sigshift (x1, nx, -3);
 [x1,nx1] = sigshift (x, nx, -3);
 [x2, nx2]= sigfold (x1,nx1);
 subplot (311)
 stem (nx,x);
 title ('Signal x');
subplot (312)
stem (nxi,xi);
 title ('Doing Folding 1st');
 subplot (313)
stem (nx2,x2);
 title ('Doing Shifting 1st');