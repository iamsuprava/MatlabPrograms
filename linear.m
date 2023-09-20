function[]=linear(x,y)
n=length(x);
s=[ones(1,n);x]';
P=s'*s;
Q=s'*y';
Z=P\Q;
a=Z(1);
b=Z(2);
syms t
yp=a+b*t;
fprintf('Best straight line for the given data is \n')
disp(vpa(yp,4))
t=min(x):0.01:max(x);
z=eval(yp);
plot(x,y,'*',t,z,'b')
legend('given data','best fit')
	title('Straight line fit')
end
