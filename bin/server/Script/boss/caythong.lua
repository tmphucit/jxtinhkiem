function OnDeath()
ngay = tonumber(date("%d"))
if GetTask(135) ~= ngay then
SetTask(135,ngay)
SetTask(102,0)
end

if GetTask(102) < 50 then
	SetTask(102,GetTask(102)+1)
	Msg2Player("S� l��ng c�y th�ng t�m ���c ���c: "..GetTask(102).." / 50 ")		
	AddOwnExp(400000)
	Msg2Player("B�n nh�n ���c 400.000 kinh nghi�m ")
	if GetItemCount(201) > 0 then
	DelItem(201)
	AddOwnExp(400000)
	Msg2Player("B�n nh�n ���c th�m 400.000 kinh nghi�m t� c�y th�ng ")
	end
	

else
Talk(1,"","S� l��ng c�y th�ng trong ng�y �� ��t gi�i h�n ")
end

end

function OnDrop()
end