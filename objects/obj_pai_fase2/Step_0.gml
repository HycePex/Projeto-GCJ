//#region CONTROLES
//key_left = keyboard_check(ord("A"));
//key_right = keyboard_check(ord("D"));
//key_up = keyboard_check(ord("W"))
//key_down = keyboard_check(ord("S"));

if(keyboard_check_pressed(vk_control)) room_restart()
if(keyboard_check_pressed(vk_tab)) room_goto(r_fase1)
//#endregion


//#region MOVIMENTAÇÃO
//var move = key_right - key_left;
//var vmove = key_down - key_up;
//hspd = move * spd;

//vspd += grv; // ou spd;

//x += hspd
//y += vspd
//if (hspeed != 0) image_xscale = sign(hspeed); 

//x += hspd
//y += hspd
//#endregion


//#region COLISAO 

if (place_free(x, y+1)) gravity = 1;
else gravity = 0;

if(keyboard_check(vk_right)) hspeed = 5; 
if(keyboard_check(vk_left)) hspeed = -5; 

if(!keyboard_check(vk_right) and !keyboard_check(vk_left)) hspeed = 0

if(keyboard_check_pressed(vk_space) and !place_free(x, y+1)) vspeed = -20











//COLISAO HORIZONTAL

//if place_meeting(x + hspd, y, obj_chao2) 
//{
//	while(!place_meeting(x + sign(hspd), y, obj_chao2))
//	{
//		x += sign(hspd);	
//	}
//	hspd = 0;
//}
//x += hspd

//COLISAO VERTICAL

//if place_meeting(x, y + vspd, obj_chao2)
//{
//	while(!place_meeting(x, y + 2*sign(vspd), obj_chao2))
//	{
//		y += sign(vspd);	
//	}
//	vspd = 0;
//}
//y += vspd

//JUMP

//if place_meeting(x, y+1, obj_chao2) and key_up{
	//vspd -= 10	
//}

//#endregion

//CHECKING HOOK
if(mouse_check_button_pressed(mb_left))
{

	mx = mouse_x;
	my = mouse_y;
	if(place_meeting(mx,my,oBlockG)){
		active = true;
		
	}
}

if(active) {
	gravity = 0.1;
	x += (mx - x) * 0.1;
	y += (my - y) * 0.1;
}

	


if(mouse_check_button_released(mb_left)){
	active = false;
}
