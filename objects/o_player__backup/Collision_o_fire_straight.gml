/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5CFA438F
/// @DnDArgument : "code" "with(other) {$(13_10)	if (bullet_team !=0) {$(13_10)		with(o_Player) {$(13_10)			if (hpcooldown <= 0) {$(13_10)				hpcurrent = hpcurrent -1;$(13_10)				player_damaged = true;$(13_10)				hpcooldown = 120;$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)}"
with(other) {
	if (bullet_team !=0) {
		with(o_Player) {
			if (hpcooldown <= 0) {
				hpcurrent = hpcurrent -1;
				player_damaged = true;
				hpcooldown = 120;
			}
		}
	}
}