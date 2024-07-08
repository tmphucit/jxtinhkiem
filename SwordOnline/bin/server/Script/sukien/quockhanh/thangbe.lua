Include("\\script\\lib\\thuvien.lua")
Include("\\script\\event\\quockhanh\\dslacovietnam.lua")
task = 932
AutoSave = 0

function main()
SayNew("<color=green>TiÓu §ång Tö: <color> VÞ huynh ®µi gÆp ta cã viÖc g× kh«ng?...",2,
"NhËn phÇn th­ëng TOP Sù KiÖn /pttop",
"Tho¸t./no")
end

function pttop()
Talk(1,"","B¹n vui lßng quay l¹i vµo lóc 19h00 h«m nay ®Ó nhËn phÇn th­ëng")
end

function main_()
SayNew("<color=green>TiÓu §ång Tö: <color> VÞ huynh ®µi gÆp ta cã viÖc g× kh«ng?...",4,
"Nép L¸ Cê ViÖt Nam /noplaco",
"KiÓm tra danh s¸ch Top Sù KiÖn /kiemtratop",
"NhËn phÇn th­ëng Mèc Sù KiÖn /ptmoc",
"Tho¸t./no")
end


function ptmoc()
	if CheckFreeBoxItem(0,10,2,2) == 0 then
		Msg2Player("Hµnh trang kh«ng ®ñ 2 x 3 chç trèng, vui lßng kiÓm tra l¹i")
		return
	end
if GetTask(936) == 0 then
	if GetTask(932) >= 200000 then
		SayNew("Vui lßng chän lo¹i phÇn th­ëng <color=yellow>Mèc 1 - TÝch Lòy 200.000.000<color> kinh nghiÖm",3,
		"Lùa Chän 1 - VËt PhÈm Kh«ng Khãa/ptmoc1",
		"Lùa Chän 2 - VËt PhÈm Khãa /ptmoc1",
		"Tho¸t./no")
	else
		Talk(1,"","Kinh nghiÖm tÝch lòy hiÖn t¹i kh«ng ®ñ: <color=yellow>"..GetTask(task).."000 / 200.000.000 ")
	end
elseif GetTask(936) == 1 then
	if GetTask(932) >= 500000 then
		SayNew("Vui lßng chän lo¹i phÇn th­ëng <color=yellow>Mèc 2 - TÝch Lòy 500.000.000<color> kinh nghiÖm",3,
		"Lùa Chän 1 - VËt PhÈm Kh«ng Khãa/ptmoc2",
		"Lùa Chän 2 - VËt PhÈm Khãa /ptmoc2",
		"Tho¸t./no")
	else
		Talk(1,"","Kinh nghiÖm tÝch lòy hiÖn t¹i kh«ng ®ñ: <color=yellow>"..GetTask(task).."000 / 500.000.000 ")
	end
else
	Talk(1,"","B¹n ®· nhËn ®ñ phÇn th­ëng mèc sù kiÖn Quèc Kh¸nh")
end
end



function ptmoc1(nsel)
i = nsel +1
if GetTask(932) < 200000 then
return
end
SetTask(936, GetTask(936) + 1)
if GetTask(936) == 1 then
if i == 1 then
	AddEventItem(120)
	AddEventItem(120)
	Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." nhËn th­ëng Mèc 1 ®­îc: <color=yellow>2 Tiªn Th¶o Lé 6 Giê ")
	inlog("[Mèc 1 - Kh«ng Khãa] "..GetAccount().." - "..GetName().."")
elseif i == 2 then
	item = random(0,1)
	idx = AddEventItem(item)
	SetBindItem(idx, 1)
	Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." nhËn th­ëng Mèc 1 ®­îc:<color=yellow> "..GetNameItemBox(idx).."")
	inlog("[Mèc 1 - Khãa] "..GetAccount().." - "..GetName().."")
end
end
end

function ptmoc2(nsel)
i = nsel +1
if GetTask(932) < 500000 then
return
end
SetTask(936, GetTask(936) + 1)
if GetTask(936) == 2 then
if i == 1 then
	sx = RandomNew(1,100)
	if sx < 95 then
			idx = AddEventItem(random(0,1))
			Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." nhËn th­ëng Mèc 2 ®­îc: <color=yellow>"..GetNameItemBox(idx).."")
			inlog("[Mèc 2 - Kh«ng Khãa] "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idx).."")
	else
			idx = AddEventItem(random(698,699))
			Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." nhËn th­ëng Mèc 2 ®­îc: <color=yellow>"..GetNameItemBox(idx).."")
			inlog("[Mèc 2 - Kh«ng Khãa] "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idx).."")
	end
elseif i == 2 then
	sx = RandomNew(1,100)
	if sx == 100 then
		idx = AddEventItem(694)
		SetBindItem(idx,1)
		SetHSD(idx,2021,12,30,12)
		Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." nhËn th­ëng Mèc 2 ®­îc: <color=yellow>"..GetNameItemBox(idx).."")
		inlog("[Mèc 2 - Khãa] "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idx).."")
	elseif sx == 99 then
		idx = AddItem(0,10,5,5,0,0,0)
		SetTimeItem(idx,550324);
		Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." nhËn th­ëng Mèc 2 ®­îc: <color=yellow>"..GetNameItemBox(idx).."")
		inlog("[Mèc 2 - Khãa] "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idx).."")
	else
		idx = AddEventItem(random(698,699))
		SetBindItem(idx,1)
		SetHSD(idx,2021,12,30,12)
		Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." nhËn th­ëng Mèc 2 ®­îc: <color=yellow>"..GetNameItemBox(idx).."")
		inlog("[Mèc 2 - Khãa] "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idx).."")	
	end
end
end
end

function noplaco()
ngay = tonumber(date("%d"))
gio = tonumber(date("%H"))

if gio == 17 and ngay == 7 then
Talk(1,"","Sù kiÖn t¹m thêi khãa ®Ó chèt danh s¸ch §ua Top Sù kiÖn Quèc Kh¸nh.\n- 18h00 h«m nay sÏ ®­îc sö dông tiÕp. \n- 17h00 ngµy 8/9 kÕt thóc toµn bé Sù kiÖn Quèc Kh¸nh")
return
end

OpenStringBox(2,"NhËp sè l­îng","noplaco1")
end


function noplaco1(num2)
if num2 == "" then
return
end
num = tonumber(num2)
if num == 0 then
return
end
if num > 100 then
Talk(1,"","Tèi ®a 100 L¸ Cê ViÖt Nam / 1 lÇn nép")
return
end

if GetItemCount(717) < num then
Talk(1,"","Sè l­îng L¸ Cê ViÖt Nam kh«ng ®ñ ®Ó nép")
return
end
gh = gioihan()
ngay = tonumber(date("%d"))
gio = tonumber(date("%H"))
	
soluong = 0
for i=1,num do
	if CheckFreeBoxItem(0,10,2,2) == 0 then
		Msg2Player("Hµnh trang kh«ng ®ñ 2 x 3 chç trèng, ngõng nép")
		break
	end
	if GetTask(933) == 0 and GetTask(task) >= gh then
		Talk(1,"","HiÖn t¹i ®· ®¹t giíi h¹n sö dông Sù KiÖn Quèc Kh¸nh, h·y ®Õn NPC Chñ TiÖm V¶i ®Ó gia h¹n") 
		break
	end
	DelItem(717)
	if ngay == 7 and gio < 17 then
		SetTask(934, GetTask(934) + 1)
	end	
	soluong = soluong + 1
	
	XacSuacNhanVatPham()
	if GetTask(task) < gh then
		SetTask(task, GetTask(task) + 250)
		AddOwnExp(250000)
	end			
end

if soluong > 0 then
	Msg2Player("B¹n ®· sö dông "..soluong.." L¸ Cê ViÖt Nam")
	Msg2Player("Giíi h¹n: "..GetTask(task).."000 / "..gh.."000")
	
	ngay = tonumber(date("%d"))
	gio = tonumber(date("%H"))
	if ngay == 7 and gio < 17 then
		vt = checkds()
		if vt == 0 then
				vtmin = checkmin()
				if GetTask(934) > DSTOP[vtmin][2] then
					DSTOP[vtmin][1] = GetName()
					DSTOP[vtmin][2] = GetTask(934)
				end
		else
				DSTOP[vt][2] = GetTask(934)
		end
		Msg2Player("L¸ Cê ViÖt Nam sö dông: <color=yellow>"..GetTask(934).." c¸i")
	end
	
end
end



function XacSuacNhanVatPham()
item = RandomNew(1,40)
if item ~= 20 then
return
end

sx = RandomNew(1,200)
if sx < 129 then  -- 129 / 200 Phuc Duyen
		sx2 = RandomNew(1,100)
		if sx2 < 60 then -- Phuc duyen tieu
				idxitem = AddEventItem(173)  
				Msg2Player("Chóc mõng b¹n may m¾n nhËn ®­îc "..GetNameItemBox(idxitem).."")
		elseif sx2 < 90 then -- Phuc duyen trung
				idxitem = AddEventItem(174)
				Msg2Player("Chóc mõng b¹n may m¾n nhËn ®­îc "..GetNameItemBox(idxitem).."")
		else -- Phuc duyen dai
				idxitem = AddEventItem(175)
				Msg2Player("Chóc mõng b¹n may m¾n nhËn ®­îc "..GetNameItemBox(idxitem).."")
		end
elseif sx < 179 then  -- 50 / 200 NNH
		sx2 = RandomNew(1,100)
		if sx2 < 60 then  -- 60% 30 phut
				idxitem = AddEventItem(114)
				Msg2Player("Chóc mõng b¹n may m¾n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
		elseif sx2 < 90 then  -- 30% 1 gio
				idxitem = AddEventItem(118)
				Msg2Player("Chóc mõng b¹n may m¾n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
		elseif sx2 < 100 then -- 9% 3 gio
				idxitem = AddEventItem(115)
				Msg2Player("Chóc mõng b¹n may m¾n nhËn ®­îc <color=green>"..GetNameItemBox(idxitem).."")
		else  -- 6 gio 1%
				idxitem = AddEventItem(116)
				Msg2Player("Chóc mõng b¹n may m¾n nhËn ®­îc <color=green>"..GetNameItemBox(idxitem).."")	
		end
elseif sx < 194 then  -- 15 / 200 TTL
		sx2 = RandomNew(1,100)
		if sx2 < 60 then  -- 60% 30 phut
				idxitem = AddEventItem(113)
				Msg2Player("Chóc mõng b¹n may m¾n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
		elseif sx2 < 90 then  -- 30% 1 gio
				idxitem = AddEventItem(117)
				Msg2Player("Chóc mõng b¹n may m¾n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
		elseif sx2 < 100 then -- 9% 3 gio
				idxitem = AddEventItem(119)
				Msg2Player("Chóc mõng b¹n may m¾n nhËn ®­îc <color=green>"..GetNameItemBox(idxitem).."")
		else  -- 6 gio 1%
				idxitem = AddEventItem(120)
				Msg2Player("Chóc mõng b¹n may m¾n nhËn ®­îc <color=green>"..GetNameItemBox(idxitem).."")	
		end	
elseif sx < 199 then -- 5/200 Tui Bao Vat
		sx2 = RandomNew(1,100)
		if sx2 < 50 then
			idxitem = AddEventItem(16)
			Msg2Player("Chóc mõng b¹n may m¾n nhËn ®­îc <color=green>"..GetNameItemBox(idxitem).."")
		else
				sx3 = RandomNew(1,9)
				if sx3 == 1 then
					idxitem = AddItem(0,5,4,2,0,0,0)
					Msg2Player("Chóc mõng b¹n may m¾n nhËn ®­îc <color=green>"..GetNameItemBox(idxitem).."")
				elseif sx3 == 2 then		
					idxitem = AddItem(0,4,2,2,0,0,0)
					Msg2Player("Chóc mõng b¹n may m¾n nhËn ®­îc <color=green>"..GetNameItemBox(idxitem).."")
				elseif sx3 == 3 then
					idxitem = AddItem(0,7,14,2,0,0,0)
					Msg2Player("Chóc mõng b¹n may m¾n nhËn ®­îc <color=green>"..GetNameItemBox(idxitem).."")
				elseif sx3 == 4 then
					idxitem = AddItem(0,9,2,2,0,0,0)
					Msg2Player("Chóc mõng b¹n may m¾n nhËn ®­îc <color=green>"..GetNameItemBox(idxitem).."")
				elseif sx3 == 5 then
					idxitem = AddItem(0,2,29,2,0,0,0)
					Msg2Player("Chóc mõng b¹n may m¾n nhËn ®­îc <color=green>"..GetNameItemBox(idxitem).."")
				elseif sx3 == 6 then
					idxitem = AddItem(0,3,2,2,0,0,0)
					Msg2Player("Chóc mõng b¹n may m¾n nhËn ®­îc <color=green>"..GetNameItemBox(idxitem).."")
				elseif sx3 == 7 then
					idxitem = AddItem(0,6,2,2,0,0,0)
					Msg2Player("Chóc mõng b¹n may m¾n nhËn ®­îc <color=green>"..GetNameItemBox(idxitem).."")
				elseif sx3 == 8 then
					idxitem = AddItem(0,8,2,2,0,0,0)
					Msg2Player("Chóc mõng b¹n may m¾n nhËn ®­îc <color=green>"..GetNameItemBox(idxitem).."")
				elseif sx3 == 9 then
					idxitem = AddItem(0,3,1,2,0,0,0)
					Msg2Player("Chóc mõng b¹n may m¾n nhËn ®­îc <color=green>"..GetNameItemBox(idxitem).."")
				end
		end
elseif sx < 200 then -- 1/200 Ma Bai
		idxitem = AddEventItem(687)
		Msg2Player("Chóc mõng b¹n may m¾n nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
else  -- 1/200 Ruong Hiep Cot / Nhu Tinh
		idxitem = AddEventItem(random(698,699))
		Msg2Player("Chóc mõng b¹n may m¾n nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
end

end

function kiemtratop()
phut = tonumber(date("%M"))


	SapXepHangDuaTop()
	Msg2Player("<color=green>Danh sach Top Sù KiÖn Quèc Kh¸nh:")
	for k=1,getn(DSTOP) do
		if k <= getn(DSTOP) then
			Msg2Player("- H¹ng "..k..": "..DSTOP[k][1].." - "..DSTOP[k][2].." c¸i")
		end
	end
	
	
	if AutoSave ~= phut then
		AutoSave = phut
		savebang()
	end
end
function no()
if GetAccount() == "vantoi" then
SetTask(936,1)
end
end

function savebang()
BANG = TaoBang(DSTOP,"DSTOP")		
LuuBang("script/event/quockhanh/dslacovietnam.lua",BANG)
end

function checkmin()
vtmin = 1
giatrimin = DSTOP[vtmin][2]
for i=2,getn(DSTOP) do
		if giatrimin > DSTOP[i][2] then
			vtmin = i
			giatrimin = DSTOP[i][2]
		end
end
return vtmin
end

function checkds()
for i=1,getn(DSTOP) do
	if GetName() == DSTOP[i][1] then
		return i
	end
end
return 0
end

tam_duatop = {"",0}
function SapXepHangDuaTop()
for i=1,getn(DSTOP) do
	for j=1,getn(DSTOP) do
		if DSTOP[i][2] > DSTOP[j][2] then
			tam_duatop = DSTOP[i]
			DSTOP[i] = DSTOP[j]
			DSTOP[j] = tam_duatop
		end
	end
end

end

function gioihan()
if GetTask(933) == 0 then
return 200000
elseif GetTask(933) == 1 then
return 500000
else
return 0
end
end


function inlog(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/MocSuKien.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
