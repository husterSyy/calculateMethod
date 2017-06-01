function x=newton_iteration(f,x0,tol)
x1=x0-f(x0)/f1(x0);k=1;
while abs(x1-x0)>=tol
    x0=x1;x1=x0-f(x0)/f1(x0);k=k+1;
end
x1
k