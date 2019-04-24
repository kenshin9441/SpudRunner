with(other){
	lives +=1;
	audio_play_sound(snd_zap, 1, false);
	instance_destroy();
}