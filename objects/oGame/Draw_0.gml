/// @description 
if (live_call()) return live_result;

var hora_atual, minuto_atual, segundo_atual;
var texto_hora;

var current_datetime = date_current_datetime();
hora_atual = date_get_hour(current_datetime);
minuto_atual = date_get_minute(current_datetime);
segundo_atual = date_get_second(current_datetime);

// Formata a hora, minuto e segundo com dois dígitos
texto_hora = string("{0}:{1}:{2}", hora_atual, minuto_atual, segundo_atual);

draw_set_color(c_white); // Defina a cor do texto

// Desenha o texto na posição (x, y) na tela
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text(room_width/2, 32, texto_hora);

//draw_sprite(blocks_100, 0, 32, 32);

// Desenhar grid
var _xstart = room_width/2;
var _ystart = room_height/2;

for (var i = 0; i < ds_grid_width(grid); i++) {
  for (var j = 0; j < ds_grid_height(grid); j++) {
     var _t = grid[# i, j];
     if (is_undefined(_t)) continue;
     _t.xind = i;
     _t.yind = j;
     _t.draw();
  }
}