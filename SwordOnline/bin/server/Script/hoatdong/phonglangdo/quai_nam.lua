function OnDeath()
end

function OnDrop()

ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
sx = random(1,2000)
if sx == 1000 then
	AddEventItem(135)
	Msg2Player("B�n nh�n ���c 1 L�nh B�i Phong L�ng �� !")
end

end