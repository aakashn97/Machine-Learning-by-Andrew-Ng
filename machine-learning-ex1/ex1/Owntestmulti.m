data = load('ex1data2.txt');
X = data(:,1:2);
y = data(:,3);
m = length(y);
x = [ones(m,1),X];
iterations = 1500;
alpha = 0.01;
theta = zeros(3,1);
j = cost(x,y,theta);

