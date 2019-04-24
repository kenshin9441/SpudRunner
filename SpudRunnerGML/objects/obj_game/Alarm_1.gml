if (room != rm_game){
	exit;
}

instance_create_layer(choose(room_width*0.2, room_width*0.8), -sprite_height, "LayerSick", obj_sick);

alarm[1] = rate*room_speed*4;