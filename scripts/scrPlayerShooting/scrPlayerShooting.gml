/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 13AC3AD5
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scrPlayerShooting"
function scrPlayerShooting() 
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 6353CFA5
	/// @DnDParent : 13AC3AD5
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if (firekey)$(13_10){$(13_10)	for(var i = 0; i<= 2; i++)$(13_10)	{$(13_10)		if (listFireType[i][1] <= 0)$(13_10)		{$(13_10)			scrShooting(oBullet,self,fireTeam.ALLY,x,bbox_top,listFireType[i][0] * 15,20,1,listFireType[i][0],1);$(13_10)			listFireType[i][1] = listFireType[i][2];$(13_10)		} else$(13_10)		{$(13_10)			listFireType[i][1] --;$(13_10)		}$(13_10)	}$(13_10)	$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
	/// @description Execute Code
	if (firekey)
	{
		for(var i = 0; i<= 2; i++)
		{
			if (listFireType[i][1] <= 0)
			{
				scrShooting(oBullet,self,fireTeam.ALLY,x,bbox_top,listFireType[i][0] * 15,20,1,listFireType[i][0],1);
				listFireType[i][1] = listFireType[i][2];
			} else
			{
				listFireType[i][1] --;
			}
		}
		
	}
}