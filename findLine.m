function [x,y,left,right,data]= findLine(display_image, scan_data, x, y, radius)
       scan_data=double(scan_data)
       for index = 2:1:length(scan_data)
                data(index) = scan_data(index - 1) - scan_data(index);
       end                     
        scan_start = 1; %x - radius;
        scan_end = 640;  %x + radius;
        left=[1,1];
        right=[1,1];
%         left  = ones(2,1);
%         right = ones(2);
       for index = 1 :1: length(data)
                if data(index) >= left(2);
                        left(2) = data(index);
                        left(1) = index;
                end
                if data(index) <= right(2);
     
                        right(2) = data(index);
                        right(1) = index;
                end
       end
%         hold on
%         plot(right(1),y,'-.y*')
%         plot(left(1),y,'-.y*')
%         right(1)
%         left(1)
        
        line_position = (right(1) + left(1)) / 2;
        x=round(scan_start + line_position);
        
        