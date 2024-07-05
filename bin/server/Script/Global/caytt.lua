
function OnDeath(idx)
team = GetTeam()
name = GetName()
checknhom = 0
pidx = PlayerIndex
if GetName() ~= GetNpcName(idx) then
	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		if GetNpcName(idx) == GetName() and team == GetTeam() then
			checknhom = 1
			break
		end
	end
else
	checknhom = 1
end

PlayerIndex = pidx
if checknhom == 0 then
if GetTeam() == nil or GetTeamSize() == 1 then
AddEventItem(237)
AddEventItem(237)
AddEventItem(237)
Msg2Player("Bπn Æ∑ ®n trÈm C©y Hoµng Kim cÒa "..GetNpcName(idx).." nhÀn Æ≠Óc 3 Qu∂ Hoµng Kim !")
else
Msg2Player("Bπn kh´ng nhÀn Æ≠Óc ph«n th≠Îng v◊ Æang trong trπng th∏i nh„m  !")
end
return
end

if GetTeam() == nil then
Talk(1,"","TÊ ÆÈi Æ∑ tan r∑ kh´ng nhÀn Æ≠Óc ph«n th≠Îng tı c©y !")
return
end

w,x,y = GetWorldPos()
if w ~= 3 and w ~= 15 and w ~= 17 and w ~= 18 and w ~= 53 and w ~= 9 then
Talk(1,"","LÁi hack t‰a Æ´ c©y ! !")
return
end

if GetFightState() == 0 then
Talk(1,"","LÁi hack trπng th∏i chi’n Æ u !")
return
end

			
for i=1,GetCountPlayerMax() do
PlayerIndex = i
	if GetTeam() == team then
		if GetLevel() >= 80 then
			if IsCaptain() == 1 then
			for i=1,5 do
			AddEventItem(237)
			end
			Msg2Player("Bπn nhÀn Æ≠Óc 5 Qu∂ Hoµng Kim ")
			else
			for i=1,3 do
			AddEventItem(237)
			end
			Msg2Player("Bπn nhÀn Æ≠Óc 3 Qu∂ Hoµng Kim ")
			end
		else
			Msg2Player("ßºng c p d≠Ìi 80 kh´ng th” nhÀn Æ≠Óc ph«n th≠Îng tı C©y Hoµng Kim !")
		end	
	end
end


end


function OnDrop()
end