clear all;
clc;
disp('Select the type of curve to be Simulated for the Calibration') 
disp('1= straight line, 2=sinusoidal curve, 3=spline')
choice= input('Enter the choice:')  %Enter the choice of cureve to be simulated for calibrating the sensors

[xt,yt]= curve(choice);             % The x and y co-ordinates give the tag positions as a mathematical function

Sm=[0,0];
S1=[0,2];          %Co-ordinate of Slave Sensor 1
v=3e8;                  %speed of the waves

r0=sqrt((xt-Sm(1,1)).^2+(yt-Sm(1,2)).^2);
td= timediff(r0,xt,yt,S1,v); %time difference form each of the target positions

lb=[0 0];  % lower bound 
ub=[20 20]; %upper bound 
[x0]=[0 0]; % initial guess

Sc1=lsqnonlin(@(Sc1)SCalibrate(Sc1,r0,xt,yt,td,v),x0,lb,ub) % least square non-linear optamization function call
