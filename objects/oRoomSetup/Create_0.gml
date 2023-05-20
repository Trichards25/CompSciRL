global.RoomCleared = false;
var spawnsNum = instance_number(oSpawn);
spawns = array_create(0);
for (int i = 0; i <= spawnsNum; i++){
 array_push(spawns,instance_id_get());
}
instance_create_layer(spawns[0].x, spawns[0].y,"Player",oSlime);