%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Objective Function Trial 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function objfunc= SCalibrate(Sc1,r0,xt,yt,td,v)
d0=r0; %sqrt((xt-Sm(1,1)).^2+(yt-Sm(1,2)).^2);
d1= sqrt((xt-Sc1(1)).^2+(yt-Sc1(2)).^2);
objfunc= abs(d0-d1)-v*td;