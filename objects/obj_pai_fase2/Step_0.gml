#region CONTROLES
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_up = keyboard_check(ord("W"))
//key_down = keyboard_check(ord("S"));

if(keyboard_check_pressed(vk_control)) room_restart()
if(keyboard_check_pressed(vk_tab)) room_goto(r_fase2)
#endregion


#region MOVIMENTAÇÃO
var move = key_right - key_left;
//var vmove = key_down - key_up;
hspd = move * spd;

vspd += grv; // ou spd;

//x += hspd
//y += vspd
if (hspd != 0) image_xscale = sign(hspd);
#endregion


#region COLISAO 

//COLISAO HORIZONTAL

if place_meeting(x + hspd, y, obj_chao2) 
{
	while(!place_meeting(x + sign(hspd), y, obj_chao2))
	{
		x += sign(hspd);	
	}
	hspd = 0;
}
x += hspd

//COLISAO VERTICAL

if place_meeting(x, y + vspd, obj_chao2)
{
	while(!place_meeting(x, y + 2*sign(vspd), obj_chao2))
	{
		y += sign(vspd);	
	}
	vspd = 0;
}
y += vspd

//JUMP

if place_meeting(x, y+1, obj_chao2) and key_up{
	vspd -= 10	
}

#endregion