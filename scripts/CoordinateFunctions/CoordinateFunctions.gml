/// @func convertWorldToIso
/// @desc Converte a posição do tile no mundo para a posição na visão isométrica
/// @param world_x A coordenada x do tile no mundo
/// @param world_y A coordenada y do tile no mundo
/// @return array Array contendo as coordenadas x e y na visão isométrica
function convertWorldToIso(world_x, world_y) {
  var iso_x, iso_y;

  iso_x = (world_x - world_y) * (TW/ 2);
  iso_y = (world_x + world_y) * (TH/ 2);

  return [iso_x, iso_y]; 
}