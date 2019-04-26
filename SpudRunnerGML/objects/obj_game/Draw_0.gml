switch(room){
	case rm_game:
		draw_text_transformed(20, 20, "Score: " + string(score), 0.75, 0.75, 0);
		draw_text_transformed(20, 50, "Lives: " + string(lives), 0.75, 0.75, 0);
		break;
	case rm_start:
		draw_set_halign(fa_center);		
		var c = c_yellow;
		draw_text_transformed_color(room_width/2, 200, "SPUDRUNNER", 2.5, 2.5, 0, c, c, c, c, 1);
		draw_text(room_width/2, 400, "Press LEFT/RIGHT/UP/DOWN keys to move");
		draw_text(room_width/2, 450, ">> PRESS ENTER TO START <<");
		draw_set_halign(fa_left);
		break;
	case rm_end:
		draw_set_halign(fa_center);
		if (lives <= 0){
			var c = c_red;
			draw_text_transformed_color(room_width/2, 200, "YOU LOSE", 2.5, 2.5, 0, c, c, c, c, 1);
		}
		draw_text(room_width/2, 400, "YOUR SCORE: " + string(score));
		draw_text(room_width/2, 450, ">> PRESS ENTER TO RESTART <<");
		draw_set_halign(fa_left);
		break;
}