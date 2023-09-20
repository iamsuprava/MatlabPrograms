function[]=rcn(A)
B=rref(A)
Br=B(1:rank(A),:)' %basis for row space
dimrs=rank(A)      %dimension of row space
[R,j]=rref(A);
Cs=A(:,j)           %basis for column space
dimcs=rank(A)    %dimension of column space
Ns=null(A)          %basis for null space
dimns=length(A)-rank(A)    %dimension of null space