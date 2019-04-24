if (room != rm_game){
	exit;
}

repeat(choose(1,2)) instance_create_layer(irandom_range(room_width*0.2, room_width*0.8), -sprite_height, "LayerPotato", obj_potato);

alarm[0] = rate*room_speed;