%%
data = csvread('Data_train_reduced.csv',2,3);
y = data(:,1);
x = data(:,2:end);
X = [ones(length(y),1) x];
m = length(X);
n = min(size(X));
initial_theta = zeros(n,1);
theta = zeros(n,1);
lambda = 10;
options = optimset('GradObj', 'on', 'MaxIter', 400);

[theta, J, exit_flag] = ...
	fminunc(@(t)(costFunctionReg(t, X, y, lambda)), initial_theta, options);

%%
test_data = csvread('test_data.csv',1,3);
x_test = [test_data randi([1 10],length(test_data),6)];
lol = predict(theta,x_test);