with(other){
	if (rob == false){
		audio_play_sound(snd_hurt, 1, false);
		if (score <= 5){
			score = 0;
		} else {
			score-=5;
		}
		with(obj_player){
			alarm[0] = 60;
			image_blend = c_dkgray;
		}
		rob = true;
	}
}