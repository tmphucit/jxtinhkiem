function OnDeath()
end

function OnDrop(NpcIdx)
ngay = tonumber(date("%d"))

team = GetTeam()
w,x,y = GetWorldPos()
map = w
if GetTeam() ~= nill then
if GetTeamSize() >= 3 then
DropEvent(NpcIdx)
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	if GetTeam() == team then
		if GetTask(135) ~= ngay then
			SetTask(135,ngay)
			SetTask(102,0)
		end
		if GetTask(102) < gioihan() then
				if GetLevel() < 120 then	
					SetTask(102,GetTask(102)+1)
					Msg2Player("S� l��ng Boss K� S� Khanh ti�u di�t ���c: "..GetTask(102).." / "..gioihan().." ")
					AddOwnExp(3000000)
					Msg2Player("B�n nh�n ���c 3.000.000 kinh nghi�m")
				else
					--Talk(1,"","B�n kh�ng �� ��ng c�p 50. Kh�ng nh�n ���c ph�n th��ng !")
					--Msg2Player("B�n kh�ng �� ��ng c�p 50. Kh�ng nh�n ���c ph�n th��ng !")
					Talk(1,"","��ng c�p c�a b�n tr�n 120 kh�ng th� nh�n ph�n th��ng t� Boss !")
					Msg2Player("��ng c�p c�a b�n tr�n 120 kh�ng th� nh�n ph�n th��ng t� Boss !")
				end
		else
			Talk(1,"","Gi�i h�n Boss ng�y h�m nay �� ��t t�i �a !")
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


function gioihan()
return 20
end