function [ x1,x2,x3,f1,f2,f3 ] = sortich( x1,x2,x3,f1,f2,f3 )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here

x_sort=sort([x1,x2,x3]);
    x1=x_sort(1);
    x2=x_sort(2);
    x3=x_sort(3);
    
    f_sort=sort([f1,f2,f3]);
    f1=f_sort(1);
    f2=f_sort(2);
    f3=f_sort(3);

end

