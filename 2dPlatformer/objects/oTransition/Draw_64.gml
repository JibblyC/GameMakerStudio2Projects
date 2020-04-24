/// @description Draw black bars

//Draw gui does not care about the camera / room
// x / y refer to the screen itself
if(mode != TRANS_MODE.OFF){
	draw_set_color(c_black);
	//drawing two rectangles, one moving from bottom / one moving from top
	draw_rectangle(0,0,w,percent*h_half,false);
	draw_rectangle(0,h,w,h - (percent*h_half),false);
}