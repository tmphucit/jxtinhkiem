function main(idx)
w,x,y = GetWorldPos()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
nam = tonumber(date("%y"))

if CheckFreeBoxItem(4,22,1,1) == 0 then
Talk(1,"","H�nh trang kh�ng �� ch� tr�ng, vui l�ng ki�m tra l�i !")
return
end

if GetCurCamp() == 0 or GetCamp() == 0 then
Talk(1,"","Ch� tr�ng kh�ng ���c nh�t nh� b�n")
return
end

if GetLevel() < 80 then
Talk(1,"","��ng c�p d��i 80 kh�ng th� tham gia s� ki�n !")
return
end

if GetTaskTemp(2) ~= idx then
	SetTask(479, 15*18)
	SetTaskTemp(2,idx)
	Msg2Player("Th�i gian thu ho�ch c�y c�n l�i: <color=yellow>"..floor(GetTask(479) / 18).." gi�y !")
	return
end

if GetTaskTemp(2) == idx and GetTask(479) == 0 then
		ngay = ngay  + 3
		if ngay > mangthang[thang] then
			ngay = ngay - mangthang[thang]
			thang = thang + 1
		end

	if w == 226 then
	
		sx = RandomNew(1,100)
		if sx < 50 then
			idxitem = AddEventItem(718)
			SetHSD(idxitem, 2000+nam , thang, ngay, gio )
			Msg2Player("B�n �� thu ho�ch th�nh c�ng 1 Qu� Huy Ho�ng (Ti�u)")
		elseif sx < 80 then
			idxitem = AddEventItem(719)
			SetHSD(idxitem, 2000+nam , thang, ngay, gio )
			Msg2Player("B�n �� thu ho�ch th�nh c�ng 1 Qu� Huy Ho�ng (Trung)")
		else
			idxitem = AddEventItem(720)
			SetHSD(idxitem, 2000+nam , thang, ngay, gio )
			Msg2Player("B�n �� thu ho�ch th�nh c�ng 1 Qu� Huy Ho�ng (��i)")
		end
		
		if GetTongName() ~= "" then
			Msg2Tong("<color=green>"..GetName().." <color=yellow>nh�t ���c 1 Qu� Huy Ho�ng")
		end
	else
		Talk(1,"","L�i map, li�n h� admin fix g�p")
	end
	DelNpc(idx)
else
	Msg2Player("Th�i gian thu ho�ch c�y c�n l�i: <color=yellow>"..floor(GetTask(479) / 18).." gi�y !")
end
end

mangthang = {31,28,31,30,31,30,31,31,30,31,30,31}