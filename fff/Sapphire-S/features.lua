-- Two Trees Sapphire-S

-- Printing bed dimensionds
bed_size_x_mm = 200
bed_size_y_mm = 200
bed_size_z_mm = 200

-- Extruder characteristics

extruder_count = 1
nozzle_diameter_mm = 0.4
filament_diameter_mm_0 = 1.75
z_offset   = 0.0

-- Retraction and priming defaults

filament_priming_mm_0 = 3.5
priming_mm_per_sec = 35

-- Min/Max Values

-- Layer thickness
z_layer_height_mm_min = 0.05
z_layer_height_mm_max = nozzle_diameter_mm * 0.75

-- Printing speeds
print_speed_mm_per_sec_min = 10
print_speed_mm_per_sec_max = 60

perimeter_print_speed_mm_per_sec_min = 10
perimeter_print_speed_mm_per_sec_max = 60

first_layer_print_speed_mm_per_sec = 15
first_layer_print_speed_mm_per_sec_min = 10
first_layer_print_speed_mm_per_sec_max = 60

-- Bed temperatures
bed_temp_degree_c = 60
bed_temp_degree_c_min = 0
bed_temp_degree_c_max = 75

for i = 0, max_number_extruders, 1 do
  _G['filament_diameter_mm_'..i] = filament_diameter_mm_0
  _G['filament_priming_mm_'..i] = filament_priming_mm_0 = 3.5
  _G['extruder_temp_degree_c_' ..i] = 210
  _G['extruder_temp_degree_c_'..i..'_min'] = 150
  _G['extruder_temp_degree_c_'..i..'_max'] = 270
end
