%******************************************************
% PROGRAM TO SIMULATE THE TDOA APPROACH FOR CALIBRATION
%******************************************************

% FUNCTION TO GENERATE A CURVE
% straight line
m= 0.1:0.1:10;
for i=1:100
    y(i)= 3*m(i)+2;
end
plot(m,y)

%generate a parabola
x1=[0,0];
 x2=[5,5];
 x3=[10,0];
 Y=[x1(2);x2(2);x3(2)]
A=[x1(1)^2 x1(1) 1;x2(1)^2 x2(1) 1;x3(1)^2 x3(1) 1]
X=inv(A)*Y
x=x1(1):0.1:x3(1);
Y=X(1)*x.^2+X(2)*x;
figure, plot(x,Y)