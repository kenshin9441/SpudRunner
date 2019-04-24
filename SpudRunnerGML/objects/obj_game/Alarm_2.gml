if (room != rm_game){
	exit;
}

instance_create_layer(irandom_range(room_width*0.2, room_width*0.8), -sprite_height, "LayerPotato", obj_aid);

alarm[2] = max(rate,1.2)*room_speed*10;