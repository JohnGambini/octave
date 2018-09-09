# autonomous-dir-field-logistic-eq.m
#
# Copyright 2015 2016 2017 2018 by John Gambini
#
f1 = inline('y.*(2-y)','x','y');
%f2 = @(x) 2 ./ (2+ e.^(-2.*x)); 
f2 = @(x) 1./((1/2)+e.^(-2*x)); %the logistic equation (sort of)

Ffun = @(X,Y)(2-Y).*Y;           % function f(x,y)=(2-y)y
[X,Y]=meshgrid(-4:.3:4,-1:.2:3);  % choose the plot sizes
DY=Ffun(X,Y); DX=ones(size(DY)); % generate the plot values 

quiver(X,Y,DX,DY,.8, 'k', "linewidth", 2);          % plot the direction field in black

x = [-4:.25:4];
y = [-1:.25:3];

hold on;

%dirfield(f1,x,y);

%contour(X,Y,DY,[0 1 2], 'g',"linewidth", 3);    % add the isoclines(0 1 2) in green

%plot(x,f2(x), "b", "linewidth", 2 );


%title('Slope field and isoclines for f(x,y)=y(2-y)')

#print -dpng "autonomous-dir-field.png"