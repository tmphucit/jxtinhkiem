function OnDeath()
end

function OnDrop()

ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
sx = random(1,2000)
if sx == 1000 then
	AddEventItem(135)
	Msg2Player("B¹n nhËn ®­îc 1 LÖnh Bµi Phong L¨ng §é !")
end

end