#region CONTROLES
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));

if(keyboard_check_pressed(vk_control)) room_restart()
if(keyboard_check_pressed(vk_tab)) room_goto(r_fase2)
#endregion
									


#region MOVIMENTAÇÃO
var hmove = key_right - key_left;
var vmove = key_down - key_up;
hspd = hmove * spd;

vspd = vmove * spd; // ou grv;

if (hspd != 0) image_xscale = sign(hspd);

#region COLISÃO COM OS DENTES

//COLISAO HORIZONTAL

if place_meeting(x + hspd, y, obj_dentes) 
{
	while(!place_meeting(x + sign(hspd), y, obj_dentes))
	{
		x += sign(hspd);	
	}
	hspd = 0;
}
x += hspd

//COLISAO VERTICAL

if place_meeting(x, y + vspd, obj_dentes)
{
	while(!place_meeting(x, y + 2*sign(vspd), obj_dentes))
	{
		y += sign(vspd);	
	}
	vspd = 0;
}
y += vspd

#endregion


#endregion


#region TROCA DE SPRITE

if (hspd = 0) and (vspd = 0)
{
	sprite_index = spr_pai_parado;
}
if (hspd != 0)
{
	sprite_index = spr_pai_andando;	
}
if (vspd != 0)
{
	sprite_index = spr_pai_andando_frente;
}






#endregion

if(global.inimigos < 1) room_goto(r_fase2)
