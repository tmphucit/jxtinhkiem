function OnDeath()
end

function OnDrop(NpcIdx)
ngay = tonumber(date("%d"))

team = GetTeam()
w,x,y = GetWorldPos()
map = w
if GetTeam() ~= nill then
if GetTeamSize() >= 0 then
DropEvent(NpcIdx)
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	if GetTeam() == team then
				if GetLevel() >= 80 then
					number = random(5,10)
					if GetTask(172) > 18 then
						soluong = number * 2
					else
						soluong = number
					end		
					for k=1,soluong do
						AddEventItem(137)
					end
					Msg2Player("B�n nh�n ���c "..soluong.." M�m V�ng")
				
				else
					Talk(1,"","B�n kh�ng �� ��ng c�p 80. Kh�ng nh�n ���c ph�n th��ng !")
					Msg2Player("B�n kh�ng �� ��ng c�p 80. Kh�ng nh�n ���c ph�n th��ng !")
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

