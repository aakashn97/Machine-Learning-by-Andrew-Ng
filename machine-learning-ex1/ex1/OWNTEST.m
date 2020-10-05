data = load('ex1data1.txt');  
X = data(:,1);
m = length(X);
x = [ones(m,1),X];
y = data(:,2);
alpha = 0.01;
theta = zeros(2,1);
iteration = 1500;
COST = cost(x,y,theta);
[theta,jhistory] = graddes(x,y,theta,alpha,iteration);

