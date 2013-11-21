function [m n]= curve(t)                        %this function generates a simulated data based on the selection
switch t                                        %switch Switch among several cases 
    
    case 1                                      %first case generates straight line 
        disp('curve seleted is a straight line')
        m=1:0.5:20;
        n=0.4*m+5;                              %equation of straight line
        plot(m,n)                               %plot straight line
    
    case 2                                      %second case generates sinusoidal curve
        disp('curve seleted is a sinusoidal curve')
        m=1:0.5:20;
        n=5*sin(m);                             %equation of sinusoidal function
        plot(m,n)                               %plot sinusoidal
    
    case 3                                      %third case generates spline
        disp('curve seleted is a spline')
        m=1:0.5:20;
        n=sin(m)+0.5*m;                         %equation of spline
        plot(m,n)                               %plot spline
    otherwise
        disp('Curve selection does not exist')   
end
        