function xy = SCalibrate ( r0,xt,yt,v,td )
% Function to calibrate the sensor node using the TDOA measurements
W=zeros(n,2);
b=zeros(n,1);
for var=2:n
   
    W(var-1,1)=2*(xt(1)-xt(var));
    W(var-1,2)=2*(yt(1)-yt(var));
    b(var-1)= 2*r0*v*(td(1)-td(var-1))+v*v*(td(var-1)^2-td(1)^2)-(xt(var-1)^2-xt(1)^2)-(yt(var-1)^2-yt(1)^2);
end

xy=pinv(W)*b;

end

