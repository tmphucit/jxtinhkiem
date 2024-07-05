Include("\\script\\Global\\sourcejx49.lua")
TaskBossKyLan = 191

function OnDeath()

end

function OnDrop()
	updateNgay()
	if GetTask(TaskBossKyLan) < 1 then
		SetTask(TaskBossKyLan,1)		
		X=random(1000000,4000000)
		Earn(X)
		Msg2Player("C¸c h¹ nhËn ®­îc "..X.." v¹ng")
		Y=random(100000,4000000)
		AddOwnExp(Y)
	else
	Talk(1,"","Ng­¬i lµ ai mµ cø chÞch ta hoµi vËy !, <color=yellow> Êu D©m ")
	end
end
