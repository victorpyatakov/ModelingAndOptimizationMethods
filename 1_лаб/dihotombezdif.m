close all;
clear all;
clc;

%% метод дихотомии
%%вычисение производной исходной функции
%syms x;
%y=-5*x^2 +4.4*x+0.6;
%f=diff(y);
%% выбор интервала [a,b]
a=-10;
b=10;
interval_begin=b-a;%длина интервала в начале
eps=0.001;%точность(епсилент)1


nn=0;
%% основной цикл
while eps<b-a
    
    c=(a+b)/2;
    f_a=f(a);%подстановка начала интервала
    f_c=f(c);%подстановка вычисленного деленного пополам
    
    r=f_a*f_c;
    
    % выбор интервала либо [a,x], либо [x,b]
    if r>0
        a=c;
    else
        b=c;
    end
 nn=nn+1;
end

interval_end=b-a;%длина интервала в конце
%%
speed_sxod=interval_begin/interval_end;% скорость схдимости
N_step=speed_sxod*interval_begin;%количество шагов