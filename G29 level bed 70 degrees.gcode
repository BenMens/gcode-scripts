; Setup
G28 X0 Y0 ;move X/Y to min endstops
G28 Z0 ;move Z to min endstops
M105; Report Temperatures
G21 ;metric values
G90 ;absolute positioning
M82 ;set extruder to absolute mode
M107 ;start with the fan off

; Automatic bed leveling
M140 S70; Set bed temperature
M190 S70; Wait for Bed Temperature
G29; Perform bed leveling
M500; Save mesh to EEPROM
M420 S1 ;Enable auto bed leveling