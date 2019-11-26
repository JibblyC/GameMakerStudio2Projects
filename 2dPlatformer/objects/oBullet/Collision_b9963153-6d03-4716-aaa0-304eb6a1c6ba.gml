//first other refers to collision object ie oEnemy
with(other){
	hp--;
	flash = 3;
	//This other refers to the bullet itself essentially other.other
	hitfrom =  other.direction;
}

instance_destroy();