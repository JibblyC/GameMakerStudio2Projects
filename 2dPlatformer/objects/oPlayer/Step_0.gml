if(hasControl){
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_space);

	var move = key_right - key_left;

	hsp = move * walksp;

	vsp = vsp + grv;


	//Jump
	if (place_meeting(x,y+1,oWall)) && (key_jump) {
		vsp = - 7;
	}

	//Collision detection with walls
	if (place_meeting (x + hsp,y, oWall)){
		while (!place_meeting (x + sign(hsp),y, oWall)){	
			x = x + sign(hsp);
		}
		hsp = 0;
	}

	x = x + hsp;

	if (place_meeting (x,y + vsp, oWall)){	
		while (!place_meeting (x,y + sign(vsp), oWall)){	
			y = y + sign(vsp);
		}
		vsp = 0;
	}

	y = y + vsp;

}else{
	key_left = 0;
	key_right = 0;
	key_jump = 0;
}

//----- Animation NOT OPTIMAL AS THERE IS TWO CHECKS FOR COLLISION -----

if (!place_meeting(x,y+1,oWall)){
	sprite_index = sPlayerA;
	image_speed = 0;
	if(sign(vsp) > 0) image_index = 1; else image_index = 0;
}else{
	image_speed = 1;
	if(hsp == 0){
		sprite_index = sPlayer;
	}else{
		sprite_index = sPlayerR;
		
		//Change direction the sprite faces -1 = left / 1 = right
		image_xscale = sign(hsp);
	}
}


