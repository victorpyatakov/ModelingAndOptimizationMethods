close all;
clear all;
clc;

%y=-5*x^2 +4.4*x+0.6;
a=-10;
b=10;
eps=0.01;
Q=(-1+sqrt(5))/2;

interval_begin=b-a;%длина интервала в начале
nn=0;
while b-a>eps
    x1=b-((b-a)*Q);
    x2=a+((b-a)*Q);

    y1=f(x1);
    y2=f(x2);

    if y1>y2
        b=x2;
    else 
        a=x1;
    end
    nn=nn+1;
end

x=(a+b)/2;

interval_end=b-a;%длина интервала в конце
%%
speed_sxod=interval_end/interval_begin;% скорость схдимости
N_step=speed_sxod*interval_begin;%количество шагов