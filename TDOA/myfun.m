function objective_function = myfun(x)% objective function

measured_angle_sensor=[27 37 49] %Measured angles from the system
  
  xe=[3 5 7] % emitter values vector
  ye=[2 4 8] % emitter values vector
  
X=xe-x(1)% xe-xs
Y=ye-x(2)%ye-ys
 angle=Y/X
    AOA_radians=atan(angle)%radian angle calculation
    AOA_degrees=AOA_radians*(180/pi)% degrees angle calculation
    objective_function=measured_angle_sensor- AOA_degrees% objective function definition
    
end