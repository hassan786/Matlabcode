%************************************************************************
%Function to generate the time differnce tau for all the slave sensors.
%************************************************************************

function y= timediff_3D(r0,xt,yt,zt,Sl,v)
%function calculating distence vector 'r'  for each of the slave sensor
r = sqrt((xt-Sl(1)).^2+(yt-Sl(2)).^2+(zt-Sl(3)).^2); % get real distance from emitter for each and one of the stations
y=(r0-r)/v;
 scale=0.1;% add  noise in term of percentage based on gaussian 
    
[m,n] = size(xt);
%f2=rd/v;
%f= rd/v + f1.*(rd/v)*scale;
y=((r0-r)/v)+((r0-r)/v).*normrnd(0,1,[1,n])*scale;
end

    