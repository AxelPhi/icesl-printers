;<header>
; Initialize

M107                ; Turn layer fan off
G28                 ; Home
G21                 ; We're using metric measurements
G90                 ; use absolute coordinates
M82                 ; use absolute distances for extrusion

; Heat up
G0 X0 Y30 Z30 F9000 ; Park in front and up 30mm for heating/cleaning

M140 S<HBPTEMP>     ; Aim to heat up bed to full temp
M104 S160           ; Aim to heat up nozzle to standby temp
M190 S<HBPTEMP>     ; Wait for bed to reach full temp
M109 S<TOOLTEMP>    ; Wait for nozzle to reach full temp

; Prime nozzle
G92 E0              ; Zero extruder

G0 X0 Y30 Z0.1 F9000  ; Move to 0.1mm height
G0 Y40 F500           ; Move 10mm to get rid of material
G0 Z1.0 F9000         ; Move up a bit to detach sticky material
G0 Y45 F9000          ; Move to line start
G0 Z0.2 F9000         ; Move down to prime line height

G1 Y125 E25 F500      ; Extrude 25mm filament over 80mm Y axis
G1 Y135 F750          ; Move 10mm without extracting to wipe off
G1 Z1.0 F9000         ; Lift up 
G1 Y30 F750           ; Move straight back to detach any string
G92 E0                ; Zero extruder

;</header>
