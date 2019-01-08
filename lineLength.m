function len=lineLength(point1, point2)
        dx = point1(1) - point2(1);
        dy = point1(2) - point2(2);
        dx = double(dx);
        dy = double(dy);
        len=round(sqrt(dx*dx + dy*dy)); 
end