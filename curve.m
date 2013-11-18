function [m n]= curve(t)
switch t
    case 1
        disp('curve seleted is a straight line')
        m=1:0.5:20;
        n=2*m+3;
        plot(m,n)
    case 2
        disp('curve seleted is a sinusoidal curve')
        m=1:0.5:20;
        n=5*sin(m);
        plot(m,n)
    case 3
        disp('curve seleted is a spline')
        m=1:0.5:20;
        n=sin(m)+0.5*m;
        plot(m,n)
    otherwise
        disp('Curve selection does not exist')
end
        