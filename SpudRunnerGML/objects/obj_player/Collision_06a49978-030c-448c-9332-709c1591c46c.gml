with(other){
	if (image_blend == c_gray){
		audio_play_sound(snd_hurt, 1, false);
		lives -=1;
		with(obj_player){
			alarm[0] = 60;
			image_blend = c_red;
		}
	} else {
		score += 5;
		audio_play_sound(snd_zap, 1, false);
	}
	instance_destroy();
}