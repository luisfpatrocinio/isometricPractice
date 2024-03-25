/// @description 
if (live_call()) return live_result;

#macro TW 64
#macro TH 32
xStart = 180;
yStart = 180;


/// @func Tile(_x, _y, sprite)
/// @param {real} _x
/// @param {real} _y
/// @param {Asset.GMSprite} _sprite
Tile = function(_x, _y, _sprite) constructor {
  x = _x;
  y = _y;
  z = 0;
  sprite = _sprite;
  
  draw = function() {
    var _x = oGame.xStart + convertWorldToIso(xind, yind)[0];
    var _y = oGame.yStart + convertWorldToIso(xind, yind)[1] - z;
    draw_sprite(sprite, 0, _x, _y);
  }
}

width = 9;
height = 9;
tilesGrid = ds_grid_create(width, height);
ds_grid_clear(tilesGrid, undefined);
var _spr = choose(blocks_40, blocks_55, blocks_66)
ds_grid_set_disk(tilesGrid, floor(width/2), floor(height/2), floor(width/2), _spr);

grid = ds_grid_create(width, height);
ds_grid_clear(grid, undefined);
for (var i = 0; i < ds_grid_width(grid); i++) {
  for (var j = 0; j < ds_grid_height(grid); j++) {
    var _spr = tilesGrid[# i, j];
    if (is_undefined(_spr)) continue
    grid[# i, j] = new Tile(i, j, _spr);
  }
}