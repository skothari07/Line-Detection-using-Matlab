function val= inImageBounds(image, x, y)
         val= and(and(and(x>0,y>0),y <=length(image(:,1))),x <=length(image(1,:)));
         
end