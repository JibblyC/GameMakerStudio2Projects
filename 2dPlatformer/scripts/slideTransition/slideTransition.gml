/// @desc SlideTransition(mode,targetRoom)
/// @arg Mode sets transition mode between next / restart and goto
/// @arg Target sets target room when using the GOTO mode

// arg comment above is used for IDE auto complete when calling script

with(oTransition){
	mode = argument[0];
	//returns argument count
	if(argument_count > 1){
		target = argument[1];
	}
}

























