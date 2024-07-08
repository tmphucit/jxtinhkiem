function main(idx)
w,x,y = GetWorldPos()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
nam = tonumber(date("%y"))

if CheckFreeBoxItem(4,22,1,1) == 0 then
Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng, vui lßng kiÓm tra l¹i !")
return
end

if GetCurCamp() == 0 or GetCamp() == 0 then
Talk(1,"","Ch÷ tr¾ng kh«ng ®­îc nhÆt nhĞ b¹n")
return
end

if GetLevel() < 80 then
Talk(1,"","§¼ng cÊp d­íi 80 kh«ng thÓ tham gia sù kiÖn !")
return
end

if GetTaskTemp(2) ~= idx then
	SetTask(479, 15*18)
	SetTaskTemp(2,idx)
	Msg2Player("Thêi gian thu ho¹ch c©y cßn l¹i: <color=yellow>"..floor(GetTask(479) / 18).." gi©y !")
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
			Msg2Player("B¹n ®· thu ho¹ch thµnh c«ng 1 Qu¶ Huy Hoµng (TiÓu)")
		elseif sx < 80 then
			idxitem = AddEventItem(719)
			SetHSD(idxitem, 2000+nam , thang, ngay, gio )
			Msg2Player("B¹n ®· thu ho¹ch thµnh c«ng 1 Qu¶ Huy Hoµng (Trung)")
		else
			idxitem = AddEventItem(720)
			SetHSD(idxitem, 2000+nam , thang, ngay, gio )
			Msg2Player("B¹n ®· thu ho¹ch thµnh c«ng 1 Qu¶ Huy Hoµng (§¹i)")
		end
		
		if GetTongName() ~= "" then
			Msg2Tong("<color=green>"..GetName().." <color=yellow>nhÆt ®­îc 1 Qu¶ Huy Hoµng")
		end
	else
		Talk(1,"","Lçi map, liªn hÖ admin fix gÊp")
	end
	DelNpc(idx)
else
	Msg2Player("Thêi gian thu ho¹ch c©y cßn l¹i: <color=yellow>"..floor(GetTask(479) / 18).." gi©y !")
end
end

mangthang = {31,28,31,30,31,30,31,31,30,31,30,31}