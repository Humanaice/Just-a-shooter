/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 208521AC
/// @DnDArgument : "code" "angle += add_angle_rotation;$(13_10)star_distance += add_star_distance;$(13_10)$(13_10)if (star_distance >= 90) or (star_distance <= 70)$(13_10){$(13_10)	add_star_distance *= -1;$(13_10)}$(13_10)$(13_10)if (!instance_exists(_id))$(13_10){$(13_10)	instance_destroy()$(13_10)} else$(13_10){$(13_10)	x = _id.x + lengthdir_x(star_distance,angle);$(13_10)	y = _id.y + lengthdir_y(star_distance,angle);$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)"
angle += add_angle_rotation;
star_distance += add_star_distance;

if (star_distance >= 90) or (star_distance <= 70)
{
	add_star_distance *= -1;
}

if (!instance_exists(_id))
{
	instance_destroy()
} else
{
	x = _id.x + lengthdir_x(star_distance,angle);
	y = _id.y + lengthdir_y(star_distance,angle);
}