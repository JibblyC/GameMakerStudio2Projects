if (hp <= 0){
	
	//Can now run operations on object just instantiated
	with (instance_create_layer(x,y,layer,oDead)){
		//This other refers to oEnemy
		direction = other.hitfrom;
		hsp = lengthdir_x(3,direction);
		vsp = lengthdir_y(3,direction);
		if (sign(hsp) != 0) image_xscale = sign(hsp);
	}
	
	instance_destroy();
}