function main(idx)
w,x,y = GetWorldPos()
w1,x1,y1 = GetWorldPosIdx(idx)
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
nam = tonumber(date("%y"))
gio = tonumber(date("%H"))

if CheckFreeBoxItem(4,22,1,1) == 0 then
Talk(1,"","H�nh trang kh�ng �� ch� tr�ng, vui l�ng ki�m tra l�i !")
return
end
if GetFightState() == 0 then
return
end
if GetPKState() == 0 then
return
end
if GetCurCamp() == 0 or GetCamp() == 0 then
Talk(1,"","Ch� tr�ng kh�ng ���c nh�t nh� b�n")
return
end

if GetLevel() < 90 then
Talk(1,"","��ng c�p d��i 90 kh�ng th� tham gia s� ki�n !")
return
end

if GetTaskTemp(2) ~= idx then
	SetTask(479, 60*18)
	SetTaskTemp(2,idx)
	Msg2Player("Th�i gian thu ho�ch c�y c�n l�i: <color=yellow>"..floor(GetTask(479) / 18).." gi�y !")
	return
end
if w ~= 226 then
Talk(1,"","L�i kh�c b�n �� ")
return
end

if GetLife(0) <= 0 then


thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/HackQuaHoangKim.txt", "a");
if LoginLog then
write(LoginLog,"["..GetAccount().."] ["..GetName().."] ["..GetLevel().."] - IP: "..GetIP().." -  Time: "..thoigian.."\n");
end
closefile(LoginLog)

return
end

if (x > x1 - 8 and x < x1 + 8) and (y > y1 - 16 and y < y1 + 16) then
	if GetTaskTemp(2) == idx and GetTask(479) == 0 then
			ngay = ngay + 7
			if ngay > mangthang[thang] then
				ngay = ngay - mangthang[thang]
				thang = thang + 1
			end

		if w == 226 then
			idxitem = -1;
			sx = RandomNew(1,100)
			if sx < 50 then
				idxitem = AddEventItem(721)
				SetHSD(idxitem, 2000+nam , thang, ngay, gio )
			elseif sx < 80 then
				idxitem = AddEventItem(724)
				SetHSD(idxitem, 2000+nam , thang, ngay, gio )
			else
				idxitem = AddEventItem(722)
				SetHSD(idxitem, 2000+nam , thang, ngay, gio )	
			end
			if (idxitem == -1) then
				return
			end
			Msg2Player("B�n �� thu ho�ch th�nh c�ng 1 "..GetNameItemBox(idxitem).."")
				
			if GetTongName() ~= "" then
				Msg2SubWorld("Ch�c m�ng <color=green>"..GetName().." - Bang "..GetTongName().."<color=red> thu th�p ���c <color=yellow>1 "..GetNameItemBox(idxitem).." ")
			else
				Msg2SubWorld("Ch�c m�ng <color=green>"..GetName().."<color=red> thu th�p ���c <color=yellow>1 "..GetNameItemBox(idxitem).." ")
			end
		else
			Talk(1,"","L�i map, li�n h� admin fix g�p")
		end
		DelNpc(idx)
	else
		Msg2Player("Th�i gian thu ho�ch c�y c�n l�i: <color=yellow>"..floor(GetTask(479) / 18).." gi�y !")
	end
end
end

mangthang = {31,28,31,30,31,30,31,31,30,31,30,31}



