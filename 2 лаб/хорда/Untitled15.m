clc;
clear;

%%метод хорд


a=-1;
b=10;
eps=0.001;
n=1;

int_beg=b-a;
while abs(b-a)>eps
    fa=f(a);
    fb=f(b);
    a=b-(b-a)*fb/(fb-fa);
     fa=f(a);
     fb=f(b);
    b=a+(a-b)*fa/(fa-fb);
    n=n+1;
end

int_end=b-a;

sped=abs(int_end/int_beg);