direction = 270;
image_blend = c_green;
vspeed = obj_game.global_speed;

if (x > room_width/2){
	image_xscale = -1;
	hspeed = -vspeed*0.7;
} else {
	hspeed = vspeed*0.7;
}

sick = false;