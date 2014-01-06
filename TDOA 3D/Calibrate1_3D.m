clear all;
clc;
disp('Please define all the sensor locations for the sensor network location in the file "Sensor_data" as per the coloums provided')
S=xlsread('Sensor_data');    %Read the sensor data file and import it into an variable
ns=size(S,1);                %determines the number of sensors in the network

disp('Select the type of curve to be Simulated for the Calibration')
disp('1= straight line, 2=sinusoidal curve')
choice= input('Enter the choice:')  %Enter the choice of cureve to be simulated for calibrating the sensors

[xt,yt,zt]= curve_3D(choice);             % The x and y co-ordinates give the tag positions as a mathematical function

v=3e8;             %speed of the waves in m/s

r0=sqrt((xt-S(1,1)).^2+(yt-S(1,2)).^2+(zt-S(1,3)).^2);
for i=2:ns
    Sl=S(i,:);
    td(i-1,:)= timediff_3D(r0,xt,yt,zt,Sl,v); %time difference form each of the target positions for sensor 1 to master
end

x0=zeros(ns-1,3);
Sc=lsqnonlin(@(Sc)SCalibrate1_3D(Sc,r0,xt,yt,zt,td,v,ns),(x0))
% least square non-linear optamization function call
% The initial guess of 1,0 for the third sensor gives accurate results
