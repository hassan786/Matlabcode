function [m,n]= curve(t)                        %this function generates a simulated data based on the selection
switch t                                        %switch Switch among several cases 
    
    case 1                                      %first case generates straight line 
        disp('curve seleted is a straight line')
        m=0:0.2:6;
        n=0.4*m;                              %equation of straight line
        %y = awgn(n,20,'measured');              % Add white Gaussian noise.

        plot(m,n)                           %plot straight line
        title('Straight Line')
         xlabel('X');
        ylabel('Y=f(X)');
        %legend('Original signal',h 'Signal witAWGN');
   
    case 2                                      %second case generates sinusoidal curve
        disp('curve seleted is a sinusoidal curve')
        m=0:0.2:7;
        n=5*sin(m);                             %equation of sinusoidal function
        %y = awgn(n,10,'measured');              % Add white Gaussian noise.

        plot(m,n)                           %plot sinusoidal
        title('Plot of sin')
       
        xlabel('X');
        ylabel('Y=f(X)');
        legend('Original signal','Signal with AWGN');
   
    otherwise
        disp('Curve selection does not exist')   
end
        