close all;
clear all;
clc;
%% метод дихотомии
%%вычисение производной исходной функции
syms x;
y=2*x - 24/x^3;
f=diff(y);
%% выбор интервала [a,b]
a=-10;
b=10;
interval_begin=b-a;%длина интервала в начале
n=0;%счетчик итераци, не знаю зачем если есть для этого формула пусть будет
eps=0.001;%точность(епсилент)1

d=b-a;

%% основной цикл
while b-a>eps
    
    c=(a+b)/2;
    x=a;
    f_a=eval(f);%подстановка начала интервала
    x=c;
    f_c=eval(f);%подстановка вычисленного деленного пополам
    
    r=f_a*f_c;
    
    % выбор интервала либо [a,x], либо [x,b]
    if r>0
        a=c;
    else
        b=c;
    end
    n=n+1;
end

interval_end=b-a;%длина интервала в конце
%%
speed_sxod=interval_end/interval_begin;% скорость схдимости
N_step=speed_sxod*interval_begin;%количество шагов