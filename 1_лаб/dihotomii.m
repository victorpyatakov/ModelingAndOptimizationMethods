close all;
clear all;
clc;
%% ����� ���������
%%��������� ����������� �������� �������
syms x;
y=2*x - 24/x^3;
f=diff(y);
%% ����� ��������� [a,b]
a=-10;
b=10;
interval_begin=b-a;%����� ��������� � ������
n=0;%������� �������, �� ���� ����� ���� ���� ��� ����� ������� ����� �����
eps=0.001;%��������(��������)1

d=b-a;

%% �������� ����
while b-a>eps
    
    c=(a+b)/2;
    x=a;
    f_a=eval(f);%����������� ������ ���������
    x=c;
    f_c=eval(f);%����������� ������������ ��������� �������
    
    r=f_a*f_c;
    
    % ����� ��������� ���� [a,x], ���� [x,b]
    if r>0
        a=c;
    else
        b=c;
    end
    n=n+1;
end

interval_end=b-a;%����� ��������� � �����
%%
speed_sxod=interval_end/interval_begin;% �������� ���������
N_step=speed_sxod*interval_begin;%���������� �����