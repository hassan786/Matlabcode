function ErrFun= SCalibrate1(Sc,r0,xt,yt,td1,td2,td3,v)

       r1=sqrt((xt-Sc(1)).^2+(yt-Sc(2)).^2);
       e1= r0-r1-td1*v;
       r2=sqrt((xt-Sc(3)).^2+(yt-Sc(4)).^2);
       e2= r0-r2-td2*v;
       r3=sqrt((xt-Sc(5)).^2+(yt-Sc(6)).^2);
       e3= r0-r3-td3*v;
       ErrFun=[e1,e2,e3];
end
