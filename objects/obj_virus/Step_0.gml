y = anchorY + sin(timer*frequency)*amplitude;
timer++;



if (timer % 40 = 0)
instance_create_layer(x,y, "ins_player" , obj_virus_municao)//vai criar a instancia obj_bala em seu propio x e y