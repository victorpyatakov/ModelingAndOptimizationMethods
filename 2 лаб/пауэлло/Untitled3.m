clear all
clc
 %% метод пауэло
 %уравнения
 eps=0.001;
x1=-1;
deltax=0.1;



x2=x1+deltax;

interval_begin=10+1;
n=1;
while n<1000
    if n==1
    f1 = funcc( x1 );
    f2=  funcc( x2 );

    if f1>f2
        x3=x1+2*deltax;
    else
        x3=x1-deltax;
    end
    f3=funcc( x3 );
    else  
        f1 = funcc( x1 );
        f2=  funcc( x2 ); 
        f3=funcc( x3 );
    end
    fmin=min([f1,f2,f3]);

    
    [x1,x2,x3,f1,f2,f3 ] = sortich( x1,x2,x3,f1,f2,f3 );
    
    
    x_opt  = optimum( x1,x2,x3,f1,f2,f3 );

    f_opt=funcc( x_opt );

    if (fmin-f_opt)/f_opt <=eps
           break;
    else
        x1=x1-deltax;
        x2=x2-deltax;
        x3=x3-deltax;
    end
    n=n+1;
end


interval_end=x3-x_opt;

speed_sxod=interval_end/interval_begin;% скорость сходимсоти