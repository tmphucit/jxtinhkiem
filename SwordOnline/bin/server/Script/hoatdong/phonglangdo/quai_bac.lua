function OnDeath()

end

function OnDrop()
if GetPKState() == 0 then
return
end

sx = random(1,100)
if sx == 20 then
	AddEventItem(23)
	--Msg2Player("B�n nh�n ���c 1 L�nh B�i Vi S�n ��o")
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/ThanBi/SanLenhBaiViSonDao.txt", "a");
	if LoginLog then
	write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetItemCount(23).." - Time: "..thoigian.."\n");
	end
	closefile(LoginLog)
	end

end