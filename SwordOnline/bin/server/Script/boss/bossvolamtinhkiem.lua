Include("\\datascript\\banghoi\\dsbosshk.lua")
Include("\\script\\lib\\thuvien.lua")

function checkbang(tenbang)
if getn(BOSSHK) == 0 then
return 0
end
for i=1,getn(BOSSHK) do
	if tenbang == BOSSHK[i][1] then
		return i
	end
end
return 0
end

function OnDrop(idx)
w,x,y = GetWorldPos()

--Msg2SubWorld("<color=yellow>[HÖ Thèng] <color=red>Chóc mõng ®¹i hiÖp ["..GetName().."] ®· tiªu diÖt "..GetNpcName(idx).." . ")
bang = GetTongName()


sxthienhoang = RandomNew(1,100)
if sxthienhoang < 80 then -- 14%
	sxthienhoang2 = random(1,9)
	if sxthienhoang2 == 1 then
		idxitem = AddItem(0,7,15,random(5,10),0,0,0)
		Msg2SubWorld("§¹i hiÖp "..GetName().."  may m¾n nhËn ®­îc: <color=pink>"..GetNameItemBox(idxitem).." ")
	elseif sxthienhoang2 == 2 then
		idxitem = AddItem(0,2,30,random(5,10),0,0,0)
		Msg2SubWorld("§¹i hiÖp "..GetName().."  may m¾n nhËn ®­îc: <color=pink>"..GetNameItemBox(idxitem).." ")
	elseif sxthienhoang2 == 3 then
		idxitem = AddItem(0,8,3,random(5,10),0,0,0)
		Msg2SubWorld("§¹i hiÖp "..GetName().."  may m¾n nhËn ®­îc: <color=pink>"..GetNameItemBox(idxitem).." ")
	elseif sxthienhoang2 == 4 then
		idxitem = AddItem(0,6,3,random(5,10),0,0,0)
		Msg2SubWorld("§¹i hiÖp "..GetName().."  may m¾n nhËn ®­îc: <color=pink>"..GetNameItemBox(idxitem).." ")
	elseif sxthienhoang2 == 5 then
		idxitem = AddItem(0,5,5,random(5,10),0,0,0)
		Msg2SubWorld("§¹i hiÖp "..GetName().."  may m¾n nhËn ®­îc: <color=pink>"..GetNameItemBox(idxitem).." ")
	elseif sxthienhoang2 == 6 then
		idxitem = AddEventItem(710)
		Msg2SubWorld("§¹i hiÖp "..GetName().."  may m¾n nhËn ®­îc: <color=pink>"..GetNameItemBox(idxitem).." ")
	elseif sxthienhoang2 == 7 then
		idxitem = AddEventItem(711)
		Msg2SubWorld("§¹i hiÖp "..GetName().."  may m¾n nhËn ®­îc: <color=pink>"..GetNameItemBox(idxitem).." ")
	elseif sxthienhoang2 == 8 then
		idxitem = AddEventItem(712)
		Msg2SubWorld("§¹i hiÖp "..GetName().."  may m¾n nhËn ®­îc: <color=pink>"..GetNameItemBox(idxitem).." ")
	elseif sxthienhoang2 == 9 then
		idxitem = AddEventItem(243)
		Msg2SubWorld("§¹i hiÖp "..GetName().."  may m¾n nhËn ®­îc: <color=pink>"..GetNameItemBox(idxitem).." ")
	end
end	

	
--if w == 217 then
	manhngua1 = 0
	manhngua2 = 0
	manhab = random(1,3)
	manhdq = random(1,3)
	tienvan = 0
	manhngua3 = random(1,3)
	knbb = random(1,3)
	if bang ~= "" then
		--Msg2SubWorld("<color=green>Toµn bé thµnh viªn bang héi ["..bang.."] nhËn ®­îc 6.000.000 kinh nghiÖm")
		vt = checkbang(bang)
		if  vt == 0 then
			BOSSHK[getn(BOSSHK)+1] = {bang,manhngua1,manhngua2,manhab,manhdq,tienvan,manhngua3,knbb}
			Msg2SubWorld("Bang héi "..bang.." nhËn ®­îc: "..manhngua3.." M¶nh ChiÕu D¹, "..knbb.." Cùc PhÈm Tinh Th¹ch, "..manhab.." M¶nh An Bang, "..manhdq.." M¶nh §Þnh Quèc")
			inlog("Bang héi "..bang.." nhËn ®­îc: "..manhngua3.." M¶nh ChiÕu D¹, "..knbb.." Cùc PhÈm Tinh Th¹ch, "..manhab.." M¶nh An Bang, "..manhdq.." M¶nh §Þnh Quèc")
		else
			BOSSHK[vt][2] = BOSSHK[vt][2] + manhngua1
			BOSSHK[vt][3] = BOSSHK[vt][3] + manhngua2
			BOSSHK[vt][4] = BOSSHK[vt][4] + manhab
			BOSSHK[vt][5] = BOSSHK[vt][5] + manhdq
			BOSSHK[vt][6] = BOSSHK[vt][6] + tienvan
			BOSSHK[vt][7] = BOSSHK[vt][7] + manhngua3
			BOSSHK[vt][8] = BOSSHK[vt][8] + knbb
			Msg2SubWorld("Bang héi "..bang.." nhËn ®­îc: "..manhngua3.." M¶nh ChiÕu D¹, "..knbb.." Cùc PhÈm Tinh Th¹ch, "..manhab.." M¶nh An Bang, "..manhdq.." M¶nh §Þnh Quèc")
			inlog("Bang héi "..bang.." nhËn ®­îc: "..manhngua3.." M¶nh ChiÕu D¹, "..knbb.." Cùc PhÈm Tinh Th¹ch, "..manhab.." M¶nh An Bang, "..manhdq.." M¶nh §Þnh Quèc")
	end
		LuuDanhSach()
	else
		--for k=1,manhngua1 do AddEventItem(273) end
		--for k=1,manhngua2 do AddEventItem(274) end
		for k=1,manhab do AddEventItem(random(284,286)) end
		for k=1,manhdq do AddEventItem(random(287,291)) end
		--Earn(tienvan*10000)
		for k=1,manhngua3 do AddEventItem(273) end
		for k=1,knbb do AddEventItem(568) end
		
		
		Msg2SubWorld(""..GetName().." nhËn ®­îc: "..manhngua3.." M¶nh ChiÕu D¹, "..knbb.." Cùc PhÈm Tinh Th¹ch, "..manhab.." M¶nh An Bang, "..manhdq.." M¶nh §Þnh Quèc")
		inlog(""..GetName().." nhËn ®­îc: "..manhngua3.." M¶nh ChiÕu D¹, "..knbb.." Cùc PhÈm Tinh Th¹ch, "..manhab.." M¶nh An Bang, "..manhdq.." M¶nh §Þnh Quèc")
	end
--end
		

end
function OnDeath()
ngay = tonumber(date("%d"))
idx = PlayerIndex
tong = GetTongName()
numteam = GetTeamSize()
team = GetTeam()
name = GetName()
w1,x1,y1 = GetWorldPos()

Msg2SubWorld("<color=green>Chóc mõng ®¹i hiÖp ["..GetName().."] ®· tiªu diÖt Boss M¸y Chñ Ph­îng T­êng vµ nhËn ®­îc:")
	-- Msg2SubWorld("<color=yellow>- 1 Tinh Hång B¶o Th¹ch")
	-- Msg2SubWorld("<color=yellow>- 1 Lam Thñy Tinh")
	-- Msg2SubWorld("<color=yellow>- 1 Lôc Thñy Tinh")
	-- Msg2SubWorld("<color=yellow>- 1 Tö Thñy Tinh")
	Msg2SubWorld("<color=yellow>- 1 TÈy Tñy Kinh")
	Msg2SubWorld("<color=yellow>- 1 Vâ L©m MËt TÞch")
	-- Msg2SubWorld("<color=yellow>- 1 Ru¬ng Thiªn Hoµng")
	Msg2SubWorld("<color=yellow>- 1 §¹i Thµnh BÝ KiÐp")
	Msg2SubWorld("<color=yellow>- 1 Ru¬ng M¶nh Ngùa")
	Msg2SubWorld("<color=yellow>- 1 M¶nh Trang BÞ Vò KhÝ HKMP")
	-- AddEventItem(28)
	-- AddEventItem(29)
	-- AddEventItem(30)
	-- AddEventItem(31)
	AddEventItem(1)
	AddEventItem(1)
	AddEventItem(177)
	AddEventItem(713)
	AddEventItem(random(383,388))
	-- for i=1,5 do AddEventItem(28) end
	-- for i=1,10 do AddEventItem(567) end
	-- for i=1,30 do AddEventItem(664) end
	-- for i=1,30 do AddEventItem(665) end
	-- for i=1,10 do AddEventItem(326) end
Msg2SubWorld("<color=green>Chóc mõng Bang Héi ["..GetTongName().."] tiªu diÖt Boss nhËn ®­îc:")
-- Msg2SubWorld("<color=pink>- 500 triÖu ®iÒm kinh nghiÖm cho tÊt c¶ thµnh viªn trong bang héi ")
--Msg2SubWorld("<color=yellow>- Bang chñ liªn hÖ Admin ®Ó nhËn ngùa XÝch Thè ")
	
if GetTeam() == nill then
    for k=1,10000 do AddOwnExp(5000) end
	-- AddOwnExp(10000000)
	Msg2Player("B¹n chØ s¨n boss 1 m×nh, nhËn ®­îc 30.000.000 kinh nghiÖm")
	Msg2SubWorld("§¹i hiÖp ["..GetName().."] ®· ®¬n th©n tiªu diÖt boss, nhËn ®­îc 30.000.000 kinh nghiÖm ")
	
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		-- if GetTongName() ~= ""  and GetTongName() ~= nil  then	
		if GetName() ~= "" or GetName() ~= nil then
			w,x,y = GetWorldPos()
			if GetName() ~= name then
				if w == w1 and (x > x1-40 and x < x1+40) and (y > y-80 and y < y+80) then
					for k=1,10000 do AddOwnExp(2500) end
					Msg2Player("B¹n ë trong khu vùc s¨n boss, nhËn ®­îc 15.000.000 kinh nghiÖm")
				end
			end
		end
	end
else
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		if GetName() ~= "" or GetName() ~= nil then
			w,x,y = GetWorldPos()
				if GetTeam() == team then
					-- AddOwnExp(10000000)
					for k=1,10000 do AddOwnExp(5000) end
					Msg2Player("B¹n thuéc nhãm tiªu diÖt Boss, nhËn ®­îc 30.000.000 kinh nghiÖm")
				elseif w == w1 and (x > x1-40 and x < x1+40) and (y > y-80 and y < y+80) then
					for k=1,10000 do AddOwnExp(2500) end
					Msg2Player("B¹n ë trong khu vùc s¨n boss, nhËn ®­îc 15.000.000 kinh nghiÖm")
				end
		end
	end
end
PlayerIndex = idx
end
function main()
tenbang = GetTongName()
if tenbang == "" then
Talk(1,"","Ng­¬i kh«ng cã bang héi, tíi t×m ta lµm g×?")
return
end

vt = checkbang(tenbang)
if vt == 0 then
Talk(1,"","Bang héi cña ng­¬i kh«ng ký göi vËt phÈm chç ta ")
return
end

if GetTongFigure() == 3 then
SayNew("Ta qu¶n lý vËt phÈm s¨n Boss cña Bang Héi: ",8,
"Rót M¶nh ChiÕu D¹ /rutmanh",
"Rót Cùc PhÈm Tinh Th¹ch /rutmanh",
"Rót M¶nh An Bang /rutmanh",
"Rót M¶nh §Þnh Quèc /rutmanh",
"Rót TiÒn V¹n /rutmanh",

"Tho¸t./no")
else
SayNew("Ta qu¶n lý vËt phÈm s¨n Boss cña Bang Héi: ",6,
"Xem M¶nh ChiÕu D¹ /xemmanh",
"Xem Cùc PhÈm Tinh Th¹ch /xemmanh",
"Xem M¶nh An Bang /xemmanh",
"Xem M¶nh §Þnh Quèc /xemmanh",
"Xem TiÒn V¹n /xemmanh",
"Tho¸t./no")
end
end

function no()
end

function xemmanh(nsel)
i = nsel + 1
vt = checkbang(tenbang)
soluong = 0
name = ""
if i == 1 then
soluong = BOSSHK[vt][7]
name = "M¶nh ChiÕu D¹"
elseif i == 2 then
soluong = BOSSHK[vt][8]
name = "Cùc PhÈm Tinh Th¹ch"
elseif i == 3 then
soluong = BOSSHK[vt][4]
name = "M¶nh An Bang"
elseif i == 4 then
soluong = BOSSHK[vt][5]
name = "M¶nh §Þnh Quèc"
elseif i == 5 then
soluong = BOSSHK[vt][6]
name = "v¹n l­îng"
end

if name == "" then
Talk(1,"","Lçi, b¸o GM gÊp")
return
end
Talk(1,"","HiÖn t¹i bang héi ®ang cã: <color=yellow>"..soluong.." "..name.."")

end 

function rutmanh(nsel)
i = nsel+1
vt = checkbang(tenbang)


vtnum = 0
name = ""
if i == 1 then
vtnum = 7
name = "M¶nh Ngùa ChiÕu D¹ "
itemmin = 273
itemmax = 273
elseif i == 2 then
vtnum = 8
name = "Cùc PhÈm Tinh Th¹ch"
itemmin = 568
itemmax = 568
elseif i == 3 then
vtnum = 4
name = "M¶nh An Bang"
itemmin = 284
itemmax = 286
elseif i == 4 then
vtnum = 5
name = "M¶nh §Þnh Quèc"
itemmin = 287
itemmax = 291
elseif i == 5 then
vtnum = 6
name = "V¹n L­îng"
end
if name == "" then
Talk(1,"","Lçi, b¸o GM gÊp")
return
end

if i < 5 then
	if BOSSHK[vt][vtnum] == 0 then
		Talk(1,"","HiÖn t¹i kh«ng cßn "..name.." göi ë chç ta")
		return
	end
	num = 0
	for t=1,BOSSHK[vt][vtnum] do
		if CheckFreeBoxItem(0,3,3,1) ~= 0 then
			BOSSHK[vt][vtnum] = BOSSHK[vt][vtnum] - 1
			AddEventItem(RandomNew(itemmin,itemmax))
			num = num + 1
		end
	end
	Msg2Player("B¹n nhËn ®­îc "..num.." "..name.." ")
	Msg2Tong("<color=yellow>Bang chñ "..GetName().." ®· rót "..num.." "..name.." ")
	inlog("Rut "..num.." "..name.."")
elseif i == 5 then
	if BOSSHK[vt][6] == 0 then
		Talk(1,"","HiÖn t¹i kh«ng cßn ng©n l­îng göi ë chç ta")
		return
	end
		nganluong = BOSSHK[vt][6]
		Earn(nganluong*10000)
		BOSSHK[vt][6] = 0
	Msg2Player("B¹n nhËn ®­îc "..nganluong.." v¹n l­îng ")
	Msg2Tong("<color=yellow>Bang chñ "..GetName().." ®· rót "..nganluong.." v¹n l­îng")
	inlog("Rut "..nganluong.." Van Luong")
else
Talk(1,"","Ch­a lµm")	
end

LuuDanhSach()
end

function inlog(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/LogQuanLyBoss.txt", "a");
if LoginLog then
write(LoginLog,""..GetAccount().." - "..GetName().." - "..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function LuuDanhSach()
BANGI = TaoBang(BOSSHK,"BOSSHK")
LuuBang("datascript/banghoi/dsbosshk.lua",BANGI)
end
function CheckHe(num)
if num == 0 then
return "Kim"
elseif num == 1 then
return "Méc"
elseif num == 2 then
return "Thñy"
elseif num == 3 then
return "Háa"
else
return "Thæ "
end
end
function OnDeath__()
end


function KinhNghiemBackup()
		
if  GetTongName() == "" then
		name = GetName()
	
		idx = PlayerIndex
			for i=1,GetCountPlayerMax() do
				PlayerIndex = i
				w1,x1,y1 = GetWorldPos()
				
				if GetName() ~= "" and GetName() ~= nil then
					if GetName() == name then	
						for k=1,10 do AddOwnExp(2000000) end
						Msg2SubWorld(""..GetName().." nhËn ®­îc  20.000.000 kinh nghiÖm do kh«ng cã bang héi")
					else
						if 217 == w1 and (1733+40 > x1 and 1733-40 < x1) and (3455+80 > y1 and 3455-80 < y1) then
						AddOwnExp(3000000)
						Msg2Player("B¹n nhËn ®­îc 3.000.000 kinh nghiÖm")
						else
						AddOwnExp(1000000)
						Msg2Player("B¹n nhËn ®­îc 1.000.000 kinh nghiÖm")
						end
					end
				end
			end
		PlayerIndex = idx
		
else
	
		idx = PlayerIndex
			for i=1,GetCountPlayerMax() do
				PlayerIndex = i
				w1,x1,y1 = GetWorldPos()
				
				if GetName() ~= "" and GetName() ~= nil then
					if GetTongName() == bang and GetTongName() ~= "" then	
						AddOwnExp(6000000)
						Msg2Player("B¹n nhËn ®­îc 6.000.000 kinh nghiÖm")
					else
						if w == w1 and (x > x1-40 and x < x1+40) and (y > y1-80 and y < y1+80) then
						AddOwnExp(3000000)
						Msg2Player("B¹n nhËn ®­îc 3.000.000 kinh nghiÖm")
						else
						AddOwnExp(1000000)
						Msg2Player("B¹n nhËn ®­îc 1.000.000 kinh nghiÖm")
						end
					end
				end
			end
		PlayerIndex = idx
		
end		
end