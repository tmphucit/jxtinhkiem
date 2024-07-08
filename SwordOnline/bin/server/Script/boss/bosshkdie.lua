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

function OnDeath(idx)
w,x,y = GetWorldPos()

Msg2SubWorld("<color=yellow>[HÖ Thèng] <color=red>Chóc mõng ®¹i hiÖp ["..GetName().."] ®· tiªu diÖt "..GetNpcName(idx).." vµ ®em l¹i cho toµn server rÊt nhiÒu kinh nghiÖm. ")
bang = GetTongName()


		loai = random(2,9)
		LevelItem = random(9,10)
		LevelOption = random(9,10)
		nParam = -1
		nguhanh = random(0,4)
		if loai == 4 or loai == 6 or loai == 8 or loai == 9 then
			nParam = random(0,1)
		elseif loai == 2 then
			nParam = random(0,27)
		elseif loai == 5 then
			nParam = random(0,3)
		elseif loai == 7 then
			nParam = random(0,13)
		elseif loai == 3 then
			nParam = 0
		end	
			
		if nParam ~= -1 then
			idxitem = AddItem(0,loai,nParam,LevelItem,nguhanh,0,LevelOption)
			Msg2SubWorld("<color=green>"..GetName().." nhËn ®­îc: "..GetNameItemBox(idxitem).." [CÊp "..LevelItem.."] - HÖ "..CheckHe(nguhanh).."")	
		end


if w == 109 then
	manhngua1 = random(5,9)
	manhngua2 = 10 - manhngua1
	manhab = random(1,3)
	manhdq = random(1,3)
	tienvan = random(50, 200)
	if bang ~= "" then
		Msg2SubWorld("<color=green>Toµn bé thµnh viªn bang héi ["..bang.."] nhËn ®­îc 3.000.000 kinh nghiÖm")
		vt = checkbang(bang)
		if  vt == 0 then
			BOSSHK[getn(BOSSHK)+1] = {bang,manhngua1,manhngua2,manhab,manhdq,tienvan}
			Msg2SubWorld("Bang héi "..bang.." nhËn ®­îc: "..manhngua1.." M¶nh XÝch Thè, "..manhngua2.." M¶nh ChiÕu D¹, "..manhab.." M¶nh An Bang, "..manhdq.." M¶nh §Þnh Quèc, "..tienvan.." v¹n l­îng")
			inlog("Bang héi "..bang.." nhËn ®­îc: "..manhngua1.." M¶nh XÝch Thè, "..manhngua2.." M¶nh ChiÕu D¹, "..manhab.." M¶nh An Bang, "..manhdq.." M¶nh §Þnh Quèc, "..tienvan.." v¹n l­îng")
		else
			BOSSHK[vt][2] = BOSSHK[vt][2] + manhngua1
			BOSSHK[vt][3] = BOSSHK[vt][3] + manhngua2
			BOSSHK[vt][4] = BOSSHK[vt][4] + manhab
			BOSSHK[vt][5] = BOSSHK[vt][5] + manhdq
			BOSSHK[vt][6] = BOSSHK[vt][6] + tienvan
			Msg2SubWorld("Bang héi "..bang.." nhËn ®­îc: "..manhngua1.." M¶nh XÝch Thè, "..manhngua2.." M¶nh ChiÕu D¹, "..manhab.." M¶nh An Bang, "..manhdq.." M¶nh §Þnh Quèc, "..tienvan.." v¹n l­îng")
			inlog("Bang héi "..bang.." nhËn ®­îc: "..manhngua1.." M¶nh XÝch Thè, "..manhngua2.." M¶nh ChiÕu D¹, "..manhab.." M¶nh An Bang, "..manhdq.." M¶nh §Þnh Quèc, "..tienvan.." v¹n l­îng")
		end
		LuuDanhSach()
	else
		for k=1,manhngua1 do AddEventItem(273) end
		for k=1,manhngua2 do AddEventItem(274) end
		for k=1,manhab do AddEventItem(random(283,286)) end
		for k=1,manhdq do AddEventItem(random(287,291)) end
		Earn(tienvan*10000)

		Msg2SubWorld(""..GetName().." nhËn ®­îc: "..manhngua1.." M¶nh XÝch Thè, "..manhngua2.." M¶nh ChiÕu D¹, "..manhab.." M¶nh An Bang, "..manhdq.." M¶nh §Þnh Quèc")
		inlog(""..GetName().." nhËn ®­îc: "..manhngua1.." M¶nh XÝch Thè, "..manhngua2.." M¶nh ChiÕu D¹, "..manhab.." M¶nh An Bang, "..manhdq.." M¶nh §Þnh Quèc")
	end
end
		
		
if  GetTongName() == "" then
		name = GetName()
	
		idx = PlayerIndex
			for i=1,GetCountPlayerMax() do
				PlayerIndex = i
				w1,x1,y1 = GetWorldPos()
				
				if GetName() ~= "" and GetName() ~= nil then
					if GetName() == name then	
						for k=1,10 do AddOwnExp(1000000) end
						Msg2SubWorld(""..GetName().." nhËn ®­îc 10.000.000 kinh nghiÖm do kh«ng cã bang héi")
					else
						if w == w1 and (x > x1-40 and x < x1+40) and (y > y1-80 and y < y1+80) then
						AddOwnExp(1500000)
						Msg2Player("B¹n nhËn ®­îc 1.500.000 kinh nghiÖm")
						else
						AddOwnExp(500000)
						Msg2Player("B¹n nhËn ®­îc 500.000 kinh nghiÖm")
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
						AddOwnExp(3000000)
						Msg2Player("B¹n nhËn ®­îc 3.000.000 kinh nghiÖm")
					else
						if w == w1 and (x > x1-40 and x < x1+40) and (y > y1-80 and y < y1+80) then
						AddOwnExp(1500000)
						Msg2Player("B¹n nhËn ®­îc 1.500.000 kinh nghiÖm")
						else
						AddOwnExp(500000)
						Msg2Player("B¹n nhËn ®­îc 500.000 kinh nghiÖm")
						end
					end
				end
			end
		PlayerIndex = idx
		
end		
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
SayNew("Ta qu¶n lý vËt phÈm s¨n Boss cña Bang Héi: ",6,
"Rót M¶nh Ngùa XÝch Thè /rutmanh",
"Rót M¶nh Ngùa ChiÕu D¹ /rutmanh",
"Rót M¶nh An Bang /rutmanh",
"Rót M¶nh §Þnh Quèc /rutmanh",
"Rót M¶nh TiÒn V¹n /rutmanh",
"Tho¸t./no")
else
SayNew("Ta qu¶n lý vËt phÈm s¨n Boss cña Bang Héi: ",6,
"Xem M¶nh Ngùa XÝch Thè /xemmanh",
"Xem M¶nh Ngùa ChiÕu D¹ /xemmanh",
"Xem M¶nh An Bang /xemmanh",
"Xem M¶nh §Þnh Quèc /xemmanh",
"Xem M¶nh TiÒn V¹n /xemmanh",
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
soluong = BOSSHK[vt][2]
name = "M¶nh Ngùa XÝch Thè "
elseif i == 2 then
soluong = BOSSHK[vt][3]
name = "M¶nh Ngùa ChiÕu D¹ "
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
vtnum = 2
name = "M¶nh Ngùa XÝch Thè "
itemmin = 273
itemmax = 273
elseif i == 2 then
vtnum = 3
name = "M¶nh Ngùa ChiÕu D¹ "
itemmin = 274
itemmax = 274
elseif i == 3 then
vtnum = 4
name = "M¶nh An Bang"
itemmin = 283
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
function OnDrop()
end