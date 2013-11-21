disp('Select the type of curve to be Simulated for the Calibration')
disp('1= straight line, 2=sinusoidal curve, 3=spline')
choice= input('Enter the choice:') %Enter the choice of cureve to be simulated for calibrating the sensors
[xt yt]= curve(choice); % The x ad y co-ordinates give the tag positions as a mathematical function

Sm=[0,0];           %Co-cordinates of a Master sensor.
ns=input('enter the number of slave sensors')% Number of slave sensors to be calibrated
S(1,:)=[0,20];      %Co-ordinate of Slave Sensor 1
% S(2,:)=[,];         %Co-ordinate of Slave Sensor 2
% S(3,:)=[,];         %Co-ordinate of Slave Sensor 3
v=3e8; %speed of the waves

% m=number of target positions (get it by determining the size of xt)
%%%% Call the function to generate the simulated TDOA measurements

for i=1:ns
    S=S(i,:);
    t= timediff(r0,xt,yt,S,n); %time difference form each of the target positions
    td(i,:)=t;
end


Sc(1,:)=[,]      %Co-ordinate of calibrated Slave Sensor 1
% Sc(2,:)=[,]         %Co-ordinate of calibrated  Slave Sensor 2
% Sc(3,:)=[,]         %Co-ordinate calibrated  Slave Sensor 3





%%%% Call the function to calibrate the sensor nodes.

