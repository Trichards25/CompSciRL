global.RoomCleared = false;
global.waves = 0;
global.justChanged = false;
global.roomsCleared++;
#macro TS 16

var _w = ceil(room_width/TS);
var _h = ceil(room_height/TS);

global.mp_grid = mp_grid_create(0, 0, _w, _h, TS,TS);

//add solids
mp_grid_add_instances(global.mp_grid,oWall,false);
