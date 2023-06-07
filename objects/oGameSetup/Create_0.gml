window_set_fullscreen(true);
global.BorderWidth = 570;
global.BorderHeight = 120;
global.SpiritSpd = 1;
global.InvFrames = 0;
global.roomsCleared = 0;
global.killedSinceLastItem = 0;

global.items = array_create();
array_push(global.items,oHeart);
array_push(global.items,oWandPickup);
array_push(global.items,oWeaponPickup);
array_push(global.items,oMachineGunPickup);
array_push(global.items,oPistolPickup);
array_push(global.items,oSniperPickup);
global.usedItems = array_create(array_length(global.items));

global.rooms = ds_grid_create(10,10);
for (var i = 0; i < 10; i++)
{
    for (var j = 0; j < 10; j++)
    {
        global.rooms[# i, j] = false; // Set the initial value of each element
    }
}