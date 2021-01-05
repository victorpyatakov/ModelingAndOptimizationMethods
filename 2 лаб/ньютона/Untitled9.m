clc;
clear;

%%метод ньютона
eps=0.001;
x=-1;
n=1;
x1=1;
int_beg=x-x1;

while n<500000
    fx=f(x1);
    fd=fp(x1);
    fd2=fp2(x1);
    if fx<=eps || abs(x-x1)<=eps
        break;
    else
        x=x1;
        x1=x-fd/fd2;
    end
    
    
    
    n=n+1;
end
int_end=x-x1;

speed_sxod=int_end/int_beg;% скорость сходимсоти
