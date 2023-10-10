/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2C94EE7E
/// @DnDArgument : "code" "//Variables = VARI$(13_10)//State$(13_10)$(13_10)state=playerstate.IDLE$(13_10)$(13_10)//Movement VARI$(13_10)$(13_10)spd = 10; // base dos spd$(13_10)walkspd = spd; //spd nas 4 direções$(13_10)//dhspeed = 0; //direção na horizontal (-1 esq,1 dir)$(13_10)//dvspeed = 0; //direção na vertical (-1 cima,1 baixo)$(13_10)hspd = 0; //spd do player hz$(13_10)vspd = 0; //spd do player vt$(13_10)dagspd = round(spd * ((sqrt(2)) / 2)); //spd so que nas diagonais$(13_10)direction = 90;$(13_10)player_direction = direction;$(13_10)$(13_10)$(13_10)//Dash VARI$(13_10)$(13_10)dash = false$(13_10)dashspd = spd * 2.5; //dash speed$(13_10)dash_cool = 0; //cooldown do dash$(13_10)can_dash  = true; $(13_10)dashing = false;$(13_10)dashingSteps = 0; // A state variable to keep track of how many steps remain for a given dash$(13_10)dashMaxDuration = 5; // Any dash will last for this many steps$(13_10)$(13_10)//Gamepad inputs$(13_10)$(13_10)gphmove = 0;$(13_10)gpvmove = 0;$(13_10)$(13_10)//Shoting$(13_10)$(13_10)playerfire = false;$(13_10)player_fire_cool = 0;$(13_10)player_fire_short_cool=10;$(13_10)player_fire_medium_cool = 25;$(13_10)player_fire_long_cool=50;$(13_10)player_fire_very_long_cool=100;$(13_10)player_default_bullet_type = firetype.STRAIGHT;$(13_10)current_player_bullet_type = player_default_bullet_type;$(13_10)upgrade_bullet=0;$(13_10)current_upgrade_bullet=upgrade_bullet;$(13_10)bullet_amont = 3;$(13_10)player_bullet_damage = 2$(13_10)player_bullet_damage_mult = [1,1,1]$(13_10)player_bullet_cooldown = [0,0,0]$(13_10)player_bullet_add_cooldown = [5,10,10]$(13_10)$(13_10)//ds_fire_type_list  = ds_list_create();$(13_10)ds_fire_type_list = [o_fire_straight,o_nothing,o_nothing]$(13_10)$(13_10)incremento_angulo = 2;$(13_10)angulo_tiro_atual=30;$(13_10)$(13_10)//HP$(13_10)hpmax = 15$(13_10)hpcurrent = hpmax$(13_10)//hp_now = hpmax$(13_10)hpcooldown = 0;$(13_10)player_damaged = false$(13_10)can_damage_player = true;$(13_10)$(13_10)//Shield$(13_10)shield_amount = 0;$(13_10)shield_dir = 0;$(13_10)add_dir = 0;$(13_10)shield_list=ds_list_create()$(13_10)once = false;$(13_10)$(13_10)function create_shield()$(13_10){$(13_10)	shield_dir = 0$(13_10)	if (shield_amount >= 5)$(13_10)		{$(13_10)			return$(13_10)		} else$(13_10)		{$(13_10)			shield_amount += 1;$(13_10)		}$(13_10)	add_dir = (360/shield_amount);$(13_10)	destroy_shield()$(13_10)	for (var i = 0;i < shield_amount;i++)$(13_10)	{$(13_10)		var _shield = instance_create_layer(x,y,"Layer_upgrade",o_shield);$(13_10)		shield_dir += add_dir;$(13_10)		with (_shield)$(13_10)		{$(13_10)			angle = o_Player.shield_dir;$(13_10)		}$(13_10)		ds_list_add(shield_list,_shield);$(13_10)		$(13_10)	}$(13_10)}$(13_10)function destroy_shield()$(13_10){$(13_10)	if (ds_list_empty(shield_list))$(13_10)	{$(13_10)		return$(13_10)	}$(13_10)	$(13_10)	ds_list_clear(shield_list)$(13_10)	var _size = ds_list_size(shield_list);$(13_10)	for (var o = 0;o <= _size;o++)$(13_10)	{$(13_10)		with (o_shield)$(13_10)		{$(13_10)			self.die_shield();$(13_10)		}$(13_10)		ds_list_clear(shield_list)$(13_10)		$(13_10)	}$(13_10)}$(13_10)$(13_10)//Animation$(13_10)image_speed = 0;$(13_10)scale = 1.5$(13_10)image_xscale = scale;$(13_10)image_yscale = scale;$(13_10)can_move = true;$(13_10)flash = 0;$(13_10)"
//Variables = VARI
//State

state=playerstate.IDLE

//Movement VARI

spd = 10; // base dos spd
walkspd = spd; //spd nas 4 direções
//dhspeed = 0; //direção na horizontal (-1 esq,1 dir)
//dvspeed = 0; //direção na vertical (-1 cima,1 baixo)
hspd = 0; //spd do player hz
vspd = 0; //spd do player vt
dagspd = round(spd * ((sqrt(2)) / 2)); //spd so que nas diagonais
direction = 90;
player_direction = direction;


//Dash VARI

dash = false
dashspd = spd * 2.5; //dash speed
dash_cool = 0; //cooldown do dash
can_dash  = true; 
dashing = false;
dashingSteps = 0; // A state variable to keep track of how many steps remain for a given dash
dashMaxDuration = 5; // Any dash will last for this many steps

//Gamepad inputs

gphmove = 0;
gpvmove = 0;

//Shoting

playerfire = false;
player_fire_cool = 0;
player_fire_short_cool=10;
player_fire_medium_cool = 25;
player_fire_long_cool=50;
player_fire_very_long_cool=100;
player_default_bullet_type = firetype.STRAIGHT;
current_player_bullet_type = player_default_bullet_type;
upgrade_bullet=0;
current_upgrade_bullet=upgrade_bullet;
bullet_amont = 3;
player_bullet_damage = 2
player_bullet_damage_mult = [1,1,1]
player_bullet_cooldown = [0,0,0]
player_bullet_add_cooldown = [5,10,10]

//ds_fire_type_list  = ds_list_create();
ds_fire_type_list = [o_fire_straight,o_nothing,o_nothing]

incremento_angulo = 2;
angulo_tiro_atual=30;

//HP
hpmax = 15
hpcurrent = hpmax
//hp_now = hpmax
hpcooldown = 0;
player_damaged = false
can_damage_player = true;

//Shield
shield_amount = 0;
shield_dir = 0;
add_dir = 0;
shield_list=ds_list_create()
once = false;

function create_shield()
{
	shield_dir = 0
	if (shield_amount >= 5)
		{
			return
		} else
		{
			shield_amount += 1;
		}
	add_dir = (360/shield_amount);
	destroy_shield()
	for (var i = 0;i < shield_amount;i++)
	{
		var _shield = instance_create_layer(x,y,"Layer_upgrade",o_shield);
		shield_dir += add_dir;
		with (_shield)
		{
			angle = o_Player.shield_dir;
		}
		ds_list_add(shield_list,_shield);
		
	}
}
function destroy_shield()
{
	if (ds_list_empty(shield_list))
	{
		return
	}
	
	ds_list_clear(shield_list)
	var _size = ds_list_size(shield_list);
	for (var o = 0;o <= _size;o++)
	{
		with (o_shield)
		{
			self.die_shield();
		}
		ds_list_clear(shield_list)
		
	}
}

//Animation
image_speed = 0;
scale = 1.5
image_xscale = scale;
image_yscale = scale;
can_move = true;
flash = 0;