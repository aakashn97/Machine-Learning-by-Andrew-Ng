function j = cost(x,y,theta)
m = length(x);
h = x*theta;
j = (1/m)*(sum((h-y).^2));
