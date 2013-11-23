function xy = SCalibrate ( r0,xt,yt,v,td,n)
% Function to calibrate the sensor node using the TDOA measurements
W=zeros(n,2);
b=zeros(n,1);
for var=2:n
   
    W(var-1,1)=2*(xt(1,1)-xt(1,var));
    W(var-1,2)=2*(yt(1,1)-yt(1,var));
    b(var-1,1)= (r0(1,var)-v*td(1,var))^2-(r0(1,1)-v*td(1,1))^2+(xt(1,1))^2-(xt(1,var)^2)+(yt(1,1))^2-(yt(1,var))^2;

xy=pinv(W)*b;

end

