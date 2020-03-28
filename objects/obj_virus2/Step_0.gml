//y = anchorY + sin(timer*frequency)*amplitude;
image_angle = point_direction(x,y,obj_pai_fase2.x,obj_pai_fase2.y)//o angulo desse sprite será voltado a direção do mouse
direction = point_direction(x,y,obj_pai_fase2.x,obj_pai_fase2.y)//a direção desse objeto será voltado a direção do mouse
speed = 10//sua speed(quantidade de pixels andada por step) vai ser 10
//y += -10
timer++;



//if (timer > 50) and (timer % 100 == 0)

//instance_create_layer(x,y, "Instances" , obj_virus_municao2)//vai criar a instancia obj_bala em seu propio x e y

if(y < 0) instance_destroy()


if (vida <= 0)
{
instance_destroy()
}





