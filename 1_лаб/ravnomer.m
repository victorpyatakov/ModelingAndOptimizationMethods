close all;
clear all;
clc;

%% ����� ������������ ������


%% ����� ��������� [a,b]
a=0;
b=10;
interval_begin=b-a;%����� ��������� � ������
eps=0.01;%��������(��������)1
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



interval_end=2/dx;%����� ��������� � �����
%%
speed_sxod=2/dx;% �������� ���������
N_step=speed_sxod*interval_begin;%���������� �����