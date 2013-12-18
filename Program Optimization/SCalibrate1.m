function ErrFun= SCalibrate1(Sc,r0,xt,yt,td,v)

       r1=sqrt((xt-Sc(1,1)).^2+(yt-Sc(1,2)).^2);
       e1= r0-r1-td(1,:)*v;
       r2=sqrt((xt-Sc(2,1)).^2+(yt-Sc(2,2)).^2);
       e2= r0-r2-td(2,:)*v;
       r3=sqrt((xt-Sc(3,1)).^2+(yt-Sc(3,2)).^2);
       e3= r0-r3-td(3,:)*v;
       ErrFun=[e1;e2;e3];
end
