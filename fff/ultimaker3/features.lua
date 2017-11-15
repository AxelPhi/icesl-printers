version = 1

bed_size_x_mm = 215
bed_size_y_mm = 195
bed_size_z_mm = 200

extruder_offset_x = {}
extruder_offset_y = {}
extruder_offset_x[0] =   0.0
extruder_offset_y[0] =   0.0
extruder_offset_x[1] = -18.0
extruder_offset_y[1] =   0.0

extruder_count = 2

-- Requires extruder to swap material at a given location,
-- this also forces the tower to appear at this same location.
extruder_swap_at_location = true
extruder_swap_location_x_mm = 201
extruder_swap_location_y_mm = 179

extruder_swap_retract_length_mm = 16.0
extruder_swap_retract_speed_mm_per_sec = 30.0

nozzle_diameter_mm = 0.4

priming_mm_per_sec = 40

gen_tower = true
tower_side_x_mm = 10.0
tower_side_y_mm = 5.0
tower_brim_num_contours = 12

enable_active_temperature_control = true

z_layer_height_mm_min = 0.05
z_layer_height_mm_max = nozzle_diameter_mm * 0.75

print_speed_mm_per_sec_min = 5
print_speed_mm_per_sec_max = 80

bed_temp_degree_c_min = 0
bed_temp_degree_c_max = 120
bed_temp_degree_c     = 45

perimeter_print_speed_mm_per_sec_min = 5
perimeter_print_speed_mm_per_sec_max = 80

first_layer_print_speed_mm_per_sec = 10
first_layer_print_speed_mm_per_sec_min = 1
first_layer_print_speed_mm_per_sec_max = 80

for i=0,63,1 do
  _G['filament_diameter_mm_'..i] = 2.85
  _G['filament_priming_mm_'..i] = 6.50
  _G['extruder_temp_degree_c_' ..i] = 210
  _G['extruder_temp_degree_c_'..i..'_min'] = 150
  _G['extruder_temp_degree_c_'..i..'_max'] = 270
  _G['extruder_mix_count_'..i] = 1
end
