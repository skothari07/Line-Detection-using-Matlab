 function angle=lineAngle(point1, point2)
        angle = round(atan((point2(2) - point1(2))/ -(point2(1) - point1(1)))) %*180/math.pi);
 end
        
         