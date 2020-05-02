;<footer>
M300 P500  ; Beep 
G91                   ; Incremental coordinates
G1 Z5.0 F9000         ; Move up 5mm
G90                   ; Absolute cooridinates
M104 S0               ; Turn off extruder
M140 S0               ; Turn off bed
M107
G28 X Y               ; Park at X Y Home position. Keep Z.
M84                   ; Disable motors
;</footer>