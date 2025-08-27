clc;
clear all;
close all;
function y = sigmult(x1, x2)
%SIGMULT Element-wise multiplication of two signals.
%   Y = SIGMULT(X1, X2) multiplies the corresponding elements of 
%   signals X1 and X2. X1 and X2 must have the same dimensions.

% Check for equal dimensions
if ~isequal(size(x1), size(x2))
    error('Input signals must have the same dimensions.');
end

% Perform element-wise multiplication
y = x1 .* x2;
end