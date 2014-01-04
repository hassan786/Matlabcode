%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Objective Function Trial 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function objfunc= SCalibrate(r0,xt,yt,td,v,S)
d0=r0; %sqrt((xt-Sm(1,1)).^2+(yt-Sm(1,2)).^2);
d1= sqrt((xt-S(1)).^2+(yt-S(2)).^2);
objfunc= d0-d1-v*td;