function [m,n]= curve(t)                        %this function generates a simulated data based on the selection
switch t                                        %switch Switch among several cases 
    
    case 1                                      %first case generates straight line 
        disp('curve seleted is a straight line')
        m=0:0.3:7;
        n=m;                              %equation of straight line
        plot(m,n)                           %plot straight line
        title('Straight Line')
         xlabel('X');
        ylabel('Y=f(X)');
   
    case 2                                      %second case generates sinusoidal curve
        disp('curve seleted is a sinusoidal curve')
        m=0:0.2:7;
        n=3*sin(m)+4;                             %equation of sinusoidal function
        plot(m,n)                           %plot sinusoidal
        title('Plot of sin')
       
        xlabel('X');
        ylabel('Y=f(X)');
        
    case 3
       m=0:0.2:6;
       n=(sqrt(3^2-(m-3).^2))+3.5;
       plot(m,n)
   
    otherwise
        disp('Curve selection does not exist')   
end
        