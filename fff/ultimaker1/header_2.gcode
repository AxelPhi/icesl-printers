M109 T0 S<T0TEMP> 
M109 T1 S<T1TEMP> 
T0
;FLAVOR:Ulti1GCode
G21 
G90 
M82  
M107      
G28 X0 Y0   
G28 Z0    
G1 Z15.0 F9000 
G92 E0       
G1 F200 E3      
G92 E0          
G1 F9000 
M117 Printing... 
M107 