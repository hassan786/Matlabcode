%Program to calibrate the sensor nodes using the simulated data.
clear all;
clc;
disp('Select the type of curve to be Simulated for the Calibration') 
disp('1= straight line, 2=sinusoidal curve, 3=spline')
choice= input('Enter the choice:')  %Enter the choice of cureve to be simulated for calibrating the sensors

[xt,yt]= curve(choice);             % The x and y co-ordinates give the tag positions as a mathematical function

Sm=[0,0];                           %Co-cordinates of a Master sensor.
%ns=input('enter the number of slave sensors')% Number of slave sensors to be calibrated
ns=1; % number of slave sensors to be calibrated
S(1,:)=[0,20];          %Co-ordinate of Slave Sensor 1
% S(2,:)=[,];           %Co-ordinate of Slave Sensor 2
% S(3,:)=[,];           %Co-ordinate of Slave Sensor 3

v=3e8;                  %speed of the waves

% m=number of target positions (get it by determining the size of xt)
[m,n] = size(xt);

%Calculating r0 (the distance of each of the target position from the master sensor)
r0=sqrt((xt-Sm(1,1)).^2+(yt-Sm(1,2)).^2);

%%%% Call the function to generate the simulated TDOA measurements
td=zeros(ns,n);
for i=1:ns
    S=S(i,:);
    t= timediff(r0,xt,yt,S,v); %time difference form each of the target positions
    td(i,:)=t;
end


Sc1=[];         %Co-ordinate of calibrated Slave Sensor 1
% Sc(2,:)=[]       %Co-ordinate of calibrated  Slave Sensor 2
% Sc(3,:)=[]       %Co-ordinate calibrated  Slave Sensor 3

%%%% Call the function "SCalibrate" to calibrate the sensor nodes.
for i=1:ns
    Sc1= SCalibrate(r0,xt,yt,v,td,n);         %Calibrating each of the sensor nodes
end




