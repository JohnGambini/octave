
close all; clc; clear all;

function xdot = f(t,y)
  xdot = -2*y.^2+t;
endfunction

tvals = linspace(-1,10,21);
yvals =  linspace(-2,2,21);

slopefield("f",tvals,yvals);

hold on;

tvals = linspace(-1,10,50);
#fv = feval("f");

[t,y] = ode45("f",tvals,0.175);
plot(t,y,'linewidth',2,'b');

[t,y] = ode45("f",tvals,0.35);
plot(t,y,'linewidth',2,'b');

[t,y] = ode45("f",tvals,0.18);
plot(t,y,'linewidth',2,'b');

[t,y] = ode45("f",tvals,0.1);
#plot(t,y,'linewidth',2,'b');



