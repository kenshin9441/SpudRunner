with(other){
	if (sick == false){
		audio_play_sound(snd_hurt, 1, false);
		lives -=1;
		with(obj_player){
			alarm[0] = 60;
			image_blend = c_green;
		}
		sick = true;
	}
}