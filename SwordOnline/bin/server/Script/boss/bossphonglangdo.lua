Include("\\datascript\\banghoi\\dsbosspld.lua")
Include("\\script\\lib\\thuvien.lua")


function checkbang(tenbang)
if getn(DSTTT) == 0 then
return 0
end
for i=1,getn(DSTTT) do
	if tenbang == DSTTT[i][1] then
		return i
	end
end
return 0
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
SayNew("Ta qu¶n lý vËt phÈm s¨n Boss cña Bang Héi: ",4,
"Rót X¸ L¬i Kim §¬n /rutmanh",
"Rót Thñy Tinh /rutmanh",
"Rót TiÒn V¹n /rutmanh",
"Tho¸t./no")
else
SayNew("Ta qu¶n lý vËt phÈm s¨n Boss cña Bang Héi: ",4,
"Xem X¸ Lîi Kim §¬n /xemmanh",
"Xem Thñy Tinh /xemmanh",
"Xem TiÒn V¹n /xemmanh",
"Tho¸t./no")
end
end




function xemmanh(nsel)
i = nsel + 1
vt = checkbang(tenbang)
soluong = 0
name = ""
if i == 1 then
soluong = DSTTT[vt][7]
name = "X¸ Lîi Kim §¬n "
elseif i == 2 then
soluong = DSTTT[vt][8]
name = "Thñy Tinh "
elseif i == 3 then
soluong = DSTTT[vt][6]
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
name = "X¸ Lîi Kim §¬n "
itemmin = 59
itemmax = 59
elseif i == 2 then
vtnum = 8
name = "Thñy Tinh "
itemmin = 28
itemmax = 30
elseif i == 3 then
vtnum = 6
name = "V¹n L­îng"
end
if name == "" then
Talk(1,"","Lçi, b¸o GM gÊp")
return
end

if i < 3 then
	if DSTTT[vt][vtnum] == 0 then
		Talk(1,"","HiÖn t¹i kh«ng cßn "..name.." göi ë chç ta")
		return
	end
	num = 0
	for t=1,DSTTT[vt][vtnum] do
		if CheckFreeBoxItem(0,3,3,1) ~= 0 then
			DSTTT[vt][vtnum] = DSTTT[vt][vtnum] - 1
			AddEventItem(RandomNew(itemmin,itemmax))
			num = num + 1
		end
	end
	Msg2Player("B¹n nhËn ®­îc "..num.." "..name.." ")
	Msg2Tong("<color=yellow>Bang chñ "..GetName().." ®· rót "..num.." "..name.." ")
	inlog("Rut "..num.." "..name.."")
elseif i == 3 then
	if DSTTT[vt][6] == 0 then
		Talk(1,"","HiÖn t¹i kh«ng cßn ng©n l­îng göi ë chç ta")
		return
	end
		nganluong = DSTTT[vt][6]
		Earn(nganluong*10000)
		DSTTT[vt][6] = 0
	Msg2Player("B¹n nhËn ®­îc "..nganluong.." v¹n l­îng ")
	Msg2Tong("<color=yellow>Bang chñ "..GetName().." ®· rót "..nganluong.." v¹n l­îng")
	inlog("Rut "..nganluong.." Van Luong")
else
Talk(1,"","Ch­a lµm")	
end

BANG = TaoBang(DSTTT,"DSTTT")
	LuuBang("datascript/banghoi/dsbosspld.lua",BANG)
end

function no()
end

function OnDrop()
end

function OnDeath()
name = GetName()
bang = GetTongName()
idx = PlayerIndex
h,m,s = GetTimeNew()
ngay = tonumber(date("%d"))

if GetTongName() == "" then
	Msg2SubWorld("Chóc mõng "..GetName().." ®· tiªu diÖt Boss Phong L¨ng §é §¹o TÆc vµ mang vÒ cho m×nh <color=yellow>3 Thñy Tinh !")
	for k=1,3 do AddEventItem(random(28,30)) end
	
	Msg2Player("B¹n nhËn ®­îc <color=pink>3 Thñy Tinh")
	for k=1,20 do AddOwnExp(1000000) end
	Earn(1000000)
	Msg2Player("B¹n nhËn ®­îc <color=yellow>20.000.000<color=red> kinh nghiÖm !")
	Msg2Player("B¹n nhËn ®­îc <color=yellow>100<color=red> v¹n l­îng !")
else
	manhngua1 = 0
	manhngua2 = 0
	manhab = 0
	manhdq = 0
	tienvan = 100
	xaloikimdon = RandomNew(5,10)
	thuytinh = RandomNew(1,5)
	Msg2SubWorld("Chóc mõng "..GetName().." ®· tiªu diÖt Boss Phong L¨ng §é §¹o TÆc vµ mang vÒ cho <color=yellow>[Bang Héi - "..bang.."]: ")
	
	if manhab > 0 then
	Msg2SubWorld("<color=yellow>- "..manhab.." M·nh An Bang ")
	end
	if manhdq > 0 then
	Msg2SubWorld("<color=yellow>- "..manhdq.." M·nh §Þnh Quèc ")
	end
	if xaloikimdon > 0 then
	Msg2SubWorld("<color=yellow>- "..xaloikimdon.." X¸ Lîi Kim §¬n")
	end
	if thuytinh > 0 then
	Msg2SubWorld("<color=yellow>- "..thuytinh.." Thñy Tinh")
	end
	Msg2SubWorld("<color=yellow>- 100 v¹n l­îng ")
	
	
	if getn(DSTTT) == 0 then
		DSTTT[getn(DSTTT)+1] = {bang,manhngua1,manhngua2,manhab,manhdq,tienvan,xaloikimdon,thuytinh}
	else
		vt = checktontai(bang)
		if  vt == 0 then
			DSTTT[getn(DSTTT)+1] = {bang,manhngua1,manhngua2,manhab,manhdq,tienvan,xaloikimdon,thuytinh}
			inlog("Bang héi "..bang.." nhËn ®­îc: "..manhab.." M¶nh An Bang, "..manhdq.." M¶nh §Þnh Quèc, "..xaloikimdon.." X¸ Lîi Kim §¬n, "..thuytinh.." Thñy Tinh, "..tienvan.." v¹n l­îng, ")
		else
			DSTTT[vt][4] = DSTTT[vt][4] + manhab
			DSTTT[vt][5] = DSTTT[vt][5] + manhdq
			DSTTT[vt][6] = DSTTT[vt][6] + tienvan
			DSTTT[vt][7] = DSTTT[vt][7] + xaloikimdon
			DSTTT[vt][8] = DSTTT[vt][8] + thuytinh
			inlog("Bang héi "..bang.." nhËn ®­îc: "..manhab.." M¶nh An Bang, "..manhdq.." M¶nh §Þnh Quèc, "..xaloikimdon.." X¸ Lîi Kim §¬n, "..thuytinh.." Thñy Tinh, "..tienvan.." v¹n l­îng, ")
		end
	end
	
	BANG = TaoBang(DSTTT,"DSTTT")
	LuuBang("datascript/banghoi/dsbosspld.lua",BANG)

	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		if GetName() ~= "" and GetName() ~= nil then
			if GetTongName() == bang then
					for k=1,20 do AddOwnExp(1000000) end
					Msg2Player("B¹n nhËn ®­îc <color=yellow>20.000.000<color=red> kinh nghiÖm !")
			end
		end
	end


end


PlayerIndex = idx
end

function inlog(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/LogBossPhongLangDo.txt", "a");
if LoginLog then
write(LoginLog,""..GetAccount().." - "..GetName().." - "..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function checktontai(bang)
for i=1,getn(DSTTT) do 
	if DSTTT[i][1] == bang then
		return i
	end
end
return 0
end
