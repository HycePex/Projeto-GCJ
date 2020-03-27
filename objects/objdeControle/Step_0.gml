contador++

//if
//Contador >= intervalo {
	//instance_create_layer(x, room_height,"Instances",inimigo_obj)
	//alarm[0] = choose(30,60,90)

//Contador = 0
//}

if (contador > 0 ) and (contador % 40 == 0)

instance_create_layer(choose(200,400,600, 800, 1000, 1200, 1400, 1600, 1800), room_height,"Instances",obj_virus2)