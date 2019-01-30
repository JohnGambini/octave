
close all; clc; clear all;

function xdot = f1(t,y)
  xdot = -y.^2+t;
endfunction

f2 = @(t,y) -y.^2+t;
f3 = inline('-y', 't','y');

tval = -3:.2:3;
yval = -3:.2:3;

slopefield("f1",tval,yval);

#f2 = inline('y^2+t','t','y');
#f3 = @(t,y) -y^2+t;
#dirfield(f,-1:.2:3, -2:.2:2);


