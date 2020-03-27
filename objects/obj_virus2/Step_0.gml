y = anchorY + sin(timer*frequency)*amplitude;
timer++;



if (timer > 50) and (timer % 40 == 0)

instance_create_layer(x,y, "Instances" , obj_virus_municao2)//vai criar a instancia obj_bala em seu propio x e y
