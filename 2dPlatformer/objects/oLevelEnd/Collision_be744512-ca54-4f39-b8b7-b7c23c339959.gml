/// @description Move to next room

with(oPlayer){
	if(hasControl){
		hasControl = false;
		slideTransition(TRANS_MODE.GOTO,other.target);
	}
}
