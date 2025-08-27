clc;
clear all;
close all;

n=0:9;
x1=n+2;
x2=n;

[y1,n1]=system2(4*x1,n);
[y2,n2]=system2(5*x2,n);
[y3,n3]=system2(4*x1+5*x2,n);

subplot(211)
stem(n1,y1+y2,'Linewidth',3);
title("Superposition of the individual outputs");

subplot(212)
stem(n3,y3,'Linewidth',3);
title("Output of the superposition of the inputs");

