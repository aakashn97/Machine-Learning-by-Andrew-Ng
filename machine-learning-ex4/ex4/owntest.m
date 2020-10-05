clc;
clear;
load('ex4data1.mat');
load('ex4weights.mat');
m = length(X);
X = [ones(m,1) X];
num_label = 10; J =0;
lambda = 0.1;
a1 = X; %5000x401
z2 = a1*Theta1'; %5000x401 * 401*25 = 5000x25
a2 = sigmoid(z2);
a2 = [ones(m,1) a2]; %5000x26
z3 = a2*Theta2'; % 5000x26 * 26x10 = 5000x10
a3 = sigmoid(z3);
h_x = a3;
y_vec = (1:num_label)==y;

delta3 = a3-y_vec;
delta2 = (delta3*Theta2).* [ones(m,1) sigmoidGradient(z2)];
delta2 = delta2(:,2:end);

delta1_grad = (1/m)*(delta2'*a1);
delta2_grad = (1/m)*(delta3'*a2);

reg = (lambda/2*m)*sum(sum([Theta1(:,2:end).^2 + sum(sum(Theta2(:,2:end).^2))]));


 


J = (-1/m)*(sum(sum(((y_vec*(log(h_x))') + (1-y_vec)*(log(1-h_x))')))) + reg;

delta1_grad_reg = (lambda/m) * [zeros(size(Theta1,1), 1) Theta1(:,2:end)]; % 25 x 401
delta2_grad_reg = (lambda/m) * [zeros(size(Theta2,1),1) Theta2(:,2:end)];

delta1_grad = delta1_grad + delta1_grad_reg;
delta2_grad = delta2_grad + delta2_grad_reg;





