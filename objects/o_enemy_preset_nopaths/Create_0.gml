/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 15A72CAD
event_inherited();

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 56AEAAFC
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)enemy_id = id$(13_10)enemy_entering_state = enemyenteringstate.LIGHTSPEED$(13_10)enemy_state = enemystate.ENTERING$(13_10)$(13_10)$(13_10)enemy_direction = -90$(13_10)direction = enemy_direction$(13_10)enemy_vspd = 5$(13_10)enemy_hspd = 1$(13_10)infy_path = false$(13_10)infy_path_choose = pth_enemy_diamond$(13_10)can_start_path = false$(13_10)$(13_10)//pth_speed = path_speed$(13_10)//path_speed = pth_speed$(13_10)$(13_10)fire_type = 0$(13_10)//enemy_fire_type = firetype.DNA$(13_10)enemy_fire_type = irandom(firetype.TOTAL -1)$(13_10)script_execute(scr_enemy_type)$(13_10)$(13_10)//fire_type = o_fire_dna_creator$(13_10)shoot_once = false$(13_10)can_shoot = true$(13_10)_inst = 0$(13_10)cool_fire = 60$(13_10)cooldown = 240$(13_10)$(13_10)//Free flow = true + two_paths = true --> enter with path and continuos on - Light speed$(13_10)//Free flow = false + two_paths = true --> enter with path leaves with path - Come and go$(13_10)//Free flow = true + two_paths = false --> enter with free flow and continuos on - Tresspassing$(13_10)//Free flow = false + two_paths = false --> enter with preformed path and never stops - Planed$(13_10)$(13_10)two_paths = true$(13_10)free_flow = true   $(13_10)//start in path = false,if true free flows$(13_10)_startpath = pth_enemy_go_down_small$(13_10)shooting_path = pth_enemy_diamond$(13_10)can_shooting_path = true$(13_10)_outpath = choose(pth_enemy_GoDown,pth_enemy_GoToLeft,pth_enemy_GoToRight)$(13_10)$(13_10)$(13_10)go_at_once = false$(13_10)time_to_move = 60$(13_10)$(13_10)//image_index = 2$(13_10)image_speed = 0$(13_10)image_angle = direction + 90$(13_10)$(13_10)pth_speed_slow = 5$(13_10)pth_speed_fast = 10$(13_10)$(13_10)function play_shooting_path()$(13_10){$(13_10)	path_start(shooting_path,pth_speed_fast,path_action_restart,false)$(13_10)}$(13_10)$(13_10)$(13_10)facing_horizontal = 1$(13_10)mov_function =scr_enemy_dna_down$(13_10)$(13_10)move_cool = 0$(13_10)$(13_10)enemy_hpmax = 10$(13_10)enemy_hpnow = enemy_hpmax"
/// @description Execute Code

enemy_id = id
enemy_entering_state = enemyenteringstate.LIGHTSPEED
enemy_state = enemystate.ENTERING


enemy_direction = -90
direction = enemy_direction
enemy_vspd = 5
enemy_hspd = 1
infy_path = false
infy_path_choose = pth_enemy_diamond
can_start_path = false

//pth_speed = path_speed
//path_speed = pth_speed

fire_type = 0
//enemy_fire_type = firetype.DNA
enemy_fire_type = irandom(firetype.TOTAL -1)
script_execute(scr_enemy_type)

//fire_type = o_fire_dna_creator
shoot_once = false
can_shoot = true
_inst = 0
cool_fire = 60
cooldown = 240

//Free flow = true + two_paths = true --> enter with path and continuos on - Light speed
//Free flow = false + two_paths = true --> enter with path leaves with path - Come and go
//Free flow = true + two_paths = false --> enter with free flow and continuos on - Tresspassing
//Free flow = false + two_paths = false --> enter with preformed path and never stops - Planed

two_paths = true
free_flow = true   
//start in path = false,if true free flows
_startpath = pth_enemy_go_down_small
shooting_path = pth_enemy_diamond
can_shooting_path = true
_outpath = choose(pth_enemy_GoDown,pth_enemy_GoToLeft,pth_enemy_GoToRight)


go_at_once = false
time_to_move = 60

//image_index = 2
image_speed = 0
image_angle = direction + 90

pth_speed_slow = 5
pth_speed_fast = 10

function play_shooting_path()
{
	path_start(shooting_path,pth_speed_fast,path_action_restart,false)
}


facing_horizontal = 1
mov_function =scr_enemy_dna_down

move_cool = 0

enemy_hpmax = 10
enemy_hpnow = enemy_hpmax