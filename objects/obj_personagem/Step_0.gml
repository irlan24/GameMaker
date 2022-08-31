right = keyboard_check(ord("D"))
left = keyboard_check (ord("A"))
cima = keyboard_check_pressed(ord("W"))




// configuracao de movimento e colisão

xvel = (right - left) * vel


if right{
		direc = 0
		sprite_index = Spr_personagem_andando_drt
		
}
else if left{
	direc = 1
	sprite_index = Spr_personagem_andando_esq	

}
else {
	if direc == 0{
	sprite_index = Spr_personagem_parado_drt
	} else if direc == 1{
		sprite_index = Spr_personagem_parado_esq
	}
}





if place_meeting(x + xvel, y, obj_bloco){
	while !place_meeting(x + sign(xvel), y, obj_bloco){
		x += sign(xvel)	
	}		
		xvel = 0	
}

x += xvel

// configuracao do pulo


// gravidade

if !place_meeting (x, y+1, obj_bloco){
	yvel += gravidade	
}else{
	if cima{

	yvel = -4.4
	}
	
}




if place_meeting (x, y + yvel, obj_bloco){
	while !place_meeting(x, y+ sign(yvel), obj_bloco){
		y += sign(yvel)	
	}
	yvel = 0
}
y += yvel
