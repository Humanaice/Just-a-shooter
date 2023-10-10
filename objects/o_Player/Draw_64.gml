/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5DEE1CEE
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)draw_set_font(fnt_title_screan_xsm);$(13_10)draw_set_color(c_green)$(13_10)$(13_10)draw_set_halign(fa_left)$(13_10)draw_text(0, 10, string("HP: ") + string(hpcurrent));$(13_10)draw_text(0, 40, string("can_damage_player: ") + string(can_damage_player));$(13_10)draw_text(0, 70, string("player_damaged: ") + string(player_damaged));$(13_10)draw_text(0, 100, string("State ") + string(state));$(13_10)draw_text(0, 140, string("shield_amount ") + string(shield_amount));$(13_10)draw_text(0, 170, string("stopfirekey ") + string(stopfirekey));$(13_10)draw_text(0, 210, string("firekey ") + string(firekey));$(13_10)draw_text(0, 240, string("hpcooldown ") + string(hpcooldown));$(13_10)draw_text(0, 270, string("Weapon ") + string(hpcooldown));"
/// @description Execute Code
draw_set_font(fnt_title_screan_xsm);
draw_set_color(c_green)

draw_set_halign(fa_left)
draw_text(0, 10, string("HP: ") + string(hpcurrent));
draw_text(0, 40, string("can_damage_player: ") + string(can_damage_player));
draw_text(0, 70, string("player_damaged: ") + string(player_damaged));
draw_text(0, 100, string("State ") + string(state));
draw_text(0, 140, string("shield_amount ") + string(shield_amount));
draw_text(0, 170, string("stopfirekey ") + string(stopfirekey));
draw_text(0, 210, string("firekey ") + string(firekey));
draw_text(0, 240, string("hpcooldown ") + string(hpcooldown));
draw_text(0, 270, string("Weapon ") + string(hpcooldown));