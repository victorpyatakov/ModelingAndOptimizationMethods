clear all
clc

syms x;
y=x^2+12/x^2-2;
f=diff(y);%производная

N=0;
eps=0.01;

x=-1.9;

tmp=x+2*eps;
while abs(x-tmp)>eps
   tmp=x;
   
   df=eval(f);
   ff=x^2+12/x^2-2;
     x=x-ff/df;
     
     
     
     
     N=N+1; 
    
    
end
