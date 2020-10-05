load('ex3data1.mat');
m = length(X);
X = [ones(m,1) X];
theta = zeros(n,1);
n = size(X,2);
lambda = 0.1;
J = 0;
[J,grad] = lrCostFunction(theta,X,y,lambda);


