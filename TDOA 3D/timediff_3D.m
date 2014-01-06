%************************************************************************
%Function to generate the time differnce tau for all the slave sensors.
%************************************************************************

function y= timediff_3D(r0,xt,yt,zt,Sl,v)
%function calculating distence vector 'r'  for each of the slave sensor
r = sqrt((xt-Sl(1)).^2+(yt-Sl(2)).^2+(zt-Sl(3)).^2); % get real distance from emitter for each and one of the stations
y=(r0-r)/v;
end

    