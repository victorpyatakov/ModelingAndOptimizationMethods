function [ x_opt ] = optimum( x1,x2,x3,f1,f2,f3 )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

%a0=f1;
a1=(f2-f1)/(x2-x1);
a2=(1/(x3-x2))*(((f3-f1)/(x3-x1))-((f2-f1)/(x2-x1)));

x_opt=((x1+x2)/2)-(a1/(2*a2));
end

