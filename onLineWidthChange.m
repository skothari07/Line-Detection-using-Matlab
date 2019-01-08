function onLineWidthChange(newValue)
        global SCAN_RADIUS
        SCAN_RADIUS = int(round(newValue/2));