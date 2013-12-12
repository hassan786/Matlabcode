clear all;
clc;
disp('Select the type of curve to be Simulated for the Calibration') 
disp('1= straight line, 2=sinusoidal curve, 3=spline')
choice= input('Enter the choice:')  %Enter the choice of cureve to be simulated for calibrating the sensors

[xt,yt]= curve(choice);             % The x and y co-ordinates give the tag positions as a mathematical function

Sm=[0,0];          % Co-ordinates of master sensor
S1=[0,6];          %Co-ordinate of Slave Sensor 1
S2=[7,6];          %Co-ordinate of Slave Sensor 2
S3=[7,0];          %Co-ordinate of Slave Sensor 3
v=3e8;             %speed of the waves in m/s

r0=sqrt((xt-Sm(1)).^2+(yt-Sm(2)).^2);
td1= timediff(r0,xt,yt,S1,v); %time difference form each of the target positions for sensor 1 to master
td2= timediff(r0,xt,yt,S2,v); %time difference form each of the target positions for sensor 2 to master
td3= timediff(r0,xt,yt,S3,v); %time difference form each of the target positions for sensor 3 to master

lb=[0,0];  % lower bound 
ub=[7,7]; %upper bound 

Sc1=lsqnonlin(@(Sc1)SCalibrate(Sc1,r0,xt,yt,td1,v),[0,1],lb,ub) % least square non-linear optamization function call
Sc2=lsqnonlin(@(Sc2)SCalibrate(Sc2,r0,xt,yt,td2,v),[0,1],lb,ub) % least square non-linear optamization function call
Sc3=lsqnonlin(@(Sc3)SCalibrate(Sc3,r0,xt,yt,td3,v),[1,1],lb,ub) % least square non-linear optamization function call
