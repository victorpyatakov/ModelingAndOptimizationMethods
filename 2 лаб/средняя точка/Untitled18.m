clear;
clc;

%%средн€€ точка
a0=-1;
b0=10;
x=(a0+b0)/2;
a=a0;
b=b0;
eps=0.001;
int_beg=b0-a0;
n=1;
while (b-a)>eps
    
    fd=fp(x);
    if fd<0
        a=x;
    else
        b=x;
    end
    x=(a+b)/2;
    
   n=n+1; 
end
int_end=b-a;
sped=int_end/int_beg;