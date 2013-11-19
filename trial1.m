%********************************************************************
%CALIBRATION OF SENSORS USING TDOA APPRAOCH FOR SIMULATED DATA
%********************************************************************
disp('Select the type of curve to be Simulated for the Calibration')
disp('1= straight line, 2=sinusoidal curve, 3=spline')
choice= input('Enter the choice:') %Enter the choice of cureve to be simulated for calibrating the sensors
[x y]= curve(choice) % The x ad y co-ordinates give the tag positions as a mathematical function
Sm=[0 0];   % Position of the master sensor
S1=[0 20];   %Assumed position of the sensor to be calibrated
%S2= [20,20];
%S3= [20, 0]; these sensor locations to be added later. 

[m,n] = size(x);
    
    
    r = [];
    for i=1:n
        r = [r ((x(i)-Sm(1))^2+(y(i)-Sm(2))^2)^0.5]; % get real distance from emitter for each and one of the stations
    end
    r1= [];
    for j=1:n
        r1 = [r1 ((x(j)-S1(1))^2+(y(j)-S1(2))^2)^0.5]; % get real distance from emitter for each and one of the stations
    end
    R= r-r1
   v= 3*10^8;    %speed of electrmagnectiv waves in air (almost approx)
   t= R/v;
   