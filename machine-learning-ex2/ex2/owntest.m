data = load('ex2data2.txt');
X = data(:,[1,2]);
y = data(:,3);
pos = find(y==1);
neg = find(y==0);
plot(X(pos,1),X(pos,2),'g+');
hold on
plot(X(neg,1),X(neg,2),'rx');


x = [ones(length(X),1) X];
m = length(x);
n = min(size(x));
theta = zeros(n,1);

lambda = 1;

reg = (lambda/2*m)*(sum(theta(2:end).^2));
z = zeros(m,1); h_x=zeros(m,1);grad = zeros(size(theta));
z = x*theta;
h_x = 1./(1+exp(-z));
J = 0;
J = (1/m)*sum((-y.*log(h_x))-((1-y).*log(1-h_x))) + reg;
grad(1) = (1/m)* (x(:,1)'*(h_x-y));                                  
grad(2:end) = (1/m)* (x(:,2:end)'*(h_x-y))+(lambda/m)*theta(2:end);



