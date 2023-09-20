function[]=syseq(A,B)
[m,n]=size(A);
rA=rank(A);
M=[A,B];
rM=rank(M);
if rA==rM
    fprintf('The system of eqns is consistent')
    if rA==n
        fprintf('\n The system has unique solution and soln is:\n')
        X=A\B;
        disp(X)
    else
        fprintf('\n The system has infinte solutions \n')
    end
else
    fprintf('\n The system of eqns is inconsistent \n')
end
end
