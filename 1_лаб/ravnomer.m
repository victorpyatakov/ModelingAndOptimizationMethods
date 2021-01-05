close all;
clear all;
clc;

%% метод равномерного поиска


%% выбор интервала [a,b]
a=0;
b=10;
interval_begin=b-a;%длина интервала в начале
eps=0.01;%точность(епсилент)1
dx =  (b-a)/eps-1     ;

yMin = f(a);
xMin = a;
nn=0;
for i=1:1:dx
    x=a+i*eps;
    y=f(x);
            if y>yMin
        xMin = x;
        yMin = y;
        
            end
            nn=nn+1;
end



interval_end=2/dx;%длина интервала в конце
%%
speed_sxod=2/dx;% скорость схдимости
N_step=speed_sxod*interval_begin;%количество шагов