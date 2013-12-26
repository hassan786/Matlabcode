clear all;
clc;
disp('Please define all the sensor locations for the sensor network location in the file "Sensor_data" as per the coloums provided')
Sall=xlsread('Sensor_data');    %Read the sensor data file and import it into an variable
ns=size(Sall,1);                %determines the number of sensors in the network
Sm= Sall(1,:);
for i=2:ns
    S(i-1,:)=Sall(i,:);         %for loop to sort the data into proper sensor locations
end

disp('Select the type of curve to be Simulated for the Calibration') 
disp('1= straight line, 2=sinusoidal curve')
choice= input('Enter the choice:')  %Enter the choice of cureve to be simulated for calibrating the sensors

[xt,yt]= curve(choice);             % The x and y co-ordinates give the tag positions as a mathematical function

v=3e8;             %speed of the waves in m/s

r0=sqrt((xt-Sm(1)).^2+(yt-Sm(2)).^2);
for i=1:ns-1
    Sl=S(i,:);
    td(i,:)= timediff(r0,xt,yt,Sl,v); %time difference form each of the target positions for sensor 1 to master
end
disp('Enter the initial point for the optimization algorithm.')
x0=input('Enter the initial point row wise for each slave sensor')
Sc=lsqnonlin(@(Sc)SCalibrate1(Sc,r0,xt,yt,td,v,ns),(x0)) 
    % least square non-linear optamization function call
    % The initial guess of 1,0 for the third sensor gives accurate results
