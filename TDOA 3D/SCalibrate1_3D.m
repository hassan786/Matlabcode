function ErrFun= SCalibrate1_3D(Sc,r0,xt,yt,zt,td,v,ns)

  for p=1:ns-1
     r(p,:)=sqrt((xt-Sc(p,1)).^2+(yt-Sc(p,2)).^2+(zt-Sc(p,3)).^2);
     ErrFun(p,:)=r0-r(p,:)-td(p,:)*v;
  end

end