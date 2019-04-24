if (room == rm_game){
	if (audio_is_playing(msc_song)){
		audio_stop_sound(msc_song);
	}
	audio_play_sound(msc_song, 2, true);
	instance_create_layer(irandom_range(room_width*0.2, room_width*0.8), 0, "LayerPotato", obj_potato);
	alarm[0] = rate*room_speed;
	alarm[2] = rate*room_speed*7;
}
