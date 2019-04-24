if (keyboard_check_pressed(vk_enter)){
	switch(room){
		case rm_start:
			room_goto(rm_game);
			break;
		case rm_end:
			game_restart();
			break;
	}
}

if (room == rm_game){
	if (lives <= 0){
		room_goto(rm_end);
		audio_play_sound(snd_lose,1, false);
	}
	if (level < 2 && score >= 25 && score < 50){
		global_speed = 2.5;
		layer_vspeed("LayerGrass", global_speed);
		layer_vspeed("LayerTree", global_speed);
		layer_vspeed("LayerTree2", global_speed);
		rate = 1.5;
		alarm[1] = rate*room_speed*10;
		with(obj_player) {
			spd = 8;
			image_speed = 3.2;
		}
		level++;
	} else if (level < 3 && score >= 50 && score < 100){
		global_speed = 3;
		layer_vspeed("LayerGrass", global_speed);
		layer_vspeed("LayerTree", global_speed);
		layer_vspeed("LayerTree2", global_speed);
		rate = 1.0;
		alarm[1] = rate*room_speed*10;
		with(obj_player) {
			spd = 8;
			image_speed = 3.5;
		}
		level++;
	} else if (level < 4 && score >= 100 && score < 200){
		global_speed = 3.5;
		layer_vspeed("LayerGrass", global_speed);
		layer_vspeed("LayerTree", global_speed);
		layer_vspeed("LayerTree2", global_speed);
		rate = 1.0;
		level++;
	} else if (level < 5 && score >= 200 && score < 300){
		alarm[3] = rate*room_speed*10;
		rate = 1.0;
		level++;
	} else if (level < 6 && score >= 300 && score < 500){
		global_speed = 4.0;
		layer_vspeed("LayerGrass", global_speed);
		layer_vspeed("LayerTree", global_speed);
		layer_vspeed("LayerTree2", global_speed);
		rate = 0.9;
		level++;
	} else if (level < 7 && score >=500 && score < 1000){
		global_speed = 4.5;
		layer_vspeed("LayerGrass", global_speed);
		layer_vspeed("LayerTree", global_speed);
		layer_vspeed("LayerTree2", global_speed);
		rate = 0.8;
	}
}