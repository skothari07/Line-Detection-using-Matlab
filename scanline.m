function data = scanline(image, display_image, point, radius)
        x = point(1);
        y = point(2);
        scan_start = 1 ;%x - radius;
        scan_end = 640;%x + radius;
        row=zeros(640);
        row = image(y,:);
        data = row(scan_start:scan_end);
       
end
        