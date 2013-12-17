%************************************************************************
%Function to generate the time differnce tau for all the slave sensors.
%************************************************************************

function f= timediff(r0,xt,yt,S,v)
%function calculating distence vector 'r'  for each of the slave sensor
r = sqrt((xt-S(1)).^2+(yt-S(2)).^2); % get real distance from emitter for each and one of the stations
rd=(r0-r);
f= rd/v;
end

    