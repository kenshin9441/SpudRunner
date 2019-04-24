if (room != rm_game){
	exit;
}
repeat (choose(1,2)){
	instance_create_layer(irandom_range(room_width*0.2, room_width*0.8), -sprite_height, "LayerPotato", obj_crime);
}

alarm[3] = max(0.9,rate)*room_speed*4;