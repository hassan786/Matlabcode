clear all;
clc;
disp('Select the type of curve to be Simulated for the Calibration') 
disp('1= straight line, 2=sinusoidal curve')
choice= input('Enter the choice:')  %Enter the choice of cureve to be simulated for calibrating the sensors

[xt,yt]= curve(choice);             % The x and y co-ordinates give the tag positions as a mathematical function

Sm=[0,0];          % Co-ordinates of master sensor
S1=[0,6];          %Co-ordinate of Slave Sensor 1
S2=[7,6]; 
S3=[7,0];
v=3e8;             %speed of the waves in m/s

r0=sqrt((xt-Sm(1)).^2+(yt-Sm(2)).^2);
td1= timediff(r0,xt,yt,S1,v); %time difference form each of the target positions for sensor 1 to master
td2= timediff(r0,xt,yt,S2,v); %time difference form each of the target positions for sensor 1 to master
td3= timediff(r0,xt,yt,S3,v); %time difference form each of the target positions for sensor 1 to master

Sc=lsqnonlin(@(Sc)SCalibrate1(Sc,r0,xt,yt,td1,td2,td3,v),([0,0,0,0,0,0])); 
    % least square non-linear optamization function call
    % The initial guess of 1,0 for the third sensor gives accurate results
