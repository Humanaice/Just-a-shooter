/// @desc Approach a given number using additions or subtractions of another given number.
/// @arg Variable the variable to be changed
/// @arg Target The number to be reached
/// @arg number the number to be added or subtracted from the variable to reach the target
function approach() {

	/*
		Eg.
		Given that speed = 10,
	
		IN SPACE DOWN EVENT
	
		speed = approach(speed, 0, 2);
	
		This will subtract 2 from speed every frame the spacebar is held until speed = 0(target)
	*/
	var val = argument[0];//The current value
	var fval = argument[1];//The final value
	var fact = argument[2];//The Factor of addition or subtraction


	//WARNING: INEFFICIENT CODE AHEAD


	if(val == fval)exit; //If target value is equal to current value, exit out of the script
	if(val < fval) 
	{
	    if(val != fval)
	    {
	        val += fact
	        if(val > fval) val = fval;
	    }
	}else{
	    if(val != fval)
	    {
	        val -= fact
	        if(val < fval) val = fval;
	    }
	}
	return val;


}
