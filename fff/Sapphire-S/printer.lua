-- Sapphire-S

current_fan_speed = -1
current_frate = -1
current_z = -1
extruder_e = 0
extruder_e_restart = 0
reset_e_on_next_prime = false

function comment(text)
  output('; ' .. text)
end

function header()
  h = file('header.gcode')
  h = h:gsub( '<TOOLTEMP>', extruder_temp_degree_c[extruders[0]] )
  h = h:gsub( '<HBPTEMP>', bed_temp_degree_c )
  output(h)
end

function footer()
  output(file('footer.gcode'))
end

function layer_start(zheight)
  comment('<layer>')
  output('G1 Z' .. f(zheight))
end

function layer_stop()
  extruder_e_restart = extruder_e
  output('G92 E0')
  comment('</layer>')
end

function retract(extruder,e)
  extruder_e = e
  output('G10')
  return e
end

function prime(extruder,e)
  extruder_e = e
  output('G11')
  return e
end

function move_xyz(x,y,z)
  if (z == current_z) then
    output('G1 X' .. f(x) .. ' Y' .. f(y) )
  else
    output('G1 X' .. f(x) .. ' Y' .. f(y) .. ' Z' .. f(z))
    current_z = z
  end  
end

function move_xyze(x,y,z,e)
  extruder_e = e
  if (z == current_z) then
    output('G1 X' .. f(x) .. ' Y' .. f(y) .. ' E' .. ff(e - extruder_e_restart))
  else
    output('G1 X' .. f(x) .. ' Y' .. f(y) .. ' Z' .. f(z) .. ' E' .. ff(e - extruder_e_restart))
    current_z = z
  end
end

function move_e(e)
  extruder_e = e
  output('G1 E' .. ff(e - extruder_e_restart))
end

function set_feedrate(feedrate)
  if feedrate ~= current_frate then
    output('G1 F' .. feedrate)
    current_frate = feedrate
  end
end

function set_extruder_temperature(extruder,temperature)
  output('M104 S' .. f(temperature) .. ' T' .. extruder)
end

function set_and_wait_extruder_temperature(extruder,temperature)
  output('M109 S' .. f(temperature) .. ' T' .. extruder)
end

function set_fan_speed(speed)
  if speed ~= current_fan_speed then
    if speed == 0 then
      output('M107')
    else
      output('M106 S'.. math.floor(255 * speed/100))
    end
    current_fan_speed = speed    
  end
end

-- Unused functions for the Sapphire-S

function extruder_start()
end

function extruder_stop()
end

function progress(percent)
end

function select_extruder(extruder)
end

function swap_extruder(from,to,x,y,z)
end
