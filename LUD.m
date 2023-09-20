function[]=LUD(A,B)
[L U P]=lu(A)
y=L\(P*B)
x=U\y

