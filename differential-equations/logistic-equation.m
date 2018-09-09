#
# logistic-equation.m
#
# Copyright 2015 2016 2017 2018 by John Gambini
#
f1 = inline('1./(1+e.^(-x))','x'); %the logistic equation
f2 = @(x) 1./(1+e.^(-x)); %the logistic equation
f3 = @(x) f2(x).*(1-f2(x));
f4 = inline('f1.*(1-f1)');

[X,Y]=meshgrid(-6:.5:6,-1:1/12:1);  % choose the plot sizes
DY=f3(X); DX=ones(size(DY)); % generate the plot values 
%quiver(X,Y,DX,DY, 'k');     

x = [-6:.5:6];
y = [0:1/12:1]; 

hold on;

dirfield(f4, x, y);

plot(x,f2(x), "b", "linewidth", 2 );

hold off;