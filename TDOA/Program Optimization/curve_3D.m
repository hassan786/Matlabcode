function [a,b,c]= curve_3D(t)                        %this function generates a simulated data based on the selection
switch t                                        %switch Switch among several cases
    
    case 1                                      %first case generates straight line
        disp('curve seleted is a straight line')
        a=0:0.3:7;
        b=a;                              %equation of straight line
        [m,n]=size(a);
        c=8*rand(1,n);
        scatter3(a,b,c)                           %plot straight line
        title('Straight Line')
        xlabel('X');
        ylabel('Y');
        zlabel('Z');
        
    case 2                                      %second case generates sinusoidal curve
        disp('curve seleted is a sinusoidal curve')
        a=0:0.2:7;
        b=3*sin(a)+4;                             %equation of sinusoidal function
        [m,n]=size(a);
        c=8*rand(1,n);
        scatter3(a,b,c)                           %plot straight line
        title('Straight Line')
        xlabel('X');
        ylabel('Y');
        zlabel('Z');
        
    case 3
        a=0:0.2:6;
        b=(sqrt(3^2-(a-3).^2))+3.5;
        [m,n]=size(a);
        c=8*rand(1,n);
        scatter3(a,b,c)                           %plot straight line
        title('Straight Line')
        xlabel('X');
        ylabel('Y');
        zlabel('Z');
        
    case 4
        A = zeros(0,2);
        B = zeros(0,2);
        C = zeros(0,2);
        D = zeros(0,2);
        
        north = [ 0  1];
        east  = [ 1  0];
        south = [ 0 -1];
        west  = [-1  0];
        
        order = 3;
        for b = 1:order
            AA = [B ; north ; A ; east  ; A ; south ; C];
            BB = [A ; east  ; B ; north ; B ; west  ; D];
            CC = [D ; west  ; C ; south ; C ; east  ; A];
            DD = [C ; south ; D ; west  ; D ; north ; B];
            
            A = AA;
            B = BB;
            C = CC;
            D = DD;
        end
        
        A = [0 0; cumsum(A)];
        
        %plot(A(:,1), A(:,2), 'clipping', 'off')
        
        a=A(:,1)';
        b=A(:,2)';        
        [m,n]=size(a);
        c=8*rand(1,n);
        scatter3(a,b,c)                           %plot straight line
        title('Straight Line')
        xlabel('X');
        ylabel('Y');
        zlabel('Z');
        
        
    otherwise
        disp('Curve selection does not exist')
end
