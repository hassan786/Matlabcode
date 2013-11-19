%********************************************************************
%CALIBRATION OF SENSORS USING TDOA APPRAOCH FOR SIMULATED DATA
%********************************************************************
disp('Select the type of curve to be Simulated for the Calibration')
disp('1= straight line, 2=sinusoidal curve, 3=spline')
choice= input('Enter the choice:') %Enter the choice of cureve to be simulated for calibrating the sensors
[x y]= curve(choice) % The x ad y co-ordinates give the tag positions as a mathematical function
Sm=[0 0];   % Position of the master sensor. This is to be manually calibrated using the 
S(1,:)=[0 20];   %Assumed position of the sensor to be calibrated
%S(2,:)= [20,20];
%S(3,:)= [20, 0]; these sensor locations to be added later. 

[m,n] = size(x);
ns=size(S,1);

    
    
    r0 = [];
    for i=1:n
        r0 = [r0 ((x(i)-Sm(1))^2+(y(i)-Sm(2))^2)^0.5]; % get real distance from emitter for each and one of the stations
    end
    r1= [];
    i=1;
    for i=1:ns
        
    for j=1:n
        r(i) = [r(i) ((x(j)-S(i,1))^2+(y(j)-S(i,2))^2)^0.5]; % get real distance from emitter for each and one of the stations
    end
    end
    
    R= r0-r1
   v= 3*10^8;    %speed of electrmagnectiv waves in air (almost approx)
   t= R/v;
   