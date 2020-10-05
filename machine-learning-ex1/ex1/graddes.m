function [theta,jhistory] = graddes(x,y,theta,alpha,iteration)
m = length(x);
jhistory = zeros(iteration,1);
for i=1:iteration
    h = x*theta;
    t1 = theta(1)- alpha*(1/m)*sum((h-y).*x(:,1));
    t2 = theta(2)- alpha*(1/m)*sum((h-y).*x(:,2));
    theta(1) = t1;
    theta(2) = t2;
    jhistory(i) = cost(x,y,theta);
end
end

    