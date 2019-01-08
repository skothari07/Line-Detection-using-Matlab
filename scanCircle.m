function [data]=scanCircle(image, display_image, point, radius, look_angle)
         image=double(image);
      display_image=double(display_image);
        point=double(point);
        x = point(1);
        y = point(2);
        scan_start =  1;%x - radius;
        scan_end = 640 ; %x + radius;
        endpoint_left = coordinateFromPoint(point, 180, radius);
        endpoint_right = coordinateFromPoint(point, 0, radius);
        startAngle = 180;
        returnVal = true;
        j=1;
        for i = 1:1:181;
                current_angle = startAngle - i+1;
                [x1,y1] = coordinateFromPoint(point, current_angle, radius);
              % plot(x1,y1,'-.y*')
                if y1==0;
                    y1=1;
                end
                if x1==0;
                    x1=1;
                end
                scan_point = [x1,y1];
                if inImageBounds(image, scan_point(1), scan_point(2));
                        imageValue = image(scan_point(2),scan_point(1));
                        data(j,:) = [imageValue, scan_point(1), scan_point(2)];
                        j=j+1;
                else
                        returnVal = false;
                        %break;
                end
        end
end