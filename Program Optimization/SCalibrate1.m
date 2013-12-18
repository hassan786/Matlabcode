function ErrFun= SCalibrate1(Sc,r0,xt,yt,td,v)

  for p=1:3
     r(p,:)=sqrt((xt-Sc(p,1)).^2+(yt-Sc(p,2)).^2);
     ErrFun(p,:)=r0-r(p,:)-td(p,:)*v;
  end

end