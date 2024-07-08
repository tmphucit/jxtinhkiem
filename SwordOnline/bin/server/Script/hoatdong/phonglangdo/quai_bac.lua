function OnDeath()

end

function OnDrop()
if GetPKState() == 0 then
return
end

sx = random(1,100)
if sx == 20 then
	AddEventItem(23)
	--Msg2Player("B¹n nhËn ®­îc 1 LÖnh Bµi Vi S¬n §¶o")
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/ThanBi/SanLenhBaiViSonDao.txt", "a");
	if LoginLog then
	write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetItemCount(23).." - Time: "..thoigian.."\n");
	end
	closefile(LoginLog)
	end

end