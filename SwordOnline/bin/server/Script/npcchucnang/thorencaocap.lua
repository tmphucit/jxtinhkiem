Include("\\Script\\global\\sourcejx49.lua");
-- OpenPGBoxItem(): Mo thung ep do
-- GetIdxPGItem(page,num)  Ham lay Idx o thung thu page, o thu num
-- GetSeriItem
-- GetLevelItem
-- GetParticularItem
-- GetDetailTypeItem
-- GetGenreItem(idx)
-- DelEquipIdx(idx) -- Del trang bi
-- DelItemIdx (idx) -- Del Questkey
-- GetItemType(idx) 0 la tb thuong, 1 la hk, 2 la tim
-- GetEquipMagicId(idx,num)  Lay Magic cua dong num tu 1 - 6
-- GetEquipMagicLevel(idx,num) Level cua dong tu 1 - 10
-- IsBlockItem() 1 la khoa, 2 la khong khoa check trang bi co dinh hay ko
--- VIEN DA KHOANG THACH
-- AddEventItemMagic(id,seri,idmagic,levelmacgic,RequirementMagic) add magic khoang thach
---------------------- seri = 5 la khong co ngu hanh
-- GetIdMagicEventItem
-- GetLevelMagicEventItem
-- GetRequirementMagicEventItem

--- TRANG BI TIM
-- AddItemPink(Genara,Detail,Particular,nLevel,nSeries,nLuck,LevelMagic1,IdMagic1,LevelMagic2,IdMagic2,....,LevelMagic6,IdMagic6,1,randomseed)
-- GetEquipMagicRandomSeed(idx) -- Lay gia tri random seed cua 1 trang bi
-- GetEquipMagicLucky(idx,num) - Lay May Man


PHOBIEN = 0	--cho ep do tai bat cu tho ren nao tren ban do.Mac dinh = 0
MAPBLACKSMITH = 37 --Map cho ep do tai do khi PHOBIEN = 1

function main()
	SayNew("<color=green>Thî rÌn<color> H·y lùa chän 1 vò khÝ ngang víi søc m×nh nhÐ: ",4,
	"Th¨ng cÊp MÆt N¹ /thangcapmatna",
	"C­êng Hãa Hoµng kim M«n ph¸i /tinhluyen",
	"ChÕ t¹o An Bang Hoµn Mü /doianbanghm",
	"Tho¸t./no")
end;

function tinhluyen()
SayNew("<color=green>Thî rÌn<color> TÝnh n¨ng nµy sÏ biÕn <color=yellow>Hoµng Kim M«n Ph¸i <color>thµnh <color=yellow>§å Phæ Hoµng Kim<color>.\nLÖ phÝ: <color=red>500 v¹n l­îng<color>",3,
"Tinh luyÖn thµnh §å Phæ Hoµng Kim /tinhluyen1",
"Th¨ng CÊp Hoµng Kim M«n Ph¸i /thangcaphkmp",
"Tho¸t./no")
end

function thangcaphkmp()
SayNew("<color=green>Thî rÌn<color> : Vui lßng chän kiÓu C­êng Hãa:",3,
"C­êng hãa gi÷ nguyªn Option [1 - 6]/cuonghoahkmp",
"C­êng hãa thay ®æi Option [1 - 10]/cuonghoahkmp",
"Tho¸t./no")
end
function cuonghoahkmp2()
Talk(1,"","§ang cËp nhËt")
end
function cuonghoahkmp(nsel)
SetTaskTemp(1 , nsel + 1)
OpenCheckItemBox("Th¨ng CÊp HKMP","H·y ®Æt 1 Trang bÞ HKMP vµo ","okchhkmp")
end

MangIDHKMP = {
{0,0,61},
{0,1,61},
{0,2,61},
{0,3,61},
{0,4,61},
{0,5,61},
{0,0,121},
{0,1,121},
{0,2,121},
{0,3,121},
{0,1,151},
{0,0,171},
{0,1,171},
{0,1,181},
{1,1,21},
{1,0,41},
{1,2,31},
}

function CheckIDHKMP(nDetail, nPara, nLevel)
for i=1,getn(MangIDHKMP) do
	if nDetail == MangIDHKMP[i][1] and nPara == MangIDHKMP[i][2] and nLevel >= MangIDHKMP[i][3] and nLevel < MangIDHKMP[i][3] + 10 then
		return 1
	end
end
return 0
end
function okchhkmp()

idxitem = GetIdxItemBoxUpdateItem3()

if idxitem == -1 then
Talk(1,"","Sè l­îng v­ît qu¸ 1 trang bÞ ")
Msg2Player("Lçi: Sè l­îng v­ît qu¸ 1 trang bÞ ")
return
end

if GetGenreItem(idxitem) ~= 0 then
Talk(1,"","VËt phÈm ®Æt vµo kh«ng ph¶i trang bÞ, kh«ng thÓ ®æi !")
Msg2Player("Lçi: VËt phÈm ®Æt vµo kh«ng ph¶i trang bÞ, kh«ng thÓ ®æi !")
return
end
if GetCash() < 5000000 then
Talk(1,"","Kh«ng ®ñ 500 v¹n l­îng, kh«ng thÓ ®æi !")
Msg2Player("Lçi: Kh«ng ®ñ 500 v¹n l­îng, kh«ng thÓ ®æi !")
return
end
loaiitem = 0
nl1 = 0
nl2 = 0
nl3 = 0
nl4 = 0
nl5 = 0
nl6 = 0
nl7 = 0

if GetDetailTypeItem(idxitem) == 4 and GetParticularItem(idxitem) >= 6 and   GetParticularItem(idxitem) <= 16 then
	loaiitem = 1
	nl1 = 225
	nl2 = 226
	nl3 = 227
	nl4 = 228
	nl5 = 229
	nl6 = 230
	nl7 = 250
elseif GetDetailTypeItem(idxitem) == 8 and GetParticularItem(idxitem) >= 4 and   GetParticularItem(idxitem) <= 19 then
	loaiitem = 2
	nl1 = 207
	nl2 = 208
	nl3 = 209
	nl4 = 210
	nl5 = 211
	nl6 = 212
	nl7 = 246
elseif GetDetailTypeItem(idxitem) == 6 and GetParticularItem(idxitem) >= 4 and   GetParticularItem(idxitem) <= 23 then
	loaiitem = 3
	nl1 = 213
	nl2 = 214
	nl3 = 215
	nl4 = 216
	nl5 = 217
	nl6 = 218
	nl7 = 247
elseif GetDetailTypeItem(idxitem) == 9 and GetParticularItem(idxitem) >= 6 and   GetParticularItem(idxitem) <= 16 then
	loaiitem = 4
	nl1 = 231
	nl2 = 232
	nl3 = 233
	nl4 = 234
	nl5 = 235
	nl6 = 236
	nl7 = 337
elseif GetDetailTypeItem(idxitem) == 5 and GetParticularItem(idxitem) >= 6 and   GetParticularItem(idxitem) <= 19 then
	loaiitem = 5
	nl1 = 219
	nl2 = 220
	nl3 = 221
	nl4 = 222
	nl5 = 223
	nl6 = 224
	nl7 = 248
elseif (GetDetailTypeItem(idxitem) == 3 and GetParticularItem(idxitem) >= 7 and   GetParticularItem(idxitem) <= 28) or (GetDetailTypeItem(idxitem) == 3 and GetParticularItem(idxitem) == 37) then
	loaiitem = 6
	nl1 = 237
	nl2 = 238
	nl3 = 239
	nl4 = 240
	nl5 = 241
	nl6 = 242
	nl7 = 336
elseif GetDetailTypeItem(idxitem) == 7 and GetParticularItem(idxitem) >= 16 and   GetParticularItem(idxitem) <= 26 then
	loaiitem = 7
	nl1 = 389
	nl2 = 390
	nl3 = 391
	nl4 = 392
	nl5 = 393
	nl6 = 394
	nl7 = 244
elseif GetDetailTypeItem(idxitem) == 2 and GetParticularItem(idxitem) >= 33 and   GetParticularItem(idxitem) <= 49 then
	loaiitem = 8
	nl1 = 395
	nl2 = 396
	nl3 = 397
	nl4 = 398
	nl5 = 399
	nl6 = 400
	nl7 = 245
elseif CheckIDHKMP(GetDetailTypeItem(idxitem),GetParticularItem(idxitem),GetLevelItem(idxitem)) == 1 then	
	loaiitem = 9
end

if GetAccount() == "" then
	Msg2Player("Debug: "..loaiitem.." ")
end
timeitem = GetTimeItemIdx(idxitem)
levelitem = GetLevelItem(idxitem)
xacsuat = 0
if levelitem == 1 or levelitem == 2 then
	xacsuat = 100
elseif levelitem == 3 or levelitem == 4 then
	xacsuat = 50
elseif levelitem == 5 or levelitem == 6 then
	xacsuat = 30
end

if xacsuat == 0 then
Talk(1,"","Trang bÞ kh«ng thÓ c­êng hãa, vui lßng kiÓm tra l¹i")
return
end

a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17 = GetPramaItemIdx(idxitem)
if timeitem ~= 1 and timeitem ~= 550324 then
Talk(1,"","§ang bÞ ®ang khãa b¶o hiÓm, kh«ng thÓ tinh luyÖn ")
return
end

if loaiitem ~= 0 and nl1 ~= 0 and nl2 ~= 0 and nl3 ~= 0 and nl4 ~= 0 and nl5 ~= 0 and nl6 ~= 0 and nl7 ~= 0 then
	if GetItemCount(nl1) >= 1 and GetItemCount(nl2) >= 1 and GetItemCount(nl4) >= 1 and GetItemCount(nl5) >= 1 and GetItemCount(nl6) >= 1 and GetItemCount(nl7) >= 1 then
		SetTimeItem(idxitem,0);
		DelEquipIdx(idxitem)
		Pay(5000000)
		DelItem(nl1)
		DelItem(nl2)
		DelItem(nl3)
		DelItem(nl4)
		DelItem(nl5)
		DelItem(nl6)
		DelItem(nl7)
		xs = random(1,100)
		if xs <= xacsuat then
			if GetTaskTemp(1) == 1 then
				newitem = AddItemPrama(a1,a2,a3,a4 + 1,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17)
				Msg2SubWorld("Chóc mõng "..GetName().." c­êng hãa thµnh c«ng thµnh c«ng <color=green>"..GetNameItemBox(newitem).." - Gi÷ Nguyªn Option")
				Msg2Player("X¸c suÊt thµnh c«ng: <color=pink>"..xacsuat.."%")
			else
				newitem = AddItem(a1,a2,a3,a4 + 1,0,0,0)
				Msg2SubWorld("Chóc mõng "..GetName().." c­êng hãa thµnh c«ng thµnh c«ng <color=green>"..GetNameItemBox(newitem).." - NgÉu Nhiªn Option")
				Msg2Player("X¸c suÊt thµnh c«ng: <color=pink>"..xacsuat.."%")
			end
		else
			newitem = AddItemPrama(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17)
			Msg2SubWorld("<color=yellow>"..GetName().." c­êng hãa ["..GetNameItemBox(newitem).."] thÊt b¹i, xin chia buån.......")
			Msg2Player("X¸c suÊt thµnh c«ng: <color=pink>"..xacsuat.."%")
		end
	else
		Talk(1,"","Nguyªn liÖu kh«ng ®ñ, vui lßng kiÓm tra l¹i ")
	end
end
end


function tinhluyen1()
SayNew("<color=green>Thî RÌn<color> Cã 2 c¸ch tinh luyÖn §å Phæ Hoµng Kim ",3,
"Dïng Hoµng Kim M«n Ph¸i tinh luyÖn /tinhluyen2",
"Dïng M·nh Trang bÞ Hoµng Kim tinh luyÖn /tinhluyen3",
"Tho¸t./no")
end
function tinhluyen3()
SayNew("§Ó ë hµnh trang <color=yellow>6 M·nh Trang bÞ Hoµng Kim BÊt Kú + 500 v¹n<color>, sau khi Tinh LuyÖn b»ng M·nh Trang bÞ Hoµng Kim sÏ t¹o ra 1 §å Phæ NgÉu Nhiªn. <color=green>X¸c suÊt: 50% thµnh c«ng<color>. ThÊt b¹i: <color=red>MÊt toµn bé nguyªn liÖu",2,
"Ta ®ång ý  tinh luyÖn/tinhluyen4",
"Tho¸t./no")
end
function tinhluyen4()
dem = 0
for i=207,242 do 
dem = dem + GetItemCount(i)
end
for i = 383,400 do 
dem = dem + GetItemCount(i)
end

if dem == 6 then
	if GetCash() >= 5000000 then
		Pay(5000000)
		for i=207,242 do 
			for k=1,GetItemCount(i) do
				DelItem(i)
			end
		end
		for i = 383,400 do 
			for k=1,GetItemCount(i) do
				DelItem(i)
			end
		end
		
		sx = random(100)
		if sx < 50 then 
			sx2 = random(1,9)
			if sx2 <= 6 then
				idxnew = AddEventItem(random(243,248))
				Msg2SubWorld("<color=yellow>Chóc mõng "..GetName().." tinh luyÖn thµnh c«ng "..GetNameItemBox(idxnew).."")
			elseif sx2 == 7 then
				idxnew = AddEventItem(250)
				Msg2SubWorld("<color=yellow>Chóc mõng "..GetName().." tinh luyÖn thµnh c«ng "..GetNameItemBox(idxnew).."")
			elseif sx2 == 8 and sx2 == 9 then
				idxnew = AddEventItem(random(336,337))
				Msg2SubWorld("<color=yellow>Chóc mõng "..GetName().." tinh luyÖn thµnh c«ng "..GetNameItemBox(idxnew).."")		
			end
		else
			Msg2SubWorld("Tinh luyÖn §å Phæ thÊt b¹i, "..GetName().." mÊt toµn bé nguyªn liÖu cña m×nh. Xin chia buån")
		end
		
	else
		Talk(1,"","B¹n kh«ng mang ®ñ 500 v¹n l­îng, kh«ng thÓ tinh luyÖn")
	end
else
	Talk(1,"","B¹n ®ang ®Ó ë hµnh trang "..dem.." / 6 M·nh Hoµng Kim, vui lßng ®Ó chÝnh x¸c sè l­îng ë hµnh trang råi Tinh LuyÖn")
end
end
function tinhluyen2()
OpenCheckItemBox("Tinh LuyÖn Hoµng Kim","H·y ®Æt 1 Trang bÞ Hoµng Kim M«n Ph¸i vµo ","oktinhluyen")
end

function oktinhluyen()
idxitem = GetIdxItemBoxUpdateItem3()

if idxitem == -1 then
Talk(1,"","Sè l­îng v­ît qu¸ 1 trang bÞ ")
Msg2Player("Lçi: Sè l­îng v­ît qu¸ 1 trang bÞ ")
return
end

if GetGenreItem(idxitem) ~= 0 then
Talk(1,"","VËt phÈm ®Æt vµo kh«ng ph¶i trang bÞ, kh«ng thÓ ®æi !")
Msg2Player("Lçi: VËt phÈm ®Æt vµo kh«ng ph¶i trang bÞ, kh«ng thÓ ®æi !")
return
end
if GetCash() < 5000000 then
Talk(1,"","Kh«ng ®ñ 500 v¹n l­îng, kh«ng thÓ ®æi !")
Msg2Player("Lçi: Kh«ng ®ñ 500 v¹n l­îng, kh«ng thÓ ®æi !")
return
end
loaiitem = 0
if GetDetailTypeItem(idxitem) == 4 and GetParticularItem(idxitem) >= 6 and   GetParticularItem(idxitem) <= 16 then
	loaiitem = 1
elseif GetDetailTypeItem(idxitem) == 8 and GetParticularItem(idxitem) >= 4 and   GetParticularItem(idxitem) <= 19 then
	loaiitem = 2
elseif GetDetailTypeItem(idxitem) == 6 and GetParticularItem(idxitem) >= 4 and   GetParticularItem(idxitem) <= 23 then
	loaiitem = 3
elseif GetDetailTypeItem(idxitem) == 9 and GetParticularItem(idxitem) >= 6 and   GetParticularItem(idxitem) <= 16 then
	loaiitem = 4
elseif GetDetailTypeItem(idxitem) == 5 and GetParticularItem(idxitem) >= 6 and   GetParticularItem(idxitem) <= 19 then
	loaiitem = 5
elseif (GetDetailTypeItem(idxitem) == 3 and GetParticularItem(idxitem) >= 7 and   GetParticularItem(idxitem) <= 28) or (GetDetailTypeItem(idxitem) == 3 and GetParticularItem(idxitem) == 37) then
	loaiitem = 6
elseif GetDetailTypeItem(idxitem) == 7 and GetParticularItem(idxitem) >= 16 and   GetParticularItem(idxitem) <= 26 then
	loaiitem = 7
elseif GetDetailTypeItem(idxitem) == 2 and GetParticularItem(idxitem) >= 33 and   GetParticularItem(idxitem) <= 49 then
	loaiitem = 8
end
timeitem = GetTimeItemIdx(idxitem)
levelitem = GetLevelItem(idxitem)
if levelitem ~= 1 then
Talk(1,"","ChØ tinh luyÖn trang bÞ Hoµng Kim M«n Ph¸i ch­a c­êng hãa ")
return
end
if timeitem ~= 1 and timeitem ~= 550324 then
Talk(1,"","§ang bÞ ®ang khãa b¶o hiÓm, kh«ng thÓ tinh luyÖn ")
return
end

if loaiitem ~= 0 then
	SetTimeItem(idxitem,0);
	DelEquipIdx(idxitem)
	Pay(5000000)
	if loaiitem == 1 then
		idxnew = AddEventItem(250)
		if timeitem == 550324 then
			SetBindItem(idxnew , 1)
		end
		Msg2SubWorld("Chóc mõng "..GetName().." tinh luyÖn thµnh c«ng <color=green>"..GetNameItemBox(idxnew).."")
	elseif loaiitem == 2 then
		idxnew = AddEventItem(246)
		if timeitem == 550324 then
			SetBindItem(idxnew , 1)
		end
		Msg2SubWorld("Chóc mõng "..GetName().." tinh luyÖn thµnh c«ng <color=green>"..GetNameItemBox(idxnew).."")
	elseif loaiitem == 3 then
		idxnew = AddEventItem(247)
		if timeitem == 550324 then
			SetBindItem(idxnew , 1)
		end
		Msg2SubWorld("Chóc mõng "..GetName().." tinh luyÖn thµnh c«ng <color=green>"..GetNameItemBox(idxnew).."")
	elseif loaiitem == 4 then
		idxnew = AddEventItem(337)
		if timeitem == 550324 then
			SetBindItem(idxnew , 1)
		end
		Msg2SubWorld("Chóc mõng "..GetName().." tinh luyÖn thµnh c«ng <color=green>"..GetNameItemBox(idxnew).."")	
	elseif loaiitem == 5 then
		idxnew = AddEventItem(248)
		if timeitem == 550324 then
			SetBindItem(idxnew , 1)
		end
		Msg2SubWorld("Chóc mõng "..GetName().." tinh luyÖn thµnh c«ng <color=green>"..GetNameItemBox(idxnew).."")	
	elseif loaiitem == 6 then
		idxnew = AddEventItem(336)
		if timeitem == 550324 then
			SetBindItem(idxnew , 1)
		end
		Msg2SubWorld("Chóc mõng "..GetName().." tinh luyÖn thµnh c«ng <color=green>"..GetNameItemBox(idxnew).."")	
	elseif loaiitem == 7 then
		idxnew = AddEventItem(244)
		if timeitem == 550324 then
			SetBindItem(idxnew , 1)
		end
		Msg2SubWorld("Chóc mõng "..GetName().." tinh luyÖn thµnh c«ng <color=green>"..GetNameItemBox(idxnew).."")	
	elseif loaiitem == 8 then
		idxnew = AddEventItem(245)
		if timeitem == 550324 then
			SetBindItem(idxnew , 1)
		end
		Msg2SubWorld("Chóc mõng "..GetName().." tinh luyÖn thµnh c«ng <color=green>"..GetNameItemBox(idxnew).."")	
	end
	
end
end

function thangcapmatna()
OpenCheckItemBox("Th¨ng CÊp MÆt N¹","H·y ®Æt 1 MÆt N¹ Hoµng Kim vµo ","okthangcapmatna")
end

function okthangcapmatna()
idxitem = GetIdxItemBoxUpdateItem3()

if idxitem == -1 then
Talk(1,"","Sè l­îng v­ît qu¸ 1 trang bÞ ")
Msg2Player("Lçi: Sè l­îng v­ît qu¸ 1 trang bÞ ")
return
end

if GetGenreItem(idxitem) ~= 0 then
Talk(1,"","VËt phÈm ®Æt vµo kh«ng ph¶i trang bÞ, kh«ng thÓ ®æi !")
Msg2Player("Lçi: VËt phÈm ®Æt vµo kh«ng ph¶i trang bÞ, kh«ng thÓ ®æi !")
return
end

if GetDetailTypeItem(idxitem) ~= 11 then
Talk(1,"","Trang bÞ ®Æt vµo kh«ng ph¶i lµ MÆt N¹, kh«ng thÓ th¨ng cÊp")
Msg2Player("Lçi: Trang bÞ ®Æt vµo kh«ng ph¶i lµ MÆt N¹, kh«ng thÓ th¨ng cÊp")
return
end

if GetLevelItem(idxitem) < 76 or GetLevelItem(idxitem) > 95 then
Talk(1,"","MÆt n¹ nµy kh«ng thÓ th¨ng cÊp, chØ th¨ng cÊp cho MÆt N¹ +1 vµ MÆt N¹ +2 ")
Msg2Player("MÆt n¹ nµy kh«ng thÓ th¨ng cÊp, chØ th¨ng cÊp cho MÆt N¹ +1 vµ MÆt N¹ +2 ")
return
end

levelitem = GetLevelItem(idxitem)
loaiitem = 0
if GetLevelItem(idxitem) >= 76 and GetLevelItem(idxitem) <= 85 then
loaiitem = 1
elseif GetLevelItem(idxitem) >= 86 and GetLevelItem(idxitem) <= 95 then
loaiitem = 2
end

if loaiitem == 1 then
	
	if GetCash() >= 5000000 then
		sx = random(1,100)
		Pay(5000000)
		if sx < 20 then
			Msg2SubWorld("<color=green>Xin chóc mõng, "..GetName().." th¨ng cÊp "..GetNameItemBox(idxitem).." thµnh c«ng !!!!!!")
			SetTimeItem(idxitem,0);
			DelEquipIdx(idxitem)
			AddItem(0,11,0,levelitem + 10, 0,0,0)
		else
			Msg2SubWorld("<color=yellow>Xin chia buån, "..GetName().." th¨ng cÊp "..GetNameItemBox(idxitem)..", X¸c suÊt 40% thÊt b¹i !!!!!!")
			SetTimeItem(idxitem,0);
			DelEquipIdx(idxitem)
			Talk(1,"","<color=red>Th¨ng cÊp thÊt b¹i !!!!!!!!!!!!")
		end
	else
	Talk(1,"","Kh«ng mang ®ñ 500 v¹n l­îng, kh«ng thÓ th¨ng cÊp")
	end
elseif loaiitem == 2 then
		if GetCash() >= 10000000 then
		sx = random(1,100)
		Pay(10000000)
		if sx < 20 then
			Msg2SubWorld("<color=green>Xin chóc mõng, "..GetName().." th¨ng cÊp "..GetNameItemBox(idxitem).." thµnh c«ng !!!!!!")
			SetTimeItem(idxitem,0);
			DelEquipIdx(idxitem)
			AddItem(0,11,0,levelitem + 10, 0,0,0)
		else
			Msg2SubWorld("<color=yellow>Xin chia buån, "..GetName().." th¨ng cÊp "..GetNameItemBox(idxitem).." X¸c suÊt 20% thÊt b¹i !!!!!!")
			SetTimeItem(idxitem,0);
			DelEquipIdx(idxitem)
			AddItem(0,11,0,levelitem - 10, 0,0,0)
			Talk(1,"","<color=red>Th¨ng cÊp thÊt b¹i !!!!!!!!!!!!")
		end
	else
	Talk(1,"","Kh«ng mang ®ñ 1000 v¹n l­îng, kh«ng thÓ th¨ng cÊp")
	end

end

end

function doianbanghm()
SayNew("<color=green>Thî RÌn:<color> Vui lßng chän tÝnh n¨ng: ",4,
"ChÕ t¹o An Bang Hoµn Mü /doianbanghm1",
"Th¨ng cÊp An Bang Hoµn Mü /thangcapabhm",
"GhÐp Ngò S¾c B¨ng Tinh /ghepngusac",
"Tho¸t./no")
end

function thangcapabhm()
OpenCheckItemBox("Th¨ng CÊp An Bang","H·y ®Æt 1 trang bÞ An Bang Hoµn Mü vµo ","thangcapabhm1")
end

function thangcapabhm1()
idxitem = GetIdxItemBoxUpdateItem3()

if idxitem == -1 then
Talk(1,"","Sè l­îng v­ît qu¸ 1 trang bÞ ")
Msg2Player("Lçi: Sè l­îng v­ît qu¸ 1 trang bÞ ")
return
end

if GetGenreItem(idxitem) ~= 0 then
Talk(1,"","VËt phÈm ®Æt vµo kh«ng ph¶i trang bÞ, kh«ng thÓ ®æi !")
Msg2Player("Lçi: VËt phÈm ®Æt vµo kh«ng ph¶i trang bÞ, kh«ng thÓ ®æi !")
return
end
if GetCash() < 1000000 then
Talk(1,"","Kh«ng ®ñ 100 v¹n l­îng, kh«ng thÓ ®æi !")
Msg2Player("Lçi: Kh«ng ®ñ 100 v¹n l­îng, kh«ng thÓ ®æi !")
return
end
if GetItemCount(333) == 0 then
Talk(1,"","Ng­¬i kh«ng mang theo Ngò S¾c B¨ng Tinh trong hµnh trang, kh«ng thÓ n©ng cÊp")
return
end
loaiitem = 0
if GetDetailTypeItem(idxitem) == 4 and GetParticularItem(idxitem) == 17 then
	loaiitem = 1
elseif GetDetailTypeItem(idxitem) == 3 and GetParticularItem(idxitem) == 29 then
	loaiitem = 2
elseif GetDetailTypeItem(idxitem) == 3 and GetParticularItem(idxitem) == 30 then
	loaiitem = 3
elseif GetDetailTypeItem(idxitem) == 9 and GetParticularItem(idxitem) == 17 then
	loaiitem = 4
end
detail = GetDetailTypeItem(idxitem)
particu = GetParticularItem(idxitem)
timeitem = GetTimeItemIdx(idxitem)
levelitem = GetLevelItem(idxitem)
if levelitem == 10 then
Talk(1,"","CÊp ®é ®¹t tèi ®a, kh«ng thÓ th¨ng cÊp")
return
end
if loaiitem ~= 0 then
	SetTimeItem(idxitem,0);
	DelEquipIdx(idxitem)
	DelItem(333)
	Pay(1000000)
	xacsuat = 0
	if levelitem <= 5 then
		xacsuat = 100
	elseif levelitem == 6 then
		xacsuat = 80
	elseif levelitem == 7 then
		xacsuat = 60
	elseif levelitem == 8 then
		xacsuat = 40
	elseif levelitem == 9 then
		xacsuat = 20
	end
		sx = random(1,100)
		if sx <= xacsuat then
			idxnew = AddItem(0,detail,particu,levelitem + 1,0,0,0)
			SetTimeItem(idxnew, timeitem)
			Msg2SubWorld(""..GetName().." chÕ t¹o thµnh c«ng <color=yellow>"..GetNameItemBox(idxnew).."")
		else
			Talk(1,"","Th¨ng cÊp thÊt b¹i. X¸c suÊt thµnh c«ng: <color=red>"..xacsuat.."%")
			idxnew = AddItem(0,detail,particu,levelitem,0,0,0)
		end
else
Talk(1,"","Trang bÞ ®Æt vµo kh«ng phï hîp, vui lßng kiÓm tra l¹i !")
end
end


function ghepngusac()
if GetItemCount(328) >= 1 and GetItemCount(329) >= 1 and GetItemCount(330) >= 1 and GetItemCount(331) >= 1 and GetItemCount(332) >= 1 then
	for i=328,332 do DelItem(i) end
	AddEventItem(333)
	Msg2Player("B¹n nhËn ®­îc 1 Ngò S¾c B¨ng Tinh")
	Talk(0,"")
else
	Talk(1,"","Nguyªn liÖu kh«ng ®ñ, vui lßng kiÓm tra l¹i\nNgò S¾c B¨ng Tinh = Kim B¨ng Tinh + Méc B¨ng Tinh + Thñy B¨ng Tinh + Háa B¨ng Tinh + Thæ B¨ng Tinh")
end
end
function doianbanghm1()
OpenCheckItemBox("§æi An Bang","H·y ®Æt 1 trang bÞ [§Þnh Thêi] An Bang vµo ","okdoianbanghm")
end

function okdoianbanghm()
idxitem = GetIdxItemBoxUpdateItem3()

if idxitem == -1 then
Talk(1,"","Sè l­îng v­ît qu¸ 1 trang bÞ ")
Msg2Player("Lçi: Sè l­îng v­ît qu¸ 1 trang bÞ ")
return
end

if GetGenreItem(idxitem) ~= 0 then
Talk(1,"","VËt phÈm ®Æt vµo kh«ng ph¶i trang bÞ, kh«ng thÓ ®æi !")
Msg2Player("Lçi: VËt phÈm ®Æt vµo kh«ng ph¶i trang bÞ, kh«ng thÓ ®æi !")
return
end
if GetCash() < 5000000 then
Talk(1,"","Kh«ng ®ñ 500 v¹n l­îng, kh«ng thÓ ®æi !")
Msg2Player("Lçi: Kh«ng ®ñ 500 v¹n l­îng, kh«ng thÓ ®æi !")
return
end
loaiitem = 0
if GetDetailTypeItem(idxitem) == 4 and GetParticularItem(idxitem) == 20 then
	loaiitem = 1
elseif GetDetailTypeItem(idxitem) == 3 and GetParticularItem(idxitem) == 38 then
	loaiitem = 2
elseif GetDetailTypeItem(idxitem) == 3 and GetParticularItem(idxitem) == 39 then
	loaiitem = 3
elseif GetDetailTypeItem(idxitem) == 9 and GetParticularItem(idxitem) == 20 then
	loaiitem = 4
end
timeitem = GetTimeItemIdx(idxitem)
if loaiitem ~= 0 then
	SetTimeItem(idxitem,0);
	DelEquipIdx(idxitem)
	Pay(5000000)
	if loaiitem == 1 then
		idxnew = AddItem(0,4,17,1,0,0,0)
		SetTimeItem(idxnew, timeitem)
		Msg2SubWorld(""..GetName().." chÕ t¹o thµnh c«ng <color=yellow>"..GetNameItemBox(idxnew).."")
	elseif loaiitem == 2 then
		idxnew = AddItem(0,3,29,1,0,0,0)
		SetTimeItem(idxnew, timeitem)
		Msg2SubWorld(""..GetName().." chÕ t¹o thµnh c«ng <color=yellow>"..GetNameItemBox(idxnew).."")
	elseif loaiitem == 3 then
		idxnew = AddItem(0,3,30,1,0,0,0)
		SetTimeItem(idxnew, timeitem)
		Msg2SubWorld(""..GetName().." chÕ t¹o thµnh c«ng <color=yellow>"..GetNameItemBox(idxnew).."")
	elseif loaiitem == 4 then
		idxnew = AddItem(0,9,17,1,0,0,0)
		SetTimeItem(idxnew, timeitem)
		Msg2SubWorld(""..GetName().." chÕ t¹o thµnh c«ng <color=yellow>"..GetNameItemBox(idxnew).."")
	end
else
Talk(1,"","Trang bÞ ®Æt vµo kh«ng phï hîp, vui lßng kiÓm tra l¹i !")
end

end


function phanramanh2()
SayNew("<color=green>Thî rÌn<color>: Ph©n r· trang bÞ Hoµng Kim M«n Ph¸i sÏ nhËn ®­îc <color=red>4 M·nh Hoµng Kim NgÉu Nhiªn<color>\n<color=yellow>Tiªu hao: 1 M·nh Hoµng Kim<color>.\nNg­¬i cã ch¾c ch¾n muèn ph©n r· kh«ng?",2,
"Ta muèn Ph©n R· /phanramanh",
"Tho¸t./no")
end
function inlogphanra(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/PhanRaHKMP.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - "..thoigian.." \n");
end
closefile(LoginLog)
end


function phanramanh()
OpenCheckItemBox("Ph©n R· HKMP","H·y ®Æt 1 trang bÞ Hoµng Kim M«n Ph¸i vµo ","okphanramanh")
end

function okphanramanh()
	if CheckFreeBoxItem(0,10,5,1) == 0 then
		Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng 2 x 3 «, vui lßng kiÓm tra l¹i")
		return
	end
	
itemidx = LayIdxHkmpTrongHomDo()

if (itemidx == 0) then
Msg2Player("B¹n ch­a ®Æt trang bÞ cÇn thay ®æi vµo !")
Talk(1,"","<color=red>Lçi<color>: Ch­a ®Æt trang bÞ cÇn ph©n r· vµo !")
return
end

if (itemidx == -1) then
Msg2Player("B¹n kh«ng ®Æt vµo qu¸ 1 trang bÞ xanh !")
Talk(1,"","<color=red>Lçi<color>: Trang bÞ ®Æt vµo nhiÒu h¬n 1 trang bÞ !")
return
end

if (itemidx == -2 or itemidx == -4) then
Msg2Player("Trang bÞ ®Æt vµo kh«ng ph¶i trang bÞ Hoµng Kim M«n Ph¸i ")
Talk(1,"","<color=red>Lçi<color>: Trang bÞ ®Æt vµo kh«ng ph¶i trang bÞ Hoµng Kim M«n Ph¸i !")
return
end

if (itemidx == -3) then
Msg2Player("Trang bÞ ®Æt vµo ®· khãa vÜnh viÔn, kh«ng thÓ ph©n r· ")
Talk(1,"","<color=red>Lçi<color>: Trang bÞ ®Æt vµo ®· khãa vÜnh viÔn, kh«ng thÓ ph©n r·  !")
return
end

	Msg2Player("Ph©n r· thµnh c«ng !")
	SetTimeItem(itemidx,0);
	Msg2SubWorld("<color=yellow>- "..GetName().." ph©n r· thµnh c«ng "..GetNameItemBox(itemidx).."")
	inlogphanra(""..GetAccount().." - "..GetName().." - "..GetNameItemBox(itemidx).."")
	DelEquipIdx(itemidx)
if GetIdxItemBoxUpdateItem() == 0 then
	ngaunhien = RandomNew(367,371)
	for i=367,371 do 
	if i ~= ngaunhien then
		AddEventItem(i)
	end
	end
	
end
end



function ghepmanhhk()
SayNew("<color=green>Thî rÌn<color> Chän lo¹i R­¬ng muèn ghÐp:",3,
"R­¬ng Hoµng Kim /ghepmanhhk1",
"R­¬ng B¹ch Kim /ghepmanhhk1",
"Tho¸t./no")
end


function ghepmanhhk1(nsel)
i = nsel + 1
if i == 1 then
SayNew("<color=green>Thî rÌn<color>:\n<color=yellow>R­¬ng Hoµng Kim = 5 M·nh Hoµng Kim + 2 Kim Nguyªn B¶o<color>\n<color=red>Sö dông:<color> Më ra nhËn ®­îc 1 HKMP ngÉu nhiªn c¸c ph¸i\nNg­¬i ch¾c ch¾n muèn ghÐp chø?",2,
"Ta muèn ghÐp R­¬ng Hoµng Kim /ghepmanhhk2",
"Tho¸t./no")
elseif i == 2 then
SayNew("<color=green>Thî rÌn<color>:\n<color=yellow>R­¬ng B¹ch Kim = 5 M·nh Hoµng Kim + 7 Kim Nguyªn B¶o<color>\n<color=red>Sö dông:<color> Më ra nhËn ®­îc 1 HKMP ngÉu nhiªn theo ph¸i cña m×nh\nNg­¬i ch¾c ch¾n muèn ghÐp chø?",2,
"Ta muèn ghÐp R­¬ng Hoµng Kim /ghepmanhhk3",
"Tho¸t./no")
end
end

function ghepmanhhk2()
sl1 = GetItemCount(367)
sl2 = GetItemCount(368)
sl3 = GetItemCount(369)
sl4 = GetItemCount(370)
sl5 = GetItemCount(371)
knb = GetItemCount(17)
if sl1 >= 1 and sl2 >= 1 and sl3 >= 1 and sl4 >= 1 and sl5 >= 1 and knb >= 2 then
	for p=367,371 do DelItem(p) end
	for p=1,2 do DelItem(17) end
	if GetItemCount(367) == sl1 - 1 and GetItemCount(368) == sl2 - 1 and GetItemCount(369) == sl3 - 1 and GetItemCount(370) == sl4 - 1 and GetItemCount(371) == sl5 - 1 and GetItemCount(17) == knb - 2 then
		AddEventItem(365)
		Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." chÕ t¹o thµnh c«ng <color=yellow>R­¬ng Hoµng Kim")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Nguyªn liÖu kh«ng ®ñ, vui lßng kiÓm tra l¹i !")
end
end


function ghepmanhhk3()
sl1 = GetItemCount(367)
sl2 = GetItemCount(368)
sl3 = GetItemCount(369)
sl4 = GetItemCount(370)
sl5 = GetItemCount(371)
knb = GetItemCount(17)
if sl1 >= 1 and sl2 >= 1 and sl3 >= 1 and sl4 >= 1 and sl5 >= 1 and knb >= 7 then
	for p=367,371 do DelItem(p) end
	for p=1,7 do DelItem(17) end
	if GetItemCount(367) == sl1 - 1 and GetItemCount(368) == sl2 - 1 and GetItemCount(369) == sl3 - 1 and GetItemCount(370) == sl4 - 1 and GetItemCount(371) == sl5 - 1 and GetItemCount(17) == knb - 7 then
		AddEventItem(366)
		Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." chÕ t¹o thµnh c«ng <bclr=water>R­¬ng B¹ch Kim")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Nguyªn liÖu kh«ng ®ñ, vui lßng kiÓm tra l¹i !")
end
end


function ghepmanh_new()
SayNew("<color=green>Thî rÌn<color> Chän lo¹i trang bÞ cÇn ghÐp ",10,
"Thó C­ìi 90 /ghepmanh_new1",
"Thó C­ìi XÝch Thè /ghepmanh_new1",
"Thó C­ìi ChiÕu D¹ /ghepmanh_new1",
"Thó C­ìi Phi V©n /ghepmanh_new1",
"D©y ChuyÒn An Bang /ghepmanh_new1",
"NhÉn Kª HuyÕt /ghepmanh_new1",
"NhÉn Cóc Hoa/ghepmanh_new1",
"Ngäc Béi An Bang/ghepmanh_new1",
"Trang bÞ §Þnh Quèc/ghepmanh_new1",
"Tho¸t./no")
end

function inlog2(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/GhepManhTrangBi.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function ghepmanh_new1(nsel)
if CheckFreeBoxItem(0,10,5,1) == 0 then
	Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng 2 x 3 «, vui lßng kiÓm tra l¹i")
	return
	end

i = nsel + 1
if i == 1 then
		nl1 = 273
		nl2 = 274
		nl3 = 275
		cash = 1000000
		sl1 = GetItemCount(nl1)
		sl2 = GetItemCount(nl2)
		sl3 = GetItemCount(nl3)
		gold = GetCash()
		if GetItemCount(nl1) >= 1 and GetItemCount(nl2) >= 1 and GetItemCount(nl3) >= 1 and GetCash() >= cash then
			DelItem(nl1)
			DelItem(nl2)
			DelItem(nl3)
			Pay(cash)
			if GetItemCount(nl1) == sl1 - 1 and GetItemCount(nl2) == sl2 - 1 and GetItemCount(nl3) == sl3 - 1 and GetCash() == gold - cash then
				sx = random(1,3)
				if sx == 1 then
					AddItem(0,10,5,1,0,0,0)
				elseif sx == 2 then
					AddItem(0,10,5,3,0,0,0)
				elseif sx == 3 then
					AddItem(0,10,5,4,0,0,0)
				end
				Msg2Player("Chóc mõng b¹n chÕ t¹o thµnh c«ng Thó C­ìi 90")
				inlog2("Thu Cuoi 90: "..GetAccount().." - "..GetName().." - "..GetLevel().."")
				Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." ghÐp thµnh c«ng <color=yellow>Thó C­ìi 90")
			else
				Talk(1,"","hack ha em")
			end
		else	
			Talk(1,"","Nguyªn liÖu kh«ng ®ñ, vui lßng kiÓm tra l¹i !")
		end
elseif i == 2 then
		nl1 = 273
		nl2 = 274
		nl3 = 275
		nl4 = 276
		cash = 1000000
		sl1 = GetItemCount(nl1)
		sl2 = GetItemCount(nl2)
		sl3 = GetItemCount(nl3)
		sl4 = GetItemCount(nl4)
		gold = GetCash()
		if GetItemCount(nl1) >= 1 and GetItemCount(nl2) >= 1 and GetItemCount(nl3) >= 1 and GetItemCount(nl4) >= 1 and GetCash() >= cash then
			DelItem(nl1)
			DelItem(nl2)
			DelItem(nl3)
			DelItem(nl4)
			Pay(cash)
			if GetItemCount(nl1) == sl1 - 1 and GetItemCount(nl2) == sl2 - 1 and GetItemCount(nl3) == sl3 - 1 and GetItemCount(nl4) == sl4 - 1 and GetCash() == gold - cash then
					AddItem(0,10,5,2,0,0,0)
				Msg2Player("Chóc mõng b¹n chÕ t¹o thµnh c«ng XÝch Thè")
				inlog2("Xich Tho: "..GetAccount().." - "..GetName().." - "..GetLevel().."")
				Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." ghÐp thµnh c«ng <color=yellow>XÝch Thè ")
			else
				Talk(1,"","hack ha em")
			end
		else	
			Talk(1,"","Nguyªn liÖu kh«ng ®ñ, vui lßng kiÓm tra l¹i !")
		end
elseif i == 3 then
		nl1 = 273
		nl2 = 274
		nl3 = 275
		nl4 = 276
		nl5 = 277
		cash = 1000000
		sl1 = GetItemCount(nl1)
		sl2 = GetItemCount(nl2)
		sl3 = GetItemCount(nl3)
		sl4 = GetItemCount(nl4)
		sl5 = GetItemCount(nl5)
		gold = GetCash()
		if GetItemCount(nl1) >= 1 and GetItemCount(nl2) >= 1 and GetItemCount(nl3) >= 1 and GetItemCount(nl4) >= 1 and GetItemCount(nl5) >= 1 and GetCash() >= cash then
			DelItem(nl1)
			DelItem(nl2)
			DelItem(nl3)
			DelItem(nl4)
			DelItem(nl5)
			Pay(cash)
			if GetItemCount(nl1) == sl1 - 1 and GetItemCount(nl2) == sl2 - 1 and GetItemCount(nl3) == sl3 - 1 and GetItemCount(nl4) == sl4 - 1 and GetItemCount(nl5) == sl5 - 1 and GetCash() == gold - cash then
				AddItem(0,10,5,5,0,0,0)
				Msg2Player("Chóc mõng b¹n chÕ t¹o thµnh c«ng ChiÕu D¹ Ngäc S­ Tö ")
				inlog2("Chieu Da: "..GetAccount().." - "..GetName().." - "..GetLevel().."")
				Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." ghÐp thµnh c«ng <color=yellow>ChiÕu D¹ Ngäc S­ Tö ")
			else
				Talk(1,"","hack ha em")
			end
		else	
			Talk(1,"","Nguyªn liÖu kh«ng ®ñ, vui lßng kiÓm tra l¹i !")
		end
elseif i == 4 then
		nl1 = 278
		nl2 = 279
		nl3 = 280
		nl4 = 281
		nl5 = 282
		cash = 1000000
		sl1 = GetItemCount(nl1)
		sl2 = GetItemCount(nl2)
		sl3 = GetItemCount(nl3)
		sl4 = GetItemCount(nl4)
		sl5 = GetItemCount(nl5)
		gold = GetCash()
		if GetItemCount(nl1) >= 1 and GetItemCount(nl2) >= 1 and GetItemCount(nl3) >= 1 and GetItemCount(nl4) >= 1 and GetItemCount(nl5) >= 1 and GetCash() >= cash then
			DelItem(nl1)
			DelItem(nl2)
			DelItem(nl3)
			DelItem(nl4)
			DelItem(nl5)
			Pay(cash)
			if GetItemCount(nl1) == sl1 - 1 and GetItemCount(nl2) == sl2 - 1 and GetItemCount(nl3) == sl3 - 1 and GetItemCount(nl4) == sl4 - 1 and GetItemCount(nl5) == sl5 - 1 and GetCash() == gold - cash then
				AddItem(0,10,8,1,0,0,0)
				Msg2Player("Chóc mõng b¹n chÕ t¹o thµnh c«ng Phi V©n ")
				inlog2("Phi Van: "..GetAccount().." - "..GetName().." - "..GetLevel().."")
				Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." ghÐp thµnh c«ng <color=yellow>Phi V©n ")
			else
				Talk(1,"","hack ha em")
			end
		else	
			Talk(1,"","Nguyªn liÖu kh«ng ®ñ, vui lßng kiÓm tra l¹i !")
		end		
elseif i == 5 then
		nl1 = 283
		nl2 = 284
		nl3 = 285
		nl4 = 286
		nl5 = 287
		cash = 10000000
		sl1 = GetItemCount(nl1)
		sl2 = GetItemCount(nl2)
		sl3 = GetItemCount(nl3)
		sl4 = GetItemCount(nl4)
		sl5 = GetItemCount(nl5)
		gold = GetCash()
		if GetItemCount(nl1) >= 1 and GetItemCount(nl2) >= 1 and GetItemCount(nl3) >= 1 and GetItemCount(nl4) >= 1 and GetItemCount(nl5) >= 1 and GetCash() >= cash then
			DelItem(nl1)
			DelItem(nl2)
			DelItem(nl3)
			DelItem(nl4)
			DelItem(nl5)
			Pay(cash)
			if GetItemCount(nl1) == sl1 - 1 and GetItemCount(nl2) == sl2 - 1 and GetItemCount(nl3) == sl3 - 1 and GetItemCount(nl4) == sl4 - 1 and GetItemCount(nl5) == sl5 - 1 and GetCash() == gold - cash then
				AddItem(0,4,3,random(2,4),0,0,0)
				Msg2Player("Chóc mõng b¹n chÕ t¹o thµnh c«ng An Bang B¨ng Tinh Th¹ch H¹ng Liªn")
				inlog2("An Bang Day Chuyen: "..GetAccount().." - "..GetName().." - "..GetLevel().."")
				Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." ghÐp thµnh c«ng <color=yellow>An Bang B¨ng Tinh Th¹ch H¹ng Liªn")
			else
				Talk(1,"","hack ha em")
			end
		else	
			Talk(1,"","Nguyªn liÖu kh«ng ®ñ, vui lßng kiÓm tra l¹i !")
		end			
elseif i == 6 then
		nl1 = 293
		nl2 = 294
		nl3 = 295
		nl4 = 296
		nl5 = 297
		cash = 10000000
		sl1 = GetItemCount(nl1)
		sl2 = GetItemCount(nl2)
		sl3 = GetItemCount(nl3)
		sl4 = GetItemCount(nl4)
		sl5 = GetItemCount(nl5)
		gold = GetCash()
		if GetItemCount(nl1) >= 1 and GetItemCount(nl2) >= 1 and GetItemCount(nl3) >= 1 and GetItemCount(nl4) >= 1 and GetItemCount(nl5) >= 1 and GetCash() >= cash then
			DelItem(nl1)
			DelItem(nl2)
			DelItem(nl3)
			DelItem(nl4)
			DelItem(nl5)
			Pay(cash)
			if GetItemCount(nl1) == sl1 - 1 and GetItemCount(nl2) == sl2 - 1 and GetItemCount(nl3) == sl3 - 1 and GetItemCount(nl4) == sl4 - 1 and GetItemCount(nl5) == sl5 - 1 and GetCash() == gold - cash then
				AddItem(0,3,4,random(2,4),0,0,0)
				Msg2Player("Chóc mõng b¹n chÕ t¹o thµnh c«ng An Bang Kª HuyÕt Th¹ch Giíi ChØ ")
				inlog2("An Bang Ke Huyet: "..GetAccount().." - "..GetName().." - "..GetLevel().."")
				Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." ghÐp thµnh c«ng <color=yellow>An Bang Kª HuyÕt Th¹ch Giíi ChØ ")
			else
				Talk(1,"","hack ha em")
			end
		else	
			Talk(1,"","Nguyªn liÖu kh«ng ®ñ, vui lßng kiÓm tra l¹i !")
		end			
elseif i == 7 then
		nl1 = 288
		nl2 = 289
		nl3 = 290
		nl4 = 291
		nl5 = 292
		cash = 10000000
		sl1 = GetItemCount(nl1)
		sl2 = GetItemCount(nl2)
		sl3 = GetItemCount(nl3)
		sl4 = GetItemCount(nl4)
		sl5 = GetItemCount(nl5)
		gold = GetCash()
		if GetItemCount(nl1) >= 1 and GetItemCount(nl2) >= 1 and GetItemCount(nl3) >= 1 and GetItemCount(nl4) >= 1 and GetItemCount(nl5) >= 1 and GetCash() >= cash then
			DelItem(nl1)
			DelItem(nl2)
			DelItem(nl3)
			DelItem(nl4)
			DelItem(nl5)
			Pay(cash)
			if GetItemCount(nl1) == sl1 - 1 and GetItemCount(nl2) == sl2 - 1 and GetItemCount(nl3) == sl3 - 1 and GetItemCount(nl4) == sl4 - 1 and GetItemCount(nl5) == sl5 - 1 and GetCash() == gold - cash then
				AddItem(0,3,3,random(2,4),0,0,0)
				Msg2Player("Chóc mõng b¹n chÕ t¹o thµnh c«ng An Bang Cóc Hoa Th¹ch ChØ Hoµn")
				inlog2("An Bang Cuc HOa: "..GetAccount().." - "..GetName().." - "..GetLevel().."")
				Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." ghÐp thµnh c«ng <color=yellow>An Bang Cóc Hoa Th¹ch ChØ Hoµn")
			else
				Talk(1,"","hack ha em")
			end
		else	
			Talk(1,"","Nguyªn liÖu kh«ng ®ñ, vui lßng kiÓm tra l¹i !")
		end	
elseif i == 8 then
		nl1 = 298
		nl2 = 299
		nl3 = 300
		nl4 = 301
		nl5 = 302
		cash = 10000000
		sl1 = GetItemCount(nl1)
		sl2 = GetItemCount(nl2)
		sl3 = GetItemCount(nl3)
		sl4 = GetItemCount(nl4)
		sl5 = GetItemCount(nl5)
		gold = GetCash()
		if GetItemCount(nl1) >= 1 and GetItemCount(nl2) >= 1 and GetItemCount(nl3) >= 1 and GetItemCount(nl4) >= 1 and GetItemCount(nl5) >= 1 and GetCash() >= cash then
			DelItem(nl1)
			DelItem(nl2)
			DelItem(nl3)
			DelItem(nl4)
			DelItem(nl5)
			Pay(cash)
			if GetItemCount(nl1) == sl1 - 1 and GetItemCount(nl2) == sl2 - 1 and GetItemCount(nl3) == sl3 - 1 and GetItemCount(nl4) == sl4 - 1 and GetItemCount(nl5) == sl5 - 1 and GetCash() == gold - cash then
				AddItem(0,9,3,random(2,4),0,0,0)
				Msg2Player("Chóc mõng b¹n chÕ t¹o thµnh c«ng An Bang §iÒn Hoµng Th¹ch Ngäc Béi")
				inlog2("Ngoc Boi: "..GetAccount().." - "..GetName().." - "..GetLevel().."")
				Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." ghÐp thµnh c«ng <color=yellow>An Bang §iÒn Hoµng Th¹ch Ngäc Béi")
			else
				Talk(1,"","hack ha em")
			end
		else	
			Talk(1,"","Nguyªn liÖu kh«ng ®ñ, vui lßng kiÓm tra l¹i !")
		end	
elseif i == 9 then
		nl1 = 303
		nl2 = 304
		nl3 = 305
		cash = 1000000
		sl1 = GetItemCount(nl1)
		sl2 = GetItemCount(nl2)
		sl3 = GetItemCount(nl3)
		gold = GetCash()
		if GetItemCount(nl1) >= 1 and GetItemCount(nl2) >= 1 and GetItemCount(nl3) >= 1  and GetCash() >= cash then
			DelItem(nl1)
			DelItem(nl2)
			DelItem(nl3)
			Pay(cash)
			if GetItemCount(nl1) == sl1 - 1 and GetItemCount(nl2) == sl2 - 1 and GetItemCount(nl3) == sl3 - 1  and GetCash() == gold - cash then
				vt = random(1,5)
				if vt == 1 then
					idxitem = AddItem(0,7,15,1,0,0,0)
				elseif vt == 2 then
					idxitem = AddItem(0,2,30,1,0,0,0)
				elseif vt == 3 then
					idxitem = AddItem(0,6,3,1,0,0,0)
				elseif vt == 4 then
					idxitem = AddItem(0,5,5,1,0,0,0)
				elseif vt == 5 then
					idxitem = AddItem(0,8,3,1,0,0,0)
				end
				Msg2Player("Chóc mõng b¹n chÕ t¹o thµnh c«ng "..GetNameItemBox(idxitem).."")
				inlog2("Dinh Quoc: "..GetAccount().." - "..GetName().." - "..GetLevel().." - IDX: "..vt.."")
				Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." ghÐp thµnh c«ng <color=yellow>"..GetNameItemBox(idxitem).."")
			else
				Talk(1,"","hack ha em")
			end
		else	
			Talk(1,"","Nguyªn liÖu kh«ng ®ñ, vui lßng kiÓm tra l¹i !")
		end			
else
Talk(1,"","Chøc n¨ng ch­a cËp nhËt, liªn hÖ Admin ®Ó xö lý !")
end
end
function thangcapxxx()
Msg2Player("<color=yellow>Chó ý: TÝnh n¨ng kh«ng ¸p dông cho trang bÞ TÝm, nÕu sö dông bÞ mÊt ®å sÏ kh«ng chÞu tr¸ch nhiÖm")
SayNew("<color=green>Thî rÌn<color> Ng­¬i cÇn ta gióp g×? ",5,
	"Th¨ng CÊp Trang BÞ Xanh/thangcap",
	"H¹ CÊp Trang BÞ Xanh/hacap",
	"Thay §æi Trang BÞ/thaydoitrangbi",
	"T×m hiÓu thªm tÝnh n¨ng c­êng hãa /timhieuch",
	"Tho¸t./no")
end

function timhieuch()
Talk(3,"","TÝnh n¨ng Th¨ng CÊp sÏ t¨ng cÊp ®é trang bÞ, gi÷ nguyªn ngò hµnh vµ thuéc tÝnh","TÝnh n¨ng H¹ CÊp sÏ gi¶m cÊp ®é trang bÞ, gi÷ nguyªn ngò hµnh, thuéc tÝnh","TÝnh n¨ng Thay §æi sÏ ®æi lo¹i trang bÞ, gi÷ nguyªn Giíi TÝnh, §¼ng CÊp, Ngò Hµnh, Thuéc TÝnh")
end
function huypp()
SayNew("<color=green>Thî rÌn<color> B¹n cã ch¾c ch¾n muèn hñy <color=red>Phi Phong<color> víi gi¸ <color=yellow>500 v¹n<color> kh«ng? ",2,
"Ta muèn hñy phi phong /huypp1",
"Tho¸t./no")
end
function huypp1()

if GetCash() < 5000000 then
Talk(1,"","B¹n kh«ng mang ®ñ 500 v¹n, kh«ng thÓ hñy phi phong !")
return
end
Pay(5000000)
DelPhiPhong()
Msg2Player("B¹n ®· xãa Phi Phong thµnh c«n !")
end

function huytrangbi2()
SayNew("<color=green>Thî rÌn<color>: Chøc n¨ng nµy lµ <color=red>Xãa Bá Trang BÞ <color> chø kh«ng ph¶i lµ <color=yellow>Më Khãa Trang BÞ <color>. NÕu ®Æt item vµo sÏ mÊt vÜnh viÔn trang bÞ nµy vµ kh«ng phôc håi !",2,
"Ta ®ång ý hñy bá trang bÞ nµy /huytrangbi",
"Tho¸t./no")
end


function luyenthanh()
OpenCheckItemBox("LuyÖn Thµnh HuyÒn Tinh","H·y ®Æt trang søc vµo ®Ó ®æi thµnh HuyÒn tinh 1 ","okluyenthanh")
end

function okluyenthanh()
numx = GetAllItemCountInCheckBox()
if numx == 0 then
Talk(1,"","Kh«ng ®­îc ®Ó trèng !")
return
end

if CheckTrangSucInBox() == -1 then
Talk(1,"","Cã vËt phÈm kh«ng thuéc Trang Søc trong r­¬ng !")
return
end

if CheckTrangSucInBox()  == -2 then
Talk(1,"","Kh«ng ®­îc ®Ó trang bÞ ®Ýnh trong r­¬ng !")
return
end

DeleteAllItemInCheckBox()

for i=1,numx do AddEventItem(44) end
Msg2Player("B¹n nhËn ®­îc "..numx.." HuyÒn Tinh 1")
end


function huytrangbi()
OpenCheckItemBox("Hñy Bá Trang BÞ","H·y ®Æt 1 trang bÞ Khãa VÜnh ViÔn Vµo ","okhuytb")
end

function okhuytb()
idx = GetIdxItemBox2()
if (idx == -1) then
Msg2Player("Trong r­¬ng cã nhiÒu h¬n 1 vËt phÈm ")
elseif (idx == 0) then
Msg2Player("Trong r­¬ng kh«ng cã vËt phÈm nµo ")
elseif (idx == -2) then
Msg2Player("VËt phÈm ®Æt  vµo kh«ng ph¶i lµ trang bÞ ")
else
	if (GetTimeItemIdx(idx) == 550324) then
		ten = GetNameItemBox(idx)
		SetTimeItem(idx,0);
		DelEquipIdx(idx)
		Talk(1,"","§· hñy trang bÞ thµnh c«ng trang bÞ  <color=yellow>"..ten.." !")
		a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17 = GetPramaItemIdx(itemidx)
		inloghuytb(""..ten.." - TK: ["..GetAccount().."] - ["..GetName().."] - {"..a1..","..a2..","..a3..","..a4..","..a5..","..a6..","..a7..","..a8..","..a9..","..a10..","..a11..","..a12..","..a13..","..a14..","..a15..","..a16..","..a17.."},")	
		Msg2Player("B¹n ®· hñy thµnh c«ng trang bÞ <color=yellow>"..ten.." ")
	else	
		Talk(1,"","Trang bÞ ®Æt vµo kh«ng khãa vÜnh viÔn !")
	end
end
end



function ghepmanh()
OpenCheckItemBox("GhÐp M·nh Hoµng Kim","§Æt Nguyªn LiÖu GhÐp M·nh Hoµng Kim vµo","okghepmanh")
end

manghk = {
{243,"§å Phæ Vò KhÝ Hoµng Kim",189,"M·nh Vò KhÝ Hoµng KIm","VU KHI"},
{244,"§å Phæ Nãn Hoµng Kim",195, "M·nh Nãn Hoµng Kim","NON"},
{245,"§å Phæ ¸o Gi¸p Hoµng Kim",201, "M·nh ¸o Gi¸pHoµng Kim","AO GIAP"},
{246,"§å Phæ Bao Tay Hoµng Kim",207, "M·nh Bao Tay Hoµng Kim","BAO TAY"},
{247,"§å Phæ Th¾t L­ng Hoµng Kim",213, "M·nh Th¾t L­ng Hoµng Kim","THAT LUNG"},
{248,"§å Phæ Giµy Hoµng Kim",219, "M·nh Giµy Hoµng Kim","GIAY"},
{250,"§å Phæ D©y ChuyÒn Hoµng Kim",225, "M·nh D©y ChuyÒn Hoµng Kim","DAY CHUYEN"},
{251,"§å Phæ Ngäc Béi Hoµng Kim",231, "M·nh Ngäc Béi Hoµng Kim","NGOC BOI"},
{252,"§å Phæ NhÉn Hoµng Kim",237, "M·nh NhÉn Hoµng Kim","NHAN"},
}


function okghepmanh()
--Msg2Player(" "..checknum().." "..checkmanhtt().." "..idthienthach().." "..idmanh().." ")
if checknum() ~= 1 then
Talk(1,"","Sè l­îng M·nh Hoµng Kim kh«ng cã hoÆc nhiÒu h¬n 1, thÊt b¹i !")
return
end
if checkmanhtt() ~= 1 then
Talk(1,"","Sè l­îng M·nh Thiªn Th¹ch kh«ng cã hoÆc nhiÒu h¬n 1, thÊt b¹i !")
return
end
if idthienthach() == 0 then
Talk(1,"","Kh«ng cã m·nh thiªn th¹ch, thÊt b¹i !")
return
end
if idmanh() == 0 then
Talk(1,"","Kh«ng cã m·nh hoµng kim, thÊt b¹i !")
return
end
if demtt() == 0 then
Talk(1,"","Kh«ng cã Thñy Tinh, thÊt b¹i !")
return
end

tienvanyeucau = 10000000
a_id = idmanh()
b_id = idthienthach()
a = GetItemCountBox(manghk[a_id][1]) -- stt manh hk trong mang
b = GetItemCountBox(60+b_id) -- stt manh thien thach, theo cong thuc - 1
c = GetItemCountBox(50) -- so luong HT 7
d = GetItemCountBox(0) -- so luong VLMT
xacsuat = demtt() -- So luong thuy tinh dat vao

vang = GetCash()


if GetItemCountBox(0) == 1 and GetItemCountBox(50) == 1 and idthienthach() > 0 and idmanh() > 0 and GetCash() >= tienvanyeucau and demtt() > 0 then
	xs = random(1,100)
	if xs < (xacsuat*4) then
	DelItemBox(manghk[a_id][1])
	DelItemBox(b_id+60)
	DelItemBox(50)
	DelItemBox(0)
	Pay(tienvanyeucau)
	for k=1,GetItemCountBox(28) do DelItemBox(28) end
	for k=1,GetItemCountBox(29) do DelItemBox(29) end
	for k=1,GetItemCountBox(30) do DelItemBox(30) end
	
	--Msg2Player(" "..GetItemCountBox(manghk[a_id][1]).." "..GetItemCountBox(60+b_id).." "..GetItemCountBox(50).." "..GetItemCountBox(0).." "..GetItemCountBox(28).." "..GetItemCountBox(29).." "..GetItemCountBox(30).." "..GetCash().." ")
	if GetItemCountBox(manghk[a_id][1]) == a - 1 and GetItemCountBox(60+b_id) == b - 1 and GetItemCountBox(50) == c - 1 and GetItemCountBox(0) == d - 1 and GetItemCountBox(28) == 0 and GetItemCountBox(29) == 0 and GetItemCountBox(30) == 0 and GetCash() == vang-tienvanyeucau then
		AddEventItem(manghk[a_id][3]+b_id-1)
		inloghkmp("MANH: "..GetAccount().." - "..GetName().." - "..manghk[a_id][5].." - "..b_id.." ")
		Msg2Player("Chóc mõng b¹n chÕ t¹o thµnh c«ng<color=pink>"..manghk[a_id][2].." thø "..b_id.."/6 ")
		Msg2SubWorld("Chóc mõng [<color=yellow>"..GetName().."<color=red>] chÕ t¹o thµnh c«ng <color=pink>"..manghk[a_id][2].." thø "..b_id.."/6 ")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
	else
		inloghkmp("That Bai: "..GetAccount().." -  "..GetName().." - "..manghk[a_id][5].." -"..b_id.." - "..(xacsuat*5).."% ")
		for k=1,GetItemCountBox(28) do DelItemBox(28) end
		for k=1,GetItemCountBox(29) do DelItemBox(29) end
		for k=1,GetItemCountBox(30) do DelItemBox(30) end
		DelItemBox(50)
		Pay(tienvanyeucau)
		Msg2Player("ChÒ t¹o M·nh Hoµng Kim thÊt b¹i, b¹n bÞ mÊt hÕt Thñy Tinh vµ HuyÒn Tinh ")
		Msg2SubWorld("Xin chia buån cïng [<color=yellow>"..GetName().."<color=red>] ®· chÕ t¹o thÊt b¹i <color=pink>"..manghk[a_id][2].." thø "..b_id.."/6 ")
		
		Talk(1,"","<color=red>ChÒ t¹o M·nh Hoµng Kim thÊt b¹i, b¹n bÞ mÊt hÕt Thñy Tinh vµ HuyÒn Tinh")
	end
else
	Talk(1,"","Nguyªn liÖu ®Æt vµo kh«ng ®ñ: M·nh Hoµng Kim + M·nh Thiªn Th¹ch + VLMT + Thñy Tinh + HuyÒn Tinh 7 + 1000 v¹n  !")
end

end

function demtt()
num = 0
num = num + GetItemCountBox(28)
num = num + GetItemCountBox(29)
num = num + GetItemCountBox(30)
return num
end

function idthienthach()
if GetItemCountBox(61) == 1 then
return 1
elseif GetItemCountBox(62) == 1 then
return 2 
elseif GetItemCountBox(63) == 1 then
return 3
elseif GetItemCountBox(64) == 1 then
return 4 
elseif GetItemCountBox(65) == 1 then
return 5 
elseif GetItemCountBox(66) == 1 then
return 6 
else
return 0
end
end

function idmanh()
if GetItemCountBox(243) == 1 then
return 1
elseif GetItemCountBox(244) == 1 then
return 2
elseif GetItemCountBox(245) == 1 then
return 3
elseif GetItemCountBox(246) == 1 then
return 4
elseif GetItemCountBox(247) == 1 then
return 5
elseif GetItemCountBox(248) == 1 then
return 6
elseif GetItemCountBox(250) == 1 then
return 7
elseif GetItemCountBox(251) == 1 then
return 8
elseif GetItemCountBox(252) == 1 then
return 9
else
return 0
end
end


function checknum()
num = 0
for i=243,252 do
	if GetItemCountBox(i) > 0 then
		num = num + GetItemCountBox(i)
	end
end
return num
end
function checkmanhtt()
num = 0
for i=61,66 do
	if GetItemCountBox(i) > 0 then
		num = num + GetItemCountBox(i)
	end
end
return num
end



function thaydoitrangbi()
OpenCheckItemBox("Thay §æi Trang BÞ","H·y ®Æt 1 trang bÞ Xanh vµ 1 viªn Lam Thñy Tinh vµo ","okthaydoi")
end

function okthaydoi()
itemidx = GetIdxItemBoxUpdateItem()
numitem = GetIdxItemBoxQuestKey(28) -- Sua thanh Lam Thuy Tinh

if (itemidx == 0) then
Msg2Player("B¹n ch­a ®Æt trang bÞ cÇn thay ®æi vµo !")
Talk(1,"","<color=red>Lçi<color>: Ch­a ®Æt trang bÞ cÇn thay ®æi vµo !")
return
end

if (itemidx == -1) then
Msg2Player("B¹n kh«ng ®Æt vµo qu¸ 1 trang bÞ xanh !")
Talk(1,"","<color=red>Lçi<color>: Trang bÞ ®Æt vµo nhiÒu h¬n 1 trang bÞ !")
return
end

if (itemidx == -2) then
Msg2Player("Trang bÞ ®Æt vµo kh«ng ph¶i trang bÞ xanh ")
Talk(1,"","<color=red>Lçi<color>: Trang bÞ ®Æt vµo kh«ng ph¶i trang bÞ xanh !")
return
end


if (numitem == 0) then
Msg2Player("B¹n ch­a ®Æt nguyªn liÖu thay ®æi trang bÞ vµo !")
Talk(1,"","<color=red>Lçi<color>: Ch­a cã nguyªn liÖu thay ®æi trang bÞ!")
return
end

if (numitem == -1) then
Msg2Player("B¹n chØ cã thÓ ®Æt 1 nguyªn liÖu thay ®æi trang bÞ ")
Talk(1,"","<color=red>Lçi<color>: V­ît qu¸ sè l­îng yªu cÇu: 1 viªn Lam Thñy Tinh!")
return
end

if (numitem == -2) then
Msg2Player("Nguyªn liÖu ®Æt vµo kh«ng ph¶i Lam Thñy Tinh ")
Talk(1,"","<color=red>Lçi<color>: Nguyªn liÖu ®Æt vµo kh«ng ph¶i lµ Lam Thñy Tinh!")
return
end


if GetCash() < 100000 then
Talk(1,"","Thay ®æi trang bÞ mçi lÇn cÇn 10 v¹n !")
return
end



	tencu = GetNameItemBox(itemidx)
	a = GetDetailTypeItem(itemidx)
	b = GetParticularItem(itemidx)		
	c = GetLevelItem(itemidx)
	if a ~= 2 and a ~= 7 then
Msg2Player("ChØ ®­îc thay ®æi trang bÞ lµ Nãn hoÆc ¸o")
return
end    
	if (a == 2 and b == 28) then
		Msg2Player("Trang bÞ kÕt h«n kh«ng thÓ thay ®æi !")
		Talk(1,"","Trang bÞ kÕt h«n kh«ng thÓ thay ®æi !")
		return
	end
	
	if a == 2 then
		if (b >= 0 and b <= 6) or (b >= 14 and b <= 20) then
			sxb = random(1,2)
			if sxb == 1 then
				b = random(0,6)
			else
				b = random(14,20)
			end
		elseif (b >= 7 and b <= 13) or (b >= 21 and b <= 27) then
			sxb = random(1,2)
			if sxb == 1 then
				b = random(7,13)
			else
				b = random(21,27)
			end
		end
	elseif a == 7 then
		if (b >= 0 and b <= 6)  then
				b = random(0,6)
		elseif (b >= 7 and b <= 13) then
				b = random(7,13)
		end
	end
	d = GetSeriItem(itemidx)
	
	lucky1 = GetEquipMagicLucky(itemidx,1)
	lucky2 = GetEquipMagicLucky(itemidx,2)
	lucky3 = GetEquipMagicLucky(itemidx,3)
	lucky4 = GetEquipMagicLucky(itemidx,4)
	lucky5 = GetEquipMagicLucky(itemidx,5)
	lucky6 = GetEquipMagicLucky(itemidx,6)
	
	Level411 = GetEquipMagicLevel(itemidx,1)
	Id411 = GetEquipMagicId(itemidx,1)
	Level412 = GetEquipMagicLevel(itemidx,2)
	Id412 = GetEquipMagicId(itemidx,2)
	Level413 = GetEquipMagicLevel(itemidx,3)
	Id413 = GetEquipMagicId(itemidx,3)
	Level414 = GetEquipMagicLevel(itemidx,4) 
	Id414 = GetEquipMagicId(itemidx,4)
	Level415 = GetEquipMagicLevel(itemidx,5)
	Id415 = GetEquipMagicId(itemidx,5)
	Level416 = GetEquipMagicLevel(itemidx,6)
	Id416 = GetEquipMagicId(itemidx,6)
	random41 = GetEquipMagicRandomSeed(itemidx)
	mayman = GetItemBoxLucky(itemidx)

	--sx = random(1,120)
	DelEquipItemQuestKey(28) -- Sua thanh Luc Thuy Tinh
	--sxtinh =100 - c*10
--	if sxtinh > 50 then
	--sxtinh = 50
--	end 
	Pay(100000)

			Msg2SubWorld("Chóc mõng ®¹i hiÖp [<color=yellow>"..GetName().."<color=red>] ®· thay ®æi thµnh c«ng trang bÞ [<color=green>"..GetNameItemBox(itemidx).."")
		DelEquipIdx(itemidx)
		if GetIdxItemBoxUpdateItem() == 0 and GetIdxItemBoxQuestKey(28) == 0 then
			AddItemPrama(0,a,b,c,d,random41,Level411,Level412,Level413,Level414,Level415,Level416,1,mayman,8,2,0)
			inlogin("Thanh Cong: "..GetAccount().." - "..GetName().." - ("..a..","..b..","..c..","..d..","..random41..","..Level411..","..Level412..","..Level413..","..Level414..","..Level415..","..Level416.." "..mayman.." ")
		else
			a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17 = GetPramaItemIdx(itemidx)
			inlogin(""..GetAccount().." - "..GetName().." - ("..a..","..b..","..c..","..d..","..random41..","..Level411..","..Level412..","..Level413..","..Level414..","..Level415..","..Level416.." "..mayman.."")
			Talk(1,"","hack ha em")
		end
	--else
	--	inlogin("Thang cap That bai: "..GetAccount().." - "..GetName().." - "..(100 - c*10).."% ")
	--	Msg2Player("Th¨ng cÊp trang bÞ thÊt b¹i, x¸c suÊt th¨ng cÊp: <color=yellow>"..(100-c*10).."% ")
	--	Talk(1,"","Th¨ng cÊp trang bÞ thÊt b¹i, x¸c suÊt th¨ng cÊp: <color=yellow>"..(100-c*10).."% ")
	
	--end
end

function hacap()
OpenCheckItemBox("H¹ CÊp Trang BÞ","H·y ®Æt 1 trang bÞ Xanh vµ 1 viªn Lôc Thñy Tinh vµo ","okhahacap")
end

function okhahacap()
itemidx = GetIdxItemBoxUpdateItem()
numitem = GetIdxItemBoxQuestKey(30) -- Sua thanh Luc Thuy Tinh

if (itemidx == 0) then
Msg2Player("B¹n ch­a ®Æt trang bÞ cÇn th¨ng cÊp vµo !")
Talk(1,"","<color=red>Lçi<color>: Ch­a ®Æt trang bÞ cÇn th¨ng cÊp vµo !")
return
end

if (itemidx == -1) then
Msg2Player("B¹n kh«ng ®Æt vµo qu¸ 1 trang bÞ xanh !")
Talk(1,"","<color=red>Lçi<color>: Trang bÞ ®Æt vµo nhiÒu h¬n 1 trang bÞ !")
return
end

if (itemidx == -2) then
Msg2Player("Trang bÞ ®Æt vµo kh«ng ph¶i trang bÞ xanh ")
Talk(1,"","<color=red>Lçi<color>: Trang bÞ ®Æt vµo kh«ng ph¶i trang bÞ xanh !")
return
end


if (numitem == 0) then
Msg2Player("B¹n ch­a ®Æt nguyªn liÖu h¹ cÊp vµo !")
Talk(1,"","<color=red>Lçi<color>: Ch­a cã nguyªn liÖu h¹ cÊp!")
return
end

if (numitem == -1) then
Msg2Player("B¹n chØ cã thÓ ®Æt 1 nguyªn liÖu h¹ cÊp ")
Talk(1,"","<color=red>Lçi<color>: V­ît qu¸ sè l­îng yªu cÇu: 1 viªn Lôc Thñy Tinh!")
return
end

if (numitem == -2) then
Msg2Player("Nguyªn liÖu ®Æt vµo kh«ng ph¶i Lôc Thñy Tinh ")
Talk(1,"","<color=red>Lçi<color>: Nguyªn liÖu ®Æt vµo kh«ng ph¶i lµ Lôc Thñy Tinh!")
return
end


if GetCash() < 1000000 then
Talk(1,"","H¹ cÊp trang bÞ mçi lÇn cÇn 100 v¹n !")
return
end


	a = GetDetailTypeItem(itemidx)
	b = GetParticularItem(itemidx)		
	c = GetLevelItem(itemidx)
	
	if (a == 2 and b == 28) then
		Msg2Player("Trang bÞ kÕt h«n kh«ng thÓ h¹ cÊp !")
		Talk(1,"","Trang bÞ kÕt h«n kh«ng thÓ h¹ cÊp !")
		return
	end

	if c <= 1 then
	Msg2Player("Trang bÞ cña b¹n hiÖn t¹i kh«ng thÓ h¹ cÊp ®­îc n÷a")
	Talk(1,"","<color=red>Lçi<color>: Kh«ng thÓ h¹ cÊp trang bÞ cÊp 1!")
	return
	end

	d = GetSeriItem(itemidx)
	
	lucky1 = GetEquipMagicLucky(itemidx,1)
	lucky2 = GetEquipMagicLucky(itemidx,2)
	lucky3 = GetEquipMagicLucky(itemidx,3)
	lucky4 = GetEquipMagicLucky(itemidx,4)
	lucky5 = GetEquipMagicLucky(itemidx,5)
	lucky6 = GetEquipMagicLucky(itemidx,6)
	
	Level411 = GetEquipMagicLevel(itemidx,1)
	Id411 = GetEquipMagicId(itemidx,1)
	Level412 = GetEquipMagicLevel(itemidx,2)
	Id412 = GetEquipMagicId(itemidx,2)
	Level413 = GetEquipMagicLevel(itemidx,3)
	Id413 = GetEquipMagicId(itemidx,3)
	Level414 = GetEquipMagicLevel(itemidx,4) 
	Id414 = GetEquipMagicId(itemidx,4)
	Level415 = GetEquipMagicLevel(itemidx,5)
	Id415 = GetEquipMagicId(itemidx,5)
	Level416 = GetEquipMagicLevel(itemidx,6)
	Id416 = GetEquipMagicId(itemidx,6)
	random41 = GetEquipMagicRandomSeed(itemidx)
	mayman = GetItemBoxLucky(itemidx)

	--sx = random(1,120)
	DelEquipItemQuestKey(30) -- Sua thanh Luc Thuy Tinh
	--sxtinh =100 - c*10
--	if sxtinh > 50 then
	--sxtinh = 50
--	end 
	Pay(1000000)
--	if sx < sxtinh then
		Msg2Player("<color=yellow>Chóc mõng b¹n ®· h¹ cÊp thµnh c«ng trang bÞ [<color=green>"..GetNameItemBox(itemidx).."<color=yellow>] tõ cÊp "..c.." xuèng cÊp "..(c-1).." !")
		--if c >= 7 then
			Msg2SubWorld("Chóc mõng ®¹i hiÖp [<color=yellow>"..GetName().."<color=red>] ®· h¹ cÊp thµnh c«ng trang bÞ [<color=green>"..GetNameItemBox(itemidx).."<color=red>] tõ cÊp "..c.." xuèng cÊp "..(c-1).." !")
			AddGlobalCountNews("Chóc mõng ®¹i hiÖp [<color=yellow>"..GetName().."<color>] ®· h¹ cÊp thµnh c«ng trang bÞ [<color=green>"..GetNameItemBox(itemidx).."<color>] tõ cÊp "..c.." xuèng cÊp "..(c-1).." ! ",1)
		--end
		DelEquipIdx(itemidx)
		if GetIdxItemBoxUpdateItem() == 0 and GetIdxItemBoxQuestKey(30) == 0 then
			AddItemPrama(0,a,b,c-1,d,random41,Level411,Level412,Level413,Level414,Level415,Level416,1,mayman,8,2,0)
			inlogin("Thanh Cong: "..GetAccount().." - "..GetName().." - ("..a..","..b..","..c..","..d..","..random41..","..Level411..","..Level412..","..Level413..","..Level414..","..Level415..","..Level416.." "..mayman.." ")
		else
			a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17 = GetPramaItemIdx(itemidx)
			inlogin(""..GetAccount().." - "..GetName().." - ("..a..","..b..","..c..","..d..","..random41..","..Level411..","..Level412..","..Level413..","..Level414..","..Level415..","..Level416.." "..mayman.."")
			Talk(1,"","hack ha em")
		end
	--else
	--	inlogin("Thang cap That bai: "..GetAccount().." - "..GetName().." - "..(100 - c*10).."% ")
	--	Msg2Player("Th¨ng cÊp trang bÞ thÊt b¹i, x¸c suÊt th¨ng cÊp: <color=yellow>"..(100-c*10).."% ")
	--	Talk(1,"","Th¨ng cÊp trang bÞ thÊt b¹i, x¸c suÊt th¨ng cÊp: <color=yellow>"..(100-c*10).."% ")
	
	--end
end

function thangcap()
OpenCheckItemBox("Th¨ng CÊp Trang BÞ","H·y ®Æt 1 trang bÞ Xanh vµ 1 viªn Tö Thñy Tinh vµo ","okhaha")
end

function okhaha()
itemidx = GetIdxItemBoxUpdateItem()
numitem = GetIdxItemBoxQuestKey(29)

if (itemidx == 0) then
Msg2Player("B¹n ch­a ®Æt trang bÞ cÇn th¨ng cÊp vµo !")
Talk(1,"","<color=red>Lçi<color>: Ch­a ®Æt trang bÞ cÇn th¨ng cÊp vµo !")
return
end

if (itemidx == -1) then
Msg2Player("B¹n kh«ng ®Æt vµo qu¸ 1 trang bÞ xanh !")
Talk(1,"","<color=red>Lçi<color>: Trang bÞ ®Æt vµo nhiÒu h¬n 1 trang bÞ !")
return
end

if (itemidx == -2) then
Msg2Player("Trang bÞ ®Æt vµo kh«ng ph¶i trang bÞ xanh ")
Talk(1,"","<color=red>Lçi<color>: Trang bÞ ®Æt vµo kh«ng ph¶i trang bÞ xanh !")
return
end


if (numitem == 0) then
Msg2Player("B¹n ch­a ®Æt nguyªn liÖu th¨ng cÊp vµo !")
Talk(1,"","<color=red>Lçi<color>: Ch­a cã nguyªn liÖu th¨ng cÊp!")
return
end

if (numitem == -1) then
Msg2Player("B¹n chØ cã thÓ ®Æt 1 nguyªn liÖu th¨ng cÊp ")
Talk(1,"","<color=red>Lçi<color>: V­ît qu¸ sè l­îng yªu cÇu: 1 viªn Tö Thñy Tinh!")
return
end

if (numitem == -2) then
Msg2Player("Nguyªn liÖu ®Æt vµo kh«ng ph¶i Tö Thñy Tinh ")
Talk(1,"","<color=red>Lçi<color>: Nguyªn liÖu ®Æt vµo kh«ng ph¶i lµ Tö Thñy Tinh!")
return
end


if GetCash() < 100000 then
Talk(1,"","Th¨ng cÊp trang bÞ mçi lÇn cÇn 10 v¹n !")
return
end


	a = GetDetailTypeItem(itemidx)
	b = GetParticularItem(itemidx)		
	c = GetLevelItem(itemidx)
	
	if (a == 2 and b == 28) then
		Msg2Player("Trang bÞ kÕt h«n kh«ng thÓ th¨ng cÊp !")
		Talk(1,"","Trang bÞ kÕt h«n kh«ng thÓ th¨ng cÊp !")
		return
	end

	if c < 1 or c >= 10 then
	Msg2Player("Trang bÞ cña b¹n ®¹t cÊp tèi ®a, kh«ng thÓ th¨ng cÊp")
	Talk(1,"","<color=red>Lçi<color>: Kh«ng thÓ th¨ng cÊp trang bÞ cÊp 10!")
	return
	end

	d = GetSeriItem(itemidx)
	
	lucky1 = GetEquipMagicLucky(itemidx,1)
	lucky2 = GetEquipMagicLucky(itemidx,2)
	lucky3 = GetEquipMagicLucky(itemidx,3)
	lucky4 = GetEquipMagicLucky(itemidx,4)
	lucky5 = GetEquipMagicLucky(itemidx,5)
	lucky6 = GetEquipMagicLucky(itemidx,6)
	
	Level411 = GetEquipMagicLevel(itemidx,1)
	Id411 = GetEquipMagicId(itemidx,1)
	Level412 = GetEquipMagicLevel(itemidx,2)
	Id412 = GetEquipMagicId(itemidx,2)
	Level413 = GetEquipMagicLevel(itemidx,3)
	Id413 = GetEquipMagicId(itemidx,3)
	Level414 = GetEquipMagicLevel(itemidx,4) 
	Id414 = GetEquipMagicId(itemidx,4)
	Level415 = GetEquipMagicLevel(itemidx,5)
	Id415 = GetEquipMagicId(itemidx,5)
	Level416 = GetEquipMagicLevel(itemidx,6)
	Id416 = GetEquipMagicId(itemidx,6)
	random41 = GetEquipMagicRandomSeed(itemidx)
	mayman = GetItemBoxLucky(itemidx)

	sx = random(1,120)
	DelEquipItemQuestKey(29)
	sxtinh =100 - c*10
	if sxtinh > 50 then
	sxtinh = 50
	end 
	Pay(100000)
	if sx < sxtinh then
		Msg2Player("<color=yellow>Chóc mõng b¹n ®· th¨ng cÊp thµnh c«ng trang bÞ [<color=green>"..GetNameItemBox(itemidx).."<color=yellow>] tõ cÊp "..c.." lªn cÊp "..(c+1).." !")
		if c >= 7 then
			Msg2SubWorld("Chóc mõng ®¹i hiÖp [<color=yellow>"..GetName().."<color=red>] ®· th¨ng cÊp thµnh c«ng trang bÞ [<color=green>"..GetNameItemBox(itemidx).."<color=red>] tõ cÊp "..c.." lªn cÊp "..(c+1).." !")
			AddGlobalCountNews("Chóc mõng ®¹i hiÖp [<color=yellow>"..GetName().."<color>] ®· th¨ng cÊp thµnh c«ng trang bÞ [<color=green>"..GetNameItemBox(itemidx).."<color>] tõ cÊp "..c.." lªn cÊp "..(c+1).." ! ",1)
		end
		DelEquipIdx(itemidx)
		if GetIdxItemBoxUpdateItem() == 0 and GetIdxItemBoxQuestKey(29) == 0 then
			AddItemPrama(0,a,b,c+1,d,random41,Level411,Level412,Level413,Level414,Level415,Level416,1,mayman,8,2,0)
			inlogin("Thanh Cong: "..GetAccount().." - "..GetName().." - ("..a..","..b..","..c..","..d..","..random41..","..Level411..","..Level412..","..Level413..","..Level414..","..Level415..","..Level416.." "..mayman.." ")
		else
			a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17 = GetPramaItemIdx(itemidx)
			inlogin(""..GetAccount().." - "..GetName().." - ("..a..","..b..","..c..","..d..","..random41..","..Level411..","..Level412..","..Level413..","..Level414..","..Level415..","..Level416.." "..mayman.."")
			Talk(1,"","hack ha em")
		end
	else
		inlogin("Thang cap That bai: "..GetAccount().." - "..GetName().." - "..(100 - c*10).."% ")
		Msg2Player("Th¨ng cÊp trang bÞ thÊt b¹i, x¸c suÊt th¨ng cÊp: <color=yellow>"..(100-c*10).."% ")
		Talk(1,"","Th¨ng cÊp trang bÞ thÊt b¹i, x¸c suÊt th¨ng cÊp: <color=yellow>"..(100-c*10).."% ")
	
	end
end

function inloghuytb(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/HuyTrangBiKhoaVinhVien.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - "..thoigian.." \n");
end
closefile(LoginLog)
end

function inloghkmp(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/CheTaoHoangKimMonPhai.txt", "a");
if LoginLog then
write(LoginLog,""..string.."\n");
end
closefile(LoginLog)
end

function inlogprhkmp(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/PhanRaHoangKimMonPhai.txt", "a");
if LoginLog then
write(LoginLog,""..string.."\n");
end
closefile(LoginLog)
end

function inlogin(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/logchetao.txt", "a");
if LoginLog then
write(LoginLog,""..string.."\n");
end
closefile(LoginLog)
end


function giaotinthu()
	if GetTask(103) == 6 then
		SetTask(103,7)
		Talk(1,"","<color=green>Thî RÌn <color>: Ta ®· nhËn ®­îc tÝn th­, h·y nãi víi Ch­ëng M«n ng­¬i lµ ta sÏ cè g¾ng hÕt søc ®Ó gióp ®Ö tö cña ng­êi !")
		
		Msg2Player("<color=green>NhiÖm vô M«n Ph¸i: <color=red>H·y ®Õn gÆp B¸n Ngùa")
	end
end

function chetaohuyentinh()
OpenPGBoxItem()
end

function binhthuong()
w,x,y = GetWorldPos()
if w == 3 then
Sale(8)
elseif w == 15 then
Sale(10)
elseif w == 66 then
Sale(12)
elseif w == 17 then
Sale(14)
elseif w == 9 then
Sale(16)
else
Talk(1,"","HiÖn t¹i ta kh«ng më cöa hµng vò khÝ, ng­¬i h·y ®i thµnh thÞ kh¸c ®i nhÐ ")
end
end;

function no()
end













-------------------------------- EP HKMP-----------------------------------------------------



function ephkmp()
OpenCheckItemBox("ChÕ T¹o Hoµng Kim M«n Ph¸i","6 M¶nh HK + §å Phæ HK + MËt TÞch M«n Ph¸i + HT 8 + Thñy Tinh + 2000 v¹n","xacnhanephkmp")
end


function xacnhanephkmp()
num = 0
demsoluong = 0

if GetItemCountBox(51) ~= 1 then
Talk(1,"","Kh«ng cã HuyÒn Tinh 8, kh«ng thÓ chÕ t¹o !")
return
end
if GetItemCountBox(28) == 0 and GetItemCountBox(29) == 0 and GetItemCountBox(30) == 0 then
Talk(1,"","Kh«ng cã Thñy Tinh, kh«ng thÓ chÕ t¹o ")
return
end

if GetCash() < 20000000 then
Talk(1,"","Kh«ng cã ®ñ 2000 v¹n trong hµnh trang, kh«ng thÓ chÕ t¹o !")
return
end

for k=1,getn(manghkmp) do
if GetItemCountBox(manghkmp[k][6]) == 1 and GetItemCountBox(manghkmp[k][7]) == 1 then
	demsoluong = demsoluong + 1
end
end


if demsoluong == 0 then
Talk(1,"","Trang bÞ kh«ng tån t¹i, vui lßng kiÓm tra l¹i §å Phæ Hoµng Kim ®Æt vµo!")
return
end

if demsoluong == 1 then
for k=1,getn(manghkmp) do
if GetItemCountBox(manghkmp[k][6]) == 1 and GetItemCountBox(manghkmp[k][7]) == 1 then
	if CheckFreeBoxItem(manghkmp[k][2],manghkmp[k][3],manghkmp[k][4],manghkmp[k][5]) == 0 then
	Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng ®Ó chÕ t¹o trang bÞ <color=yellow>"..manghkmp[k][1].." ")
	return
	end
	a = GetItemCountBox(manghkmp[k][6])
	b = GetItemCountBox(manghkmp[k][6] + 1)
	c = GetItemCountBox(manghkmp[k][6] + 2)
	d = GetItemCountBox(manghkmp[k][6] + 3)
	e = GetItemCountBox(manghkmp[k][6] + 4)
	f = GetItemCountBox(manghkmp[k][6] + 5)
	mattich = checkmattich(manghkmp[k][7])
	nl1 = GetItemCountBox(mattich)
	nl2 = GetItemCountBox(51)
	nl3 = GetCash()
	nl4 = GetItemCountBox(manghkmp[k][7])
	nl5 = GetItemCountBox(28) + GetItemCountBox(29) + GetItemCountBox(30)
	if GetItemCountBox(manghkmp[k][6]) == 1 and GetItemCountBox(manghkmp[k][6] + 1) == 1 and GetItemCountBox(manghkmp[k][6] + 2) == 1 and GetItemCountBox(manghkmp[k][6] + 3) == 1 and GetItemCountBox(manghkmp[k][6] + 4) == 1 and GetItemCountBox(manghkmp[k][6] + 5) == 1 and GetItemCountBox(mattich) == 1 and GetItemCountBox(manghkmp[k][7]) == 1 and GetItemCountBox(51) == 1 and nl5 > 0 and GetCash() >= 20000000 then
		xacsuat = random(1,100)
		if xacsuat < (nl5*5-10) then
		--Msg2Player("Thµnh Cong: "..(nl5*5).."% ")
		DelItemBox(manghkmp[k][6]) 		
		DelItemBox(manghkmp[k][6] + 1)
		DelItemBox(manghkmp[k][6] + 2)
		DelItemBox(manghkmp[k][6] + 3)
		DelItemBox(manghkmp[k][6] + 4)
		DelItemBox(manghkmp[k][6] + 5)
		DelItemBox(mattich)
		DelItemBox(51)
		DelItemBox(manghkmp[k][7])
		Pay(20000000)
		for i=1,GetItemCountBox(28) do DelItemBox(28) end
		for i=1,GetItemCountBox(29) do DelItemBox(29) end
		for i=1,GetItemCountBox(30) do DelItemBox(30) end
	
		if GetItemCountBox(manghkmp[k][6]) == a - 1 and GetItemCountBox(manghkmp[k][6] + 1) == b - 1 and GetItemCountBox(manghkmp[k][6] + 2) == c - 1 and GetItemCountBox(manghkmp[k][6] + 3) == d - 1 and GetItemCountBox(manghkmp[k][6] + 4) == e - 1 and GetItemCountBox(manghkmp[k][6] + 5) == f - 1 and GetItemCountBox(mattich) == nl1 - 1 and GetItemCountBox(manghkmp[k][7]) == nl4 - 1 and GetItemCountBox(51) == nl2 - 1 and GetCash() == nl3 - 20000000 then
			inloghkmp("Thanh Cong HKMP: "..GetAccount().." - "..GetName().." - "..(nl5*5).."% - "..manghkmp[k][1].." ")
			AddItem(manghkmp[k][2],manghkmp[k][3],manghkmp[k][4],manghkmp[k][5],0,0,0)
			Msg2SubWorld("Chóc mõng <color=green>"..GetName().." <color=red>chÕ t¹o thµnh c«ng trang bÞ hoµng kim m«n ph¸i <color=yellow>["..manghkmp[k][1].."]")	
			num = 1
			Talk(0,"")
			break;
		else
			Talk(1,"","Hack ha em")
		end
		else
			inloghkmp("That Bai HKMP: "..GetAccount().." - "..GetName().." - "..(nl5*5).."% - "..manghkmp[k][1].." ")
				--Msg2Player("ThÊt B¹i: "..(nl5*5).."% ")
					DelItemBox(51)
					Pay(20000000)
					for i=1,GetItemCountBox(28) do DelItemBox(28) end
					for i=1,GetItemCountBox(29) do DelItemBox(29) end
					for i=1,GetItemCountBox(30) do DelItemBox(30) end
					Talk(1,"","<color=red>ChÕ t¹o thÊt b¹i, b¹n mÊt hÕt Thñy Tinh + HuyÒn Tinh + 2000 v¹n l­îng !")
			Msg2SubWorld("Xin chia buån cïng <color=green>"..GetName().." <color=red>chÕ t¹o thÊt b¹i trang bÞ hoµng kim m«n ph¸i <color=yellow>["..manghkmp[k][1].."]")	
					
		end
	else
		Talk(1,"","Kh«ng ®ñ nguyªn liÖu ®Æt vµo, vui lßng kiÓm tra l¹i !")
	end	
end
end
else
	xs = random(1,2)
	
	for k=1,getn(manghkmp) do
	
	
	
	if GetItemCountBox(manghkmp[k][6]) == 1 and GetItemCountBox(manghkmp[k][7]) == 1 then
	num = num + 1
	if CheckFreeBoxItem(manghkmp[k][2],manghkmp[k][3],manghkmp[k][4],manghkmp[k][5]) == 0 then
	Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng ®Ó chÕ t¹o trang bÞ <color=yellow>"..manghkmp[k][1].." ")
	return
	end
	Msg2Player(" Item :"..num.." -  "..xs.." ")
	if num == xs then
		a = GetItemCountBox(manghkmp[k][6])
		b = GetItemCountBox(manghkmp[k][6] + 1)
		c = GetItemCountBox(manghkmp[k][6] + 2)
		d = GetItemCountBox(manghkmp[k][6] + 3)
		e = GetItemCountBox(manghkmp[k][6] + 4)
		f = GetItemCountBox(manghkmp[k][6] + 5)
		mattich = checkmattich(manghkmp[k][7])
		nl1 = GetItemCountBox(mattich)
		nl2 = GetItemCountBox(51)
		nl3 = GetCash()
		nl4 = GetItemCountBox(manghkmp[k][7])
		nl5 = GetItemCountBox(28) + GetItemCountBox(29) + GetItemCountBox(30)
			if GetItemCountBox(manghkmp[k][6]) == 1 and GetItemCountBox(manghkmp[k][6] + 1) == 1 and GetItemCountBox(manghkmp[k][6] + 2) == 1 and GetItemCountBox(manghkmp[k][6] + 3) == 1 and GetItemCountBox(manghkmp[k][6] + 4) == 1 and GetItemCountBox(manghkmp[k][6] + 5) == 1 and GetItemCountBox(mattich) == 1 and GetItemCountBox(manghkmp[k][7]) == 1 and GetItemCountBox(51) == 1 and nl5 > 0 and GetCash() >= 20000000 then
				xacsuat = random(1,100)
				if xacsuat < nl5*4 then
				--Msg2Player("Thµnh Cong: "..(nl5*5).."% ")
				DelItemBox(manghkmp[k][6]) 		
				DelItemBox(manghkmp[k][6] + 1)
				DelItemBox(manghkmp[k][6] + 2)
				DelItemBox(manghkmp[k][6] + 3)
				DelItemBox(manghkmp[k][6] + 4)
				DelItemBox(manghkmp[k][6] + 5)
				DelItemBox(mattich)
				DelItemBox(51)
				DelItemBox(manghkmp[k][7])
				Pay(20000000)
				for i=1,GetItemCountBox(28) do DelItemBox(28) end
				for i=1,GetItemCountBox(29) do DelItemBox(29) end
				for i=1,GetItemCountBox(30) do DelItemBox(30) end
	
				if GetItemCountBox(manghkmp[k][6]) == a - 1 and GetItemCountBox(manghkmp[k][6] + 1) == b - 1 and GetItemCountBox(manghkmp[k][6] + 2) == c - 1 and GetItemCountBox(manghkmp[k][6] + 3) == d - 1 and GetItemCountBox(manghkmp[k][6] + 4) == e - 1 and GetItemCountBox(manghkmp[k][6] + 5) == f - 1 and GetItemCountBox(mattich) == nl1 - 1 and GetItemCountBox(manghkmp[k][7]) == nl4 - 1 and GetItemCountBox(51) == nl2 - 1 and GetCash() == nl3 - 20000000 then
					inloghkmp("Thanh Cong HKMP: "..GetAccount().." - "..GetName().." - "..(nl5*5).."% - "..manghkmp[k][1].." ")
					AddItem(manghkmp[k][2],manghkmp[k][3],manghkmp[k][4],manghkmp[k][5],0,0,0)
					Msg2SubWorld("Chóc mõng <color=green>"..GetName().." <color=red>chÕ t¹o thµnh c«ng trang bÞ hoµng kim m«n ph¸i <color=yellow>["..manghkmp[k][1].."]")	
			
				Talk(0,"")
				break;
			
				else
				Talk(1,"","Hack ha em")
				end
				else
				inloghkmp("That Bai HKMP: "..GetAccount().." - "..GetName().." - "..(nl5*5).."% - "..manghkmp[k][1].." ")
				--Msg2Player("ThÊt B¹i: "..(nl5*5).."% ")
					DelItemBox(51)
					Pay(20000000)
					for i=1,GetItemCountBox(28) do DelItemBox(28) end
					for i=1,GetItemCountBox(29) do DelItemBox(29) end
					for i=1,GetItemCountBox(30) do DelItemBox(30) end
					Talk(1,"","<color=red>ChÕ t¹o thÊt b¹i, b¹n mÊt hÕt Thñy Tinh + HuyÒn Tinh + 2000 v¹n l­îng !")
					Msg2SubWorld("Xin chia buån cïng <color=green>"..GetName().." <color=red>chÕ t¹o thÊt b¹i trang bÞ hoµng kim m«n ph¸i <color=yellow>["..manghkmp[k][1].."]")
				end
			else
				Talk(1,"","Kh«ng ®ñ nguyªn liÖu ®Æt vµo, vui lßng kiÓm tra l¹i !")
			end	
		end
	end
	end
end
	


end




function checkmattich(num)
if num >= 75 and num <= 77 then
return 4 -- thieu lam
elseif num >= 78 and num <= 80 then
return 5
elseif num >= 81 and num <= 84 then
return 6
elseif num >= 85 and num <= 87 then
return 7
elseif num >= 88 and num <= 90 then
return 8
elseif num >= 91 and num <= 92 then
return 9
elseif num >= 93 and num <= 94 then
return 11
elseif num >= 95 and num <= 97 then
return 10
elseif num >= 98 and num <= 99 then
return 12
elseif num >= 100 and num <= 102 then
return 13
else
return 14
end
end





function phanrahkmp()
OpenCheckItemBox("Ph©n R· HKMP","§Æt trang bÞ Hoµng Kim M«n Ph¸i (kh«ng khãa) vµ 5 KNB vµo","okphanrahkmp")
end

function checknumitembox()
num = 0
for i=1,getn(manghkmp) do
	if GetItemCountInCheckBox(manghkmp[i][2],manghkmp[i][3],manghkmp[i][4],manghkmp[i][5]) == 1 then
		num = i
		break;
	end
end
return num
end

function okphanrahkmp()

if GetAllItemCountInCheckBox() == 6 then
	if GetItemCountBox(17) == 5 then
		vitri = checknumitembox()
		if vitri ~= 0 then
			if CheckItemBlockInCheckBox(manghkmp[vitri][2],manghkmp[vitri][3],manghkmp[vitri][4],manghkmp[vitri][5]) <= 1 then 
			DeleteAllItemInCheckBox()
				if GetAllItemCountInCheckBox() == 0 then
					Msg2SubWorld("Chóc mõng "..GetName().." ph©n r· thµnh c«ng trang bÞ Hoµng Kim <color=yellow>"..manghkmp[vitri][1].." ")	
					for k=0,5 do
						AddEventItem(manghkmp[vitri][6]+k)
					end
					AddEventItem(manghkmp[vitri][7])
					
					inlogprhkmp(""..GetAccount().." - "..GetName().." - "..manghkmp[vitri][1].." ")
					KickOutSelf()
				else
					Talk(1,"","Lçi trang bÞ ®Æt vµo lµ trang bÞ khãa b¶o hiÓm. ")
				end
			else
				Talk(1,"","Trang bÞ hoµng kim thuéc tr¹ng th¸i khãa b¶o hiÓm, ko thÓ ph©n r· ")
			end
		else
			Talk(1,"","Trang bÞ ®Æt vµo kh«ng ph¶i lµ Hoµng Kim M«n Ph¸i ")
		end
	else
		Talk(1,"","Lçi 2: Nguyªn liÖu ®Æt vµo chØ ®­îc 1 HKMP + 5 KNB ")
	end
else
	Talk(1,"","Nguyªn liÖu ®Æt vµo chØ ®­îc 1 HKMP + 5 KNB")
end

end






manghkmp = {
-- Day Chuyen
{"Ngù Long ChiÕn ThÇn Phi Qu¶i Gi¸p",0,4,6,1,225,80},
{"§Þa Ph¸ch H¾c DiÖm Xung Thiªn Liªn",0,4,7,1,225,84},
{"Thiªn Quang §Þnh T©m Ng­ng ThÇn Phï ",0,4,8,1,225,81},
{"Chó Ph­îc DiÖt L«i C¶nh Phï ",0,4,9,1,225,87},
{"V« TrÇn Thanh T©m H­íng ThiÖn Ch©u",0,4,10,1,225,90},
{"BÝch H¶i Hoµn Ch©u Vò Liªn",0,4,11,1,225,92},
{"Ma Hoµng ¸n XuÊt Hæ H¹ng Khuyªn",0,4,12,1,225,97},
{"Ma ThÞ Ma PhÖ T©m Liªn",0,4,13,1,225,95},
{"CËp Phong Tam Thanh Phï ",0,4,14,1,225,98},
{"Vô ¶o Ky B¸n Phï Chó ",0,4,15,1,225,102},
{"L«i Khung Thiªn §Þa Hé Phï ",0,4,16,1,225,100},

-- Nhan
{"Tø Kh«ng Giíi LuËt Ph¸p Giíi",0,3,7,1,237,76},
{"Phôc Ma PhËt T©m NhuyÔn KhÊu",0,3,8,1,237,77},
{"Ngù Long TuyÖt MÖnh ChØ Hoµn",0,3,9,1,237,80},
{"§Þa Ph¸ch TÝch LÞch L«i Háa Giíi",0,3,10,1,237,84},
{"Thiªn Quang Thóc Thiªn Ph­îc §Þa Hoµn",0,3,11,1,237,81},
{"Chó Ph­îc U ¶o ChØ Hoµn",0,3,12,1,237,87},
{"Minh ¶o §éc YÕt ChØ Hoµn",0,3,13,1,237,86},
{"V« Gian B¹ch Ngäc Ban ChØ ",0,3,14,1,237,89},
{"V« Ma B¨ng Tinh ChØ Hoµn",0,3,15,1,237,88},
{"V« TrÇn PhËt Quang ChØ Hoµn",0,3,16,1,237,90},
{"V« TrÇn Tõ Bi Ngäc Ban ChØ ",0,3,17,1,237,90},
{"Tª Hoµng Thñy Ngäc ChØ Hoµn",0,3,18,1,237,91},
{"§ång Cõu KiÕn Long Ban ChØ ",0,3,19,1,237,93},
{"§Þch Kh¸i Th¶o Gian Th¹ch Giíi ",0,3,20,1,237,94},
{"Ma ThÞ NghiÖp Háa U Linh Giíi",0,3,21,1,237,95},
{"Ma S¸t V©n Long Thæ Ch©u Giíi",0,3,22,1,237,96},
{"CËp Phong Thanh Tïng Ph¸p Giíi",0,3,23,1,237,98},
{"L¨ng Nh¹c Né L«i Giíi",0,3,24,1,237,99},
{"L¨ng Nh¹c Thiªn §Þa HuyÒn Hoµng Giíi",0,3,25,1,237,99},
{"Vô ¶o Thóc T©m ChØ Hoµn",0,3,26,1,237,102},
{"S­¬ng Tinh Phong B¹o ChØ Hoµn",0,3,27,1,237,101},
{"L«i Khung Cöu Thiªn DÉn L«i Giíi",0,3,28,1,237,100},

-- Ngoc Boi
{"Méng Long PhËt Ph¸p HuyÒn Béi",0,9,6,1,231,75},
{"B¨ng Hµn HuyÒn Thiªn B¨ng Háa Béi",0,9,7,1,231,82},
{"S©m Hoµng HuyÒn ThiÕt T­¬ng Ngäc Béi",0,9,8,1,231,83},
{"V« TrÇn PhËt T©m Tõ H÷u Yªu Phèi",0,9,9,1,231,90},
{"BÝch H¶i Hång L¨ng Ba",0,9,10,1,231,92},
{"Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi",0,9,11,1,231,95},
{"CËp Phong Thóy Ngäc HuyÒn Hoµng Béi",0,9,12,1,231,98},
{"L¨ng Nh¹c V« Cùc HuyÒn Ngäc Béi",0,9,13,1,231,99},
{"Vô ¶o Thanh ¶nh HuyÒn Ngäc Béi",0,9,14,1,231,102},
{"L«i Khung Linh Ngäc UÈn L«i",0,9,15,1,231,100},
{"V« Ma TÈy T­îng Ngäc KhÊu",0,9,16,1,231,88},

-- Bao Tay
{"Tø Kh«ng NhuyÔn B× Hé UyÓn",0,8,4,1,207,76},
{"KÕ NghiÖp Háa V©n Kú L©n Thñ ",0,8,5,1,207,78},
{"H¸m Thiªn Hæ §Çu KhÊn Thóc UyÓn",0,8,6,1,207,79},
{"Ngù Long TÊn Phong Hé UyÓn",0,8,7,1,207,80},
{"§Þa Ph¸ch KhÊu T©m Tr¹c",0,8,8,1,207,84},
{"Thiªn Quang Song B¹o Hµn ThiÕt Tr¹c",0,8,9,1,207,81},
{"Chó Ph­îc Xuyªn T©m §éc UyÓn",0,8,10,1,207,87},
{"U Lung Ng©n ThiÒn Hé UyÓn",0,8,11,1,207,85},
{"Minh ¶o Hñ Cèt Hé UyÓn",0,8,12,1,207,86},
{"V« Gian CÇm VËn Hé UyÓn",0,8,13,1,207,89},
{"Tª Hoµng B¨ng Tung CÈm UyÓn",0,8,14,1,207,91},
{"§ång Cõu Kh¸ng Long Hé UyÓn",0,8,15,1,207,93},
{"§Þch Kh¸i CÈu TÝch B× Hé UyÓn",0,8,16,1,207,94},
{"Ma Hoµng HuyÕt Y Thó Tr¹c",0,8,17,1,207,97},
{"Ma S¸t Cö Háa L­u Thiªn UyÓn",0,8,18,1,207,96},
{"S­¬ng Tinh B¨ng Tinh Thiªn Tinh Thñ",0,8,19,1,207,101},

-- GIAY
{"Méng Long §¹t Ma T¨ng Hµi",0,5,6,1,219,75},
{"Phôc Ma Phç §é T¨ng Hµi",0,5,7,1,219,77},
{"KÕ NghiÖp Chu T­íc L¨ng V©n Ngoa",0,5,8,1,219,78},
{"H¸m Thiªn Thõa Long ChiÕn Ngoa",0,5,9,1,219,79},
{"§Þa Ph¸ch §Þa Hµnh Thiªn Lý Ngoa",0,5,10,1,219,84},
{"B¨ng Hµn NguyÖt ¶nh Ngoa",0,5,11,1,219,82},
{"S©m Hoµng Tinh VÉn Phi Lý ",0,5,12,1,219,83},
{"Chó Ph­îc B¨ng Háa Thùc Cèt Ngoa",0,5,13,1,219,87},
{"U Lung MÆc Thï NhuyÔn Lý ",0,5,14,1,219,85},
{"Minh ¶o Song Hoµn Xµ Hµi",0,5,15,1,219,86},
{"V« Ma Hång Truy NhuyÔn Th¸p Hµi",0,5,16,1,219,88},
{"Ma Hoµng §¨ng §¹p Ngoa",0,5,17,1,219,97},
{"Ma ThÞ S¬n H¶i Phi Hång Lý ",0,5,18,1,219,95},
{"Vô ¶o Tung Phong TuyÕt ¶nh Ngoa",0,5,19,1,219,102},

-- THAT LUNG
{"Méng Long HuyÒn Ti Ph¸t §¸i",0,6,4,1,213,75},
{"Tø Kh«ng Hé Ph¸p Yªu §¸i",0,6,5,1,213,76},
{"Phôc Ma ¤ Kim NhuyÔn §iÒu",0,6,6,1,213,77},
{"KÕ NghiÖp B¹ch Hæ V« Song KhÊu",0,6,7,1,213,78},
{"H¸m Thiªn Uy Vò Thóc Yªu §¸i",0,6,8,1,213,79},
{"Ngù Long Thiªn M«n Thóc Yªu Hoµn",0,6,9,1,213,80},
{"B¨ng Hµn T©m TiÔn Yªu KhÊu",0,6,10,1,213,82},
{"S©m Hoµng Hån Gi¶o Yªu Thóc",0,6,11,1,213,83},
{"Thiªn Quang S©m La Thóc §¸i",0,6,12,1,213,81},
{"U Lung Thanh Ng« TriÒn Yªu",0,6,13,1,213,85},
{"V« Gian PhÊt V©n Ti §¸i",0,6,14,1,213,89},
{"Tª Hoµng B¨ng TuyÕt B¹ch V©n Thóc §¸i",0,6,15,1,213,91},
{"BÝch H¶i Hång Linh Kim Ti §¸i",0,6,16,1,213,92},
{"§ång Cõu TiÒm Long Yªu §¸i",0,6,17,1,213,93},
{"§Þch Kh¸i TruyÒn M·ng Yªu §¸i",0,6,18,1,213,94},
{"Ma Hoµng Khª Cèc Thóc Yªu §¸i",0,6,19,1,213,97},
{"Ma S¸t XÝch Ký Táa Yªu KhÊu",0,6,20,1,213,96},
{"CËp Phong HuyÒn Ti Tam §o¹n CÈm",0,6,21,1,213,98},
{"S­¬ng Tinh Thanh Phong Lò §¸i",0,6,22,1,213,101},
{"L«i Khung Phong L«i Thanh CÈm §¸i",0,6,23,1,213,100},

-- NON
{"Méng Long ChÝnh Hång T¨ng M·o",0,7,16,1,195,75},
{"§Þa Ph¸ch Ngò Hµnh Liªn Hoµn Qu¸n",0,7,17,1,195,84},
{"Chó Ph­îc Ph¸ Gi¸p §Çu Hoµn",0,7,18,1,195,87},
{"U Lung Kim Xµ Ph¸t §¸i",0,7,19,1,195,85},
{"V« Ma Ma Ni Qu¸n",0,7,20,1,195,88},
{"V« TrÇn Ngäc N÷ Tè T©m Qu¸n",0,7,21,1,195,90},
{"§ång Cõu Phi Long §Çu Hoµn",0,7,22,1,195,93},
{"Ma Hoµng Kim Gi¸p Kh«i",0,7,23,1,195,97},
{"Ma ThÞ LiÖt DiÖm Qu¸n MiÖn",0,7,24,1,195,95},
{"Vô ¶o B¾c Minh §¹o Qu¸n",0,7,25,1,195,102},
{"L«i Khung Hµn Tung B¨ng B¹ch Qu¸n",0,7,26,1,195,100},


-- AO GIAP

{"Méng Long Kim Ti ChÝnh Hång Cµ Sa",0,2,33,1,201,75},
{"Tø Kh«ng Tö Kim Cµ Sa",0,2,34,1,201,76},
{"Phuc Ma HuyÒn Hoµng Cµ Sa",0,2,35,1,201,77},
{"KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i",0,2,36,1,201,78},
{"H¸m Thiªn Vò ThÇn T­îng Kim Gi¸p",0,2,37,1,201,79},
{"B¨ng Hµn HuyÒn Y  Thóc Gi¸p",0,2,38,1,201,82},
{"S©m Hoµng Kim TiÒn Liªn Hoµn Gi¸p",0,2,39,1,201,83},
{"U Lung XÝch YÕt MËt Trang",0,2,40,1,201,85},
{"Minh ¶o U §éc ¸m Y",0,2,41,1,201,86},
{"V« Gian Thanh Phong Truy Y",0,2,42,1,201,89},
{"V« Ma Tö Kh©m Cµ Sa",0,2,43,1,201,88},
{"Tª Hoµng TÖ T©m Khinh Sa Y",0,2,44,1,201,91},
{"§ång Cõu Gi¸ng Long C¸i Y",0,2,45,1,201,93},
{"§Þch Kh¸i Cöu §¹i C¸i Y",0,2,46,1,201,94},
{"Ma S¸t Tµn D­¬ng ¶nh HuyÕt Gi¸p",0,2,47,1,201,96},
{"L¨ng Nh¹c V« Ng· §¹o B¹o",0,2,48,1,201,99},
{"S­¬ng Tinh Ng¹o S­¬ng §¹o Bµo",0,2,49,1,201,101},


-- VU KHI
{"V« Gian û Thiªn KiÕm",0,0,0,61,189,89},
{"Tø Kh«ng Gi¸ng Ma Giíi §ao",0,0,1,61,189,76},
{"Phôc Ma Tö Kim C«n",0,0,2,61,189,77},
{"KÕ NghiÖp B«n L«i Toµn Long Th­¬ng",0,0,3,61,189,78},
{"H¸m Thiªn Kim Hoµn §¹i Nh·n ThÇn Chïy",0,0,4,61,189,79},
{"BÝch H¶i Uyªn ¦¬ng Liªn Hoµn §ao",0,0,5,61,189,92},
{"L¨ng Nh¹c Th¸i Cùc KiÕm",0,0,0,121,189,99},
{"Ngù Long L­îng Ng©n B¶o §ao",0,0,1,121,189,80},
{"§Þch Kh¸i Lôc Ngäc Tr­îng",0,0,2,121,189,94},
{"Ma S¸t Quû Cèc U Minh Th­¬ng",0,0,3,121,189,96},
{"S­¬ng Tinh Thiªn Niªn Hµn ThiÕt",0,0,1,151,189,101},
{"CËp Phong Ch©n Vò KiÕm",0,0,0,171,189,98},
{"Minh ¶o Tµ S¸t §éc NhËn",0,0,1,171,189,86},
{"Tª Hoµng Phông Nghi §ao",0,0,1,181,189,91},
{"B¨ng Hµn §¬n ChØ Phi §ao",0,1,1,21,189,82},
{"S©m Hoµng Phi Tinh §o¹t Hån",0,1,0,41,189,83},
{"Thiªn Quang Hoa Vò M·n Thiªn",0,1,2,31,189,81},

}


