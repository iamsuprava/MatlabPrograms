function []=power_method(A,x)
maxit=100;
tol=10^(-10);
x0=x;
for i=1:maxit
    x=A*x0;
    M=max(x);
    x=x/M;
    if abs(x-x0)<tol
        break
    end
    x0=x;
end
fprintf('The dominant eigen value is %f \n',M)
    fprintf('The corresponding eigen vector is :')
    x
end
