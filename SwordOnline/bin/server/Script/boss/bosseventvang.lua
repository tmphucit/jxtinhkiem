function OnDeath()
end

function OnDrop(NpcIdx)
ngay = tonumber(date("%d"))
SetGlbMissionV(42, GetGlbMissionV(42) - 1)
Msg2World("<color=green>[S� Ki�n] <color=yellow>S� l��ng Boss K� L�n V�ng hi�n t�i c�n l�i: "..GetGlbMissionV(42).." con")


team = GetTeam()
w,x,y = GetWorldPos()
map = w
if GetTeam() ~= nill then
if GetTeamSize() >= 0 then
DropEvent(NpcIdx)
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	if GetTeam() == team then
			if (floor(GetTask(455)/1000) ~= ngay) then
				SetTask(455, ngay*1000)
				Msg2Player("Reset Boss K� L�n ng�y m�i !")
			end
			if mod(GetTask(455),1000) < 5 then
				SetTask(455, GetTask(455) + 1)
				AddOwnExp(2000000)
				Msg2Player("B�n nh�n ���c 2.000.000 kinh nghi�m")
				Msg2Player("Gi�i h�n Boss K� L�n V�ng: <color=green>"..mod(GetTask(455),1000).." / 5 con")
				
				sx = random(1,100)
				if sx < 30 then
					idxitem = AddEventItem(random(173,175))
					Msg2World(""..GetName().." s�n Boss K� L�n V�ng nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
				elseif sx >= 30 and sx < 33 then
					idxitem = AddEventItem(653)
					Msg2World(""..GetName().." s�n Boss K� L�n V�ng nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
				end
			else
				Msg2Player("Ng��i �� ��t �� s� l��ng 5 Boss K� L�n V�ng ng�y h�m nay, kh�ng th� nh�n th�m")
			end
	end
	end

else
Talk(1,"","<color=red>H� Th�ng<color> T� ��i c�n c� <color=yellow>3<color> ng��i tr� l�n")
end
else
Talk(1,"","<color=red>H� Th�ng<color>: B�n ch�a l�p t� ��i ")
end
end

