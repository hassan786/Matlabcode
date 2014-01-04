lb=0;  % lower bound 
ub=10; %upper bound 
  
[x0]=[0.7 0.7]; % initial guess

x=lsqnonlin(@myfun,x0,lb,ub) % least square non-linear optamization function call