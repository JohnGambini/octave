#
# Link: ?? 
#
% plot vector fields for:
%
%   F(x,y) = <x,y>
%   F(x,y) = <2x,1/2y>
%   F(x,y) = <x^2*y,y^2>
%
close all; clc; clear all;

%define domain and range
x = -10:2:10;
y = -10:2:10;

[X,Y] = meshgrid(x,y);

Fx1 = X;
Fy1 = Y;
figure(1);
quiver(X,Y,Fx1,Fy1);

Fx2 = 2*X;
Fy2 = 0.5*Y;
figure(2);
quiver(X,Y,Fx2,Fy2);

Fx3 = (X.^2).*Y;
Fy3 = Y.^2;
figure(3);
quiver(X,Y,Fx3,Fy3);

