close all;
clear all;
clc;

%% ����� ���������
%%��������� ����������� �������� �������
%syms x;
%y=-5*x^2 +4.4*x+0.6;
%f=diff(y);
%% ����� ��������� [a,b]
a=-10;
b=10;
interval_begin=b-a;%����� ��������� � ������
eps=0.001;%��������(��������)1


nn=0;
%% �������� ����
while eps<b-a
    
    c=(a+b)/2;
    f_a=f(a);%����������� ������ ���������
    f_c=f(c);%����������� ������������ ��������� �������
    
    r=f_a*f_c;
    
    % ����� ��������� ���� [a,x], ���� [x,b]
    if r>0
        a=c;
    else
        b=c;
    end
 nn=nn+1;
end

interval_end=b-a;%����� ��������� � �����
%%
speed_sxod=interval_begin/interval_end;% �������� ���������
N_step=speed_sxod*interval_begin;%���������� �����