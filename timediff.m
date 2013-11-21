%************************************************************************
%Function to generate the time differnce tau for all the slave sensors.
%************************************************************************

function f= timediff(r0,xt,yt,S,n)
%function calculating distence vector 'r'  for each of the slave sensor
for i=1:ns
    
for j=1:n
        r(i,j) = ((xt(j)-S(i,1))^2+(yt(j)-S(i,2))^2)^0.5; % get real distance from emitter for each and one of the stations
end
f(i,:)= r(i,:)/v;
end

    