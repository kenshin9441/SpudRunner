if (keyboard_check(vk_left)) {
	x -= spd;
}

if (keyboard_check(vk_right)) {
	x += spd;
}

if (keyboard_check(vk_up)) {
	y -= spd;
}

if (keyboard_check(vk_down)) {
	y += spd;
}

x=clamp(x,room_width*0.2,room_width*0.8);
y=clamp(y,sprite_height/2,room_height-sprite_height/2);
