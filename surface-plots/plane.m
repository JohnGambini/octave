# plane.m
#
# Copyright 2015 2016 2017 2018 by John Gambini
#
point = [0,0,0];
normal = [0,0,1];

%# a plane is a*x+b*y+c*z+d=0
%# [a,b,c] is the normal. Thus, we have to calculate
%# d and we're set
d = -point*normal'; %'# dot product for less typing

%# create x,y
[xx,yy]=ndgrid(-5:5,-5:5);

%# calculate corresponding z
z = (-normal(1)*xx - normal(2)*yy - d)/normal(3);

%# plot the surface
surf(xx,yy,z);


xlabel("x","fontsize",28,"fontname","times new roman","fontangle","italic");
ylabel("y","fontsize",28,"fontname","times new roman","fontangle","italic");





