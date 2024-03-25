/// @description 
if (live_call()) return live_result;

for (var i = 0; i < ds_grid_width(grid); i++) {
  for (var j = 0; j < ds_grid_height(grid); j++) {
    var _t = grid[# i, j];
    if (is_undefined(_t)) continue;
    var _height = sin((current_time + 300 * i) / 400) * 6 + 3
    _t.z = _height;
  }
}

if (keyboard_check_pressed(vk_f1)) {
  game_restart(); 
}