Include("\\Script\\global\\sourcejx49.lua");

Include("\\script\\visondao\\MangCheTao.txt")
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

if GetTask(103) == 6 then
	SayNew("<color=green>Thî rÌn<color> H·y lùa chän 1 vò khÝ ngang víi søc m×nh nhÐ: ",4,
	"Mua vò khÝ/binhthuong",
	"Giao tÝn thø ch­ëng m«n /giaotinthu",
--	"C­êng Hãa Trang BÞ /thangcapxxx",
	"Hñy trang bÞ khãa VÜnh ViÔn /huytrangbi",
	"Tho¸t./no")
elseif GetTask(115) == 15000 then
	SayNew("<color=green>Thî rÌn<color> H·y lùa chän 1 vò khÝ ngang víi søc m×nh nhÐ: ",3,
	"Mua vò khÝ/binhthuong",
	"Giao tÝn thø ch­ëng m«n /giaotinthu",
	"Tho¸t./no")
else
	SayNew("<color=green>Thî rÌn<color> H·y lùa chän 1 vò khÝ ngang víi søc m×nh nhÐ: ",6,
	"Mua vò khÝ/binhthuong",
	"Phôc håi trang bÞ háng /phuchoi",
--	"GhÐp M·nh Kim Phong /ghepmanhkp",
--	"GhÐp M·nh HiÖp Cèt /ghepmanhhc",
--	"GhÐp M·nh Nhu T×nh /ghepmanhnt",
	-- "C­êng Hãa Trang BÞ Xanh/chetaohuyentinh",
--	"Trang bÞ Hoµn Mü /chetaohoanmy",
--	"Trang bÞ Cùc PhÈm /chetaocucpham",
	-- "LuyÖn Thµnh HuyÒn tinh /luyenthanh",
--	"GhÐp M·nh Trang BÞ /ghepmanh_new",
	"§æi thó c­ìi/nangcapngua",
	"Thay ®æi trang bÞ xanh/thangcapxxx",
	"GhÐp M·nh Hoµng Kim/ghepmanhhoangkim",
--	"GhÐp M·nh VIP /ghepmanhvip",
--	"GhÐp R­¬ng Tèng Kim /ghepruongtk",
	"Hñy trang bÞ khãa VÜnh ViÔn /huytrangbi2",
	"Hñy trang bÞ tæn h¹i /huytrangbihong",
	"Tho¸t./no")
end
end;


function ghepmanhhoangkim()
SayNew("<color=green>Thî rÌn<color> Ng­¬i muèn ta gióp g× ?",3,
"ChÕ t¹o An Bang, §Þnh Quèc/ghepmanhhoangkim1",
"Ph©n r· An Bang, §Þnh Quèc/ghepmanhhoangkim2",
"Tho¸t./no")
end


function ghepmanhhoangkim2()
OpenCheckItemBox("Ph©n T¸ch Hoµng Kim","§Æt 1 mãn Hoµng Kim vµ 1 §¸ T¸i T¹o vµo ","ghepmanhhoangkim2_2")
end

function ghepmanhhoangkim2_2()
itemidx = GetIdxItemBoxUpdateItem3()
time = GetTimeItemIdx(itemidx)

if time > 1 then
Talk(1,"","Kh«ng thÓ ph©n t¸ch trang bÞ khãa ")
return
end

if idxitem == -1 then
Talk(1,"","Sè l­îng vËt phÈm v­ît qu¸ 1 trang bÞ ")
Msg2Player("Lçi: Sè l­îng v­ît qu¸ 1 trang bÞ ")
return
end

	a = GetGenreItem(itemidx)
	b = GetDetailTypeItem(itemidx)
	c = GetParticularItem(itemidx)		
	
if a ~= 0 then
Talk(1,"","Nguyªn liÖu ®Æt vµo kh«ng ph¶i trang bÞ !")
return
end	

if GetItemCountBox(415) == 0 then
	Talk(1,"","Ng­¬i kh«ng bá §¸ T¸i T¹o, kh«ng thÓ ph©n t¸ch !")
return	
end
	index = -1
	for i=1,getn(MANGABDQ) do
			if b == MANGABDQ[i][4] and c == MANGABDQ[i][5] then
				index = i		
				break				
			end
	end


	if index == -1 then
		return
	end	
	
	if index > 0 and index <= getn(MANGABDQ) then
		DeleteAllItemInCheckBox()
		if GetAllItemCountInCheckBox() == 0 then
			id = MANGABDQ[index][1]
			num = MANGABDQ[index][2]
			nameitem = MANGABDQ[index][3]
			for k=1,num do AddEventItem(id) end
			Msg2Player("Ph©n r· thµnh c«ng <color=yellow>"..num.." "..nameitem.." ")
			inlog5("[PhanRa] ["..num.." / "..GetItemCount(id).."] ["..nameitem.."]")			
		else
			Talk(1,"","hack ha em")
		end
	else
		Talk(1,"","Nguyªn liÖu ®Æt vµo kh«ng ®óng, vui lßng kiÓm tra l¹i")
	end
end
	
	
function ghepmanhhoangkim1()
OpenCheckItemBox("§æi Trang BÞ Hoµng Kim.","H·y ®Æt M·nh Hoµng Kim vµo","ghepmanhhoangkim1_1")
end



function ghepmanhhoangkim1_1()
	if CheckFreeBoxItem(4,364,1,1) == 0 then
		Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng, vui lßng kiÓm tra l¹i")
		return
	end
	chetao_kiemtra_itemkhoa = GetItemBind_CheckBox()
	if (chetao_kiemtra_itemkhoa == -1) then
	Talk(1,"","Kh«ng ®­îc ®Æt trang bÞ vµo !")
	return
	end

	if (chetao_kiemtra_itemkhoa == 1) then
	Talk(1,"","Kh«ng ®­îc ®Æt nguyªn liÖu ®· khãa vµo")
	return
	end

	index = -1
	id = -1
	for i=1,getn(MANGABDQ) do
			id = MANGABDQ[i][1]
			num = MANGABDQ[i][2]
			if GetItemCountBox(id) == num then
				index = i
				break				
			end
	end
	
	
	if index == -1 then
		return
	end	
	

	xs = 50 + GetItemCountBox(74) * 10
	if index > 0 and index <= getn(MANGABDQ) then
			nganluong = MANGABDQ[index][6]
			if GetCash() <  nganluong then
				Talk(1,"","Ng©n l­îng kh«ng ®ñ "..nganluong.." l­îng, kh«ng thÓ ®æi !")
				return
			end
	
			for k=1,MANGABDQ[index][2] do
				DelItemBox(MANGABDQ[index][1])
			end	
			for k=1,GetItemCountBox(74) do
				DelItemBox(74)
			end
			Pay(nganluong)
			
						levelhk = RandomNew(1,10)
						sx = RandomNew(1,100)
						if sx <= xs then	
							idxitem = AddItem(0, MANGABDQ[index][4], MANGABDQ[index][5], levelhk,0,0,0)
							Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." ®· ghÐp thµnh c«ng trang bÞ Hoµng Kim - <color=yellow>"..GetNameItemBox(idxitem).."")		
							Talk(1,"","Chóc mõng b¹n nhËn ®­îc 1 trang bÞ <color=green>"..GetNameItemBox(idxitem).." ")
							inlog5("[ThanhCong] ["..GetNameItemBox(idxitem).."]")			
						else
							Msg2SubWorld("Xin chia buån cïng ®¹i hiÖp "..GetName().." ®· ®æi m·nh hoµng kim thÊt b¹i.")
							Talk(1,"","<color=red>Xin chia buån, ®æi trang bÞ thÊt b¹i. X¸c suÊt: "..xs.."% ")
							inlog5("[ThatBai] ["..MANGABDQ[index][3].."]")		
						end
	else
		Talk(1,"","Nguyªn liÖu ®Æt vµo kh«ng ®óng, vui lßng kiÓm tra l¹i")
	end
end

function nangcapngua()
SayNew("<color=green>Thî rÌn<color> H·y chän 1 con thó c­ìi muèn ®æi ",7,
"ChiÕu D¹ Ngäc S­ Tö [CÊp 80]/nangcapngua1",
"Phi V©n [CÊp  100]/nangcapngua2",
"B«n Tiªu [CÊp  120] /nangcapngua3",
"Du Huy [CÊp  130] /chuaupdate",
"XÝch Long C©u [CÊp  140] /chuaupdate",
"Phiªn Vò [CÊp  150] /chuaupdate",
"Tho¸t./no")
end

function chuaupdate()
Talk(1,"","TÝnh n¨ng ch­a update !")
end
function nangcapngua1()
OpenCheckItemBox("§æi Ngùa","H·y ®Æt 3 Ngùa 80 vµo","nangcapngua1_1")
end

function nangcapngua1_1()

ngua1 = GetItemCountInCheckBox(0,10,5,1)
ngua2 = GetItemCountInCheckBox(0,10,5,2)
ngua3 = GetItemCountInCheckBox(0,10,5,3)
ngua4 = GetItemCountInCheckBox(0,10,5,4)

soluongngua = ngua1 + ngua2 + ngua3 + ngua4
if soluongngua ~= 3 then
Talk(1,"","Ng­¬i ph¶i bá vµo 3 con ngùa cÊp 80 kh«ng khãa míi cã thÓ ®æi !")
return
end

if GetCash() < 5000000 then
return
end
Pay(5000000)


thanbi = GetItemCountBox(74) * 10
xacsuatthanhcong = 50 + thanbi

DeleteAllItemInCheckBox()
if GetAllItemCountInCheckBox() == 0 then
		sx = RandomNew(1,100)
		if sx < xacsuatthanhcong then
				idxitem = AddItem(0,10,5,5,0,0,0)
				Msg2SubWorld("<color=green>Xin chóc mõng ®¹i hiÖp "..GetName().." ®· ®æi ngùa thµnh c«ng. NhËn ®­îc: <color=pink>1 "..GetNameItemBox(idxitem).." ")
				inlogdoingua("[ThanhCong] [ChieuDa]["..xacsuatthanhcong.."%] ["..GetAccount().."] ["..GetName().."]")
		else
				idxitem = AddItem(0,10,5,random(3,4),0,0,0)
				Msg2SubWorld("Xin chia buån cïng ®¹i hiÖp "..GetName().." ®· ®æi ngùa thÊt b¹i. NhËn l¹i: <color=yellow>1 "..GetNameItemBox(idxitem).." ")
				Talk(1,"","Xin chia buån cïng ®¹i hiÖp. ®æi ngùa thÊt b¹i. <color=red>X¸c suÊt "..xacsuatthanhcong.."%")
				inlogdoingua("[ThatBai] [ChieuDa]["..xacsuatthanhcong.."%] ["..GetAccount().."] ["..GetName().."]")
		end
end				
end




function nangcapngua2()
OpenCheckItemBox("§æi Ngùa Phi V©n","H·y ®Æt 3 ChiÕu D¹ vµo","nangcapngua2_1")
end

function nangcapngua2_1()
ngua = GetItemCountInCheckBox(0,10,5,5)
if ngua ~= 3 then
Talk(1,"","Ng­¬i ph¶i bá vµo 3 Ngùa ChiÕu D¹ Ngäc Sö Tö kh«ng khãa míi cã thÓ ®æi !")
return
end

if GetCash() < 10000000 then
return
end
Pay(10000000)

thanbi = GetItemCountBox(74) * 10
xacsuatthanhcong = 50 + thanbi

DeleteAllItemInCheckBox()
if GetAllItemCountInCheckBox() == 0 then
		sx = RandomNew(1,100)
		if sx < xacsuatthanhcong then
				idxitem = AddItem(0,10,8,1,0,0,0)
				Msg2SubWorld("<color=green>Xin chóc mõng ®¹i hiÖp "..GetName().." ®· ®æi ngùa thµnh c«ng. NhËn ®­îc: <color=pink>1 "..GetNameItemBox(idxitem).." ")
				inlogdoingua("[ThanhCong] [PhiVan] ["..xacsuatthanhcong.."%] ["..GetAccount().."] ["..GetName().."]")
		else
				idxitem = AddItem(0,10,5,5,0,0,0)
				Msg2SubWorld("Xin chia buån cïng ®¹i hiÖp "..GetName().." ®· ®æi ngùa thÊt b¹i. NhËn l¹i: <color=yellow>1 "..GetNameItemBox(idxitem).." ")
				Talk(1,"","Xin chia buån cïng ®¹i hiÖp. ®æi ngùa thÊt b¹i. <color=red>X¸c suÊt "..xacsuatthanhcong.."%")
				inlogdoingua("[ThatBai] [PhiVan] ["..xacsuatthanhcong.."%] ["..GetAccount().."] ["..GetName().."]")
		end
end				
end


function nangcapngua3()
OpenCheckItemBox("§æi Ngùa B«n Tiªu","H·y ®Æt 3 Phi V©n vµo","nangcapngua3_1")
end

function nangcapngua3_1()
ngua = GetItemCountInCheckBox(0,10,8,1)
if ngua ~= 3 then
Talk(1,"","Ng­¬i ph¶i bá vµo 3 Ngùa Phi V©n kh«ng khãa míi cã thÓ ®æi !")
return
end
if GetCash() < 50000000 then
return
end
Pay(50000000)
thanbi = GetItemCountBox(74) * 10
xacsuatthanhcong = 50 + thanbi

DeleteAllItemInCheckBox()
if GetAllItemCountInCheckBox() == 0 then
		sx = RandomNew(1,100)
		if sx < xacsuatthanhcong then
				idxitem = AddItem(0,10,6,1,0,0,0)
				Msg2SubWorld("<color=green>Xin chóc mõng ®¹i hiÖp "..GetName().." ®· ®æi ngùa thµnh c«ng. NhËn ®­îc: <color=pink>1 "..GetNameItemBox(idxitem).." ")
				inlogdoingua("[ThanhCong] [BonTieu] ["..xacsuatthanhcong.."%] ["..GetAccount().."] ["..GetName().."]")
		else
				idxitem = AddItem(0,10,8,1,0,0,0)
				Msg2SubWorld("Xin chia buån cïng ®¹i hiÖp "..GetName().." ®· ®æi ngùa thÊt b¹i. NhËn l¹i: <color=yellow>1 "..GetNameItemBox(idxitem).." ")
				Talk(1,"","Xin chia buån cïng ®¹i hiÖp. ®æi ngùa thÊt b¹i. <color=red>X¸c suÊt "..xacsuatthanhcong.."%")
				inlogdoingua("[ThatBai] [PhiVan] ["..xacsuatthanhcong.."%] ["..GetAccount().."] ["..GetName().."]")
		end
end				
end


function huytrangbihong()
OpenCheckItemBox("Hñy Trang BÞ Háng","H·y ®Æt 1 trang bÞ tæn h¹i cÇn hñy vµo ","huytrangbihong1")
end

function huytrangbihong1()
itemidx = GetIdxItemBoxUpdateItem4()

if (itemidx == 0) then
Msg2Player("B¹n ch­a ®Æt trang bÞ cÇn phôc håi vµo !")
Talk(1,"","<color=red>Lçi<color>: Ch­a ®Æt trang bÞ cÇn hñy bá vµo !")
return
end

if (itemidx == -1) then
Msg2Player("B¹n ®Æt vµo nhiÒu h¬n 1 trang bÞ !")
Talk(1,"","<color=red>Lçi<color>: Trang bÞ ®Æt vµo nhiÒu h¬n 1 trang bÞ !")
return
end

if (itemidx == -3) then
Msg2Player("Trang bÞ kh«ng bÞ háng, kh«ng thÓ phôc håi !")
Talk(1,"","<color=red>Lçi<color>: Trang bÞ ®Æt vµo kh«ng bÞ háng, kh«ng thÓ hñy !")
return
end
	name = GetNameItemBox(itemidx)
	DelEquipIdx(itemidx)
	Talk(1,"","§· hñy thµnh c«ng trang bÞ: "..name.."")
end

function ghepmanhhc()
if CheckFreeBoxItem(0,10,5,1) == 0 then
	Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng 2 x 3 «, vui lßng kiÓm tra l¹i")
	return
	end
if GetItemCount(271) >= 50 then
	for p=1,50 do DelItem(271) end
	sx = random(1,10)
	if sx < 7 then
		idxitem = AddItem(0,3,6,1,0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." chÕ t¹o thµnh c«ng <color=green>"..GetNameItemBox(idxitem).."")
	elseif sx == 7 or sx == 8  then
		idxitem = AddItem(0,4,5,1,0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." chÕ t¹o thµnh c«ng <color=green>"..GetNameItemBox(idxitem).."")
	elseif sx == 9 then
		idxitem = AddItem(0,9,4,1,0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." chÕ t¹o thµnh c«ng <color=green>"..GetNameItemBox(idxitem).."")
	elseif sx == 10 then
		idxitem = AddItem(0,2,31,1,0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." chÕ t¹o thµnh c«ng <color=green>"..GetNameItemBox(idxitem).."")
	end

else
Talk(1,"","B¹n kh«ng mang ®ñ 50 m·nh hiÖp cèt, kh«ng thÓ ghÐp ")
end
end


function ghepmanhnt()
if CheckFreeBoxItem(0,10,5,1) == 0 then
	Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng 2 x 3 «, vui lßng kiÓm tra l¹i")
	return
	end
if GetItemCount(270) >= 50 then
	for p=1,50 do DelItem(270) end
	sx = random(1,10)
	if sx < 8 then
		idxitem = AddItem(0,3,5,1,0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." chÕ t¹o thµnh c«ng <color=green>"..GetNameItemBox(idxitem).."")
	elseif sx == 8 or sx == 9 then
		idxitem = AddItem(0,4,4,1,0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." chÕ t¹o thµnh c«ng <color=green>"..GetNameItemBox(idxitem).."")
	elseif sx == 10 then
		idxitem = AddItem(0,9,5,1,0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." chÕ t¹o thµnh c«ng <color=green>"..GetNameItemBox(idxitem).."")
	end
else
Talk(1,"","B¹n kh«ng mang ®ñ 50 m·nh  nhu t×nh, kh«ng thÓ ghÐp ")
end
end

function ghepmanhkp()
SayNew("Chän lo¹i trang bÞ cÇn ghÐp: ",9,
"D©y ChuyÒn /ghepmanhkp1",
"Ngäc Béi /ghepmanhkp1",
"NhÉn /ghepmanhkp1",
"¸o Gi¸p /ghepmanhkp1",
"Nãn /ghepmanhkp1",
"Giµy /ghepmanhkp1",
"Th¾t L­ng /ghepmanhkp1",
"Bao Tay /ghepmanhkp1",
"Tho¸t./no")
end


function ghepmanhkp1(nsel)
i = nsel + 1
b = 0
c = 0

if i == 1 then
b = 4
c = 2
elseif i == 2 then
b = 9
c = 2
elseif i == 3 then
b = 3
c = random(1,2)
elseif i == 4 then
b = 2
c = 29
elseif i == 5 then
b = 7
c = 14 
elseif i == 6 then
b = 5
c = 4
elseif i == 7 then
b = 6
c = 2
elseif i == 8 then
b = 8
c = 2
end
if b == 0 and c == 0 then
Talk(1,"","Lçi råi b¹n ¬i")
return
end
sl = GetItemCount(639)
if GetItemCount(639) >= 50 then
		for p=1,50 do DelItem(639) end
		if GetItemCount(639) == sl - 50 then
			idxitem = AddItem(0,b,c,2,0,0,0)
			Msg2SubWorld("Chóc mõng "..GetName().." chÕ t¹o thµnh c«ng trang bÞ:<color=green> "..GetNameItemBox(idxitem).."")
		else
			Talk(1,"","hack ha em")
		end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ 50 m·nh Kim Phong, kh«ng thÓ ghÐp ")
end

end

function chetaocucpham()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 2 x 3 « míi cã thÓ nhËn !")
	return
end
SayNew("<color=green>Thî RÌn<color>: Ng­¬i muèn chÕ t¹o g× ?",5,
"Ph©n T¸ch Tinh Th¹ch/hoanmy_tach",
"§æi §Þnh Quèc Cùc PhÈm /cucpham_doi",
"Th¨ng cÊp §Þnh Quèc Cùc PhÈm /cucpham_thangcap",
"T¸i t¹o §Þnh Quèc Cùc PhÈm /cucpham_taitao",
"Tho¸t./no")
end
function cucpham_taitao()
Talk(1,"","§ang cËp nhËt")
end


function cucpham_doi()
SayNew("<color=green>Thî RÌn<color>: Chän trang bÞ muèn ®æi:\nLÖ phÝ ®æi: 10 Tinh Th¹ch Cùc PhÈm + 10 Lam Thñy Tinh + 500 v¹n l­îng",6,
"§Þnh Quèc ¤ Sa Ph¸t Qu¸n/cucpham_okdoi",
"§Þnh Quèc XÝch QuyÒn NhuyÔn Ngoa/cucpham_okdoi",
"§Þnh Quèc Thanh Sa Tr­êng Sam /cucpham_okdoi",
"§Þnh Quèc Tö §»ng Hé UyÓn /cucpham_okdoi",
"§Þnh Quèc Ng©n TÇm Yªu §¸i /cucpham_okdoi",
"Tho¸t./no")
 end
function cucpham_okdoi(nsel)
i = nsel + 1

if GetItemCount(568) < 10 then
Talk(1,"","Ng­¬i kh«ng mang ®ñ 10 viªn Cùc PhÈm Tinh Th¹ch")
return
end

if GetItemCount(28) < 10 then
Talk(1,"","Ng­¬i kh«ng mang ®ñ 10 viªn Lam Thñy Tinh")
return
end

if GetCash() < 5000000 then
Talk(1,"","Ng­¬i kh«ng mang ®ñ 500 v¹n l­îng")
return
end
sl1 = GetItemCount(568)
sl2 = GetItemCount(28)
sl3 = GetCash()
if GetItemCount(568) >= 10 and GetItemCount(28) >= 10 and GetCash() >= 5000000 then
	for p=1,10 do DelItem(568) end
	for p=1,10 do DelItem(28) end
	Pay(5000000)
	if GetItemCount(568) == sl1 - 10 and GetItemCount(28) == sl2 - 10 and GetCash() == sl3 - 5000000 then
		if i == 1 then
			idxitem = AddItem(0,7,43,1,0,0,0)
			Msg2SubWorld("Chóc mõng "..GetName().." ®æi thµnh c«ng trang bÞ: <color=yellow>"..GetNameItemBox(idxitem).."")
		elseif i == 2 then
			idxitem = AddItem(0,5,26,1,0,0,0)
			Msg2SubWorld("Chóc mõng "..GetName().." ®æi thµnh c«ng trang bÞ: <color=yellow>"..GetNameItemBox(idxitem).."")
		elseif i == 3 then
			idxitem = AddItem(0,2,81,1,0,0,0)
			Msg2SubWorld("Chóc mõng "..GetName().." ®æi thµnh c«ng trang bÞ: <color=yellow>"..GetNameItemBox(idxitem).."")
		elseif i == 4 then
			idxitem = AddItem(0,8,24,1,0,0,0)
			Msg2SubWorld("Chóc mõng "..GetName().." ®æi thµnh c«ng trang bÞ: <color=yellow>"..GetNameItemBox(idxitem).."")
		elseif i == 5 then
			idxitem = AddItem(0,6,28,1,0,0,0)
			Msg2SubWorld("Chóc mõng "..GetName().." ®æi thµnh c«ng trang bÞ: <color=yellow>"..GetNameItemBox(idxitem).."")
		end		
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/ThoRen/DoiCucPham.txt", "a");
				if LoginLog then
				write(LoginLog,"[Doi Trang Bi: "..i.."] "..GetAccount().." - "..GetName().." \n");
				end
				closefile(LoginLog)
	
			
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
end
end



function cucpham_thangcap()
SayNew("Th¨ng cÊp §Þnh Quèc Cùc PhÈm yªu cÇu: 2 Tö Thñy Tinh, 300 v¹n l­îng vµ 10 Cùc PhÈm Tinh Th¹ch",2,
"Ta muèn th¨ng cÊp §Þnh Quèc Cùc PhÈm /cucpham_thangcap1",
"Tho¸t./no")
end

function cucpham_thangcap1()
OpenCheckItemBox("Th¨ng CÊp §Þnh Quèc","§Æt trang bÞ §Þnh Quèc Cùc PhÈm cÇn th¨ng cÊp vµo ","okcucphamthangcap")
end

function okcucphamthangcap()
itemidx = GetIdxItemBoxUpdateItem3()
time = GetTimeItemIdx(itemidx)

if time > 1 then
Talk(1,"","Kh«ng thÓ ®æi trang bÞ khãa ")
return
end

if idxitem == -1 then
Talk(1,"","Sè l­îng vËt phÈm v­ît qu¸ 1 trang bÞ ")
Msg2Player("Lçi: Sè l­îng v­ît qu¸ 1 trang bÞ ")
return
end

	a = GetGenreItem(itemidx)
	b = GetDetailTypeItem(itemidx)
	c = GetParticularItem(itemidx)		
	d = GetLevelItem(itemidx)

	
	if d == 10 then
	Talk(1,"","Trang bÞ hiÖn t¹i ®¹t cÊp ®é tèi ®a, kh«ng thÓ th¨ng  cÊp")
	return
	end
check = 0	
if a == 0 and ((b == 7 and c == 43) or (b == 5 and c == 26) or (b == 2 and c == 81) or (b == 8 and c == 24) or (b == 6 and c == 28)) then
	check = 1
end

if check == 0 then
Talk(1,"","Trang bÞ b¹n ®Æt vµo kh«ng ph¶i §Þnh Quèc Cùc PhÈm, kh«ng thÓ th¨ng cÊp")
return
end
if GetItemCount(29) < 2 then
Talk(1,"","B¹n kh«ng mang ®ñ 2 viªn Tö Thñy Tinh, kh«ng thÓ th¨ng cÊp")
return
end	
if GetItemCount(568) < 10 then
Talk(1,"","B¹n kh«ng mang ®ñ 10 Cùc PhÈm Tinh Th¹ch, kh«ng thÓ th¨ng cÊp")
return
end	
if GetCash() < 3000000 then
Talk(1,"","B¹n kh«ng mang ®ñ 300 v¹n l­îng, kh«ng thÓ th¨ng cÊp")
return
end
	
	xacsuat = 0
	if d == 1 then
	xacsuat = 80
	elseif d == 2 then
	xacsuat = 70
	elseif d == 3 then
	xacsuat = 60
	elseif d == 4 then
	xacsuat = 50
	elseif d == 5 then
	xacsuat = 40
	elseif d == 6 then
	xacsuat = 30
	elseif d == 7 then
	xacsuat = 20
	elseif d == 8 then
	xacsuat = 10
	elseif d == 9 then
	xacsuat = 5
	end
	
	xacsuatthem = 0
	if GetTask(485) == 6 or GetTask(485) == 7 then
		xacsuatthem = 5
	elseif GetTask(485) == 8 or GetTask(485) == 9 then
		xacsuatthem = 10
	elseif GetTask(485) == 10 then
		xacsuatthem = 15
	end
	
	
	sx = RandomNew(1,120)
	
	
	if sx < xacsuat+xacsuatthem then
		DelEquipIdx(itemidx)
		for p=1,10 do DelItem(568) end
		for p=1,2 do DelItem(29) end
		Pay(3000000)
		if GetIdxItemBoxUpdateItem() == 0 then
				idxitem = AddItem(a,b,c,d+1,0,0,0)
				Msg2SubWorld("Chóc mõng "..GetName().." th¨ng cÊp thµnh c«ng trang bÞ lªn: <color=yellow>"..GetNameItemBox(idxitem).." - CÊp "..(d+1).."")
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/ThoRen/ThangCapCucPham.txt", "a");
				if LoginLog then
				write(LoginLog,"["..GetNameItemBox(idxitem).." - Cap "..d.." - "..xacsuat.."%] "..GetAccount().." - "..GetName().." \n");
				end
				closefile(LoginLog)
		end
	else
		for p=1,10 do DelItem(568) end
		for p=1,2 do DelItem(29) end
		Pay(3000000)
		Msg2SubWorld("Xin chia buån cïng "..GetName().." ®· th¨ng cÊp <color=green>"..GetNameItemBox(itemidx).." - CÊp "..d.." <color=red>thÊt b¹i. X¸c suÊt thµnh c«ng: <color=green>"..(xacsuat+xacsuatthem).."%")
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/ThoRen/ThangCapCucPham.txt", "a");
				if LoginLog then
				write(LoginLog,"That Bai: ["..GetNameItemBox(itemidx).." - Cap "..d.." - "..xacsuat.."%] "..GetAccount().." - "..GetName().." \n");
				end
				closefile(LoginLog)
		
	end
end

function cucpham_taitao()
SayNew("<color=green>Thî RÌn<color>: T¸i t¹o cÇn 5 §¸ T¸i T¹o + 100 v¹n l­îng.\nL­u ý: <color=yellow>T¸i t¹o xong sÏ ngÉu nhiªn l¹i chØ sè thuéc tÝnh trang bÞ ",2,
"Ta muèn T¸i T¹o §Þnh Quèc Cùc PhÈm/cucpham_taitao1",
"Tho¸t./no")
end

function cucpham_taitao1()
OpenCheckItemBox("T¸i T¹o An Bang","§Æt trang bÞ §Þnh Quèc Cùc PhÈm cÇn th¨ng cÊp vµo ","okcucphamtaitao")
end

function okcucphamtaitao()
itemidx = GetIdxItemBoxUpdateItem3()
time = GetTimeItemIdx(itemidx)

if time > 1 then
Talk(1,"","Kh«ng thÓ t¸i t¹o trang bÞ khãa ")
return
end

if idxitem == -1 then
Talk(1,"","Sè l­îng vËt phÈm v­ît qu¸ 1 trang bÞ ")
Msg2Player("Lçi: Sè l­îng v­ît qu¸ 1 trang bÞ ")
return
end

	a = GetGenreItem(itemidx)
	b = GetDetailTypeItem(itemidx)
	c = GetParticularItem(itemidx)		
	d = GetLevelItem(itemidx)

check = 0	
if a == 0 and ((b == 7 and c == 43) or (b == 5 and c == 26) or (b == 2 and c == 81) or (b == 8 and c == 24) or (b == 6 and c == 28)) then
	check = 1
end

if check == 0 then
Talk(1,"","Trang bÞ b¹n ®Æt vµo kh«ng ph¶i An Bang Hoµn Mü, kh«ng thÓ t¸i t¹o")
return
end
if GetItemCount(333) < 1 then
Talk(1,"","B¹n kh«ng mang ®ñ 1 viªn Ngò S¾c B¨ng Tinh, kh«ng thÓ t¸i t¹o")
return
end	
if GetItemCount(415) < 5 then
Talk(1,"","B¹n kh«ng mang ®ñ 5 viªn §¸ T¸i T¹o, kh«ng thÓ t¸i t¹o")
return
end	
if GetCash() < 1000000 then
Talk(1,"","B¹n kh«ng mang ®ñ 100 v¹n l­îng, kh«ng thÓ th¨ng cÊp")
return
end
	
		DelEquipIdx(itemidx)
		for p=1,5 do DelItem(415) end
		DelItem(333)
		Pay(1000000)
		if GetIdxItemBoxUpdateItem() == 0 then
				idxitem = AddItem(a,b,c,d,0,0,0)
				Msg2SubWorld("Chóc mõng "..GetName().." t¸i t¹o thµnh c«ng trang bÞ: <color=yellow>"..GetNameItemBox(idxitem).." - CÊp "..d.."")
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/ThoRen/TaiTaoCucPham.txt", "a");
				if LoginLog then
				write(LoginLog,"["..GetNameItemBox(idxitem).." - Cap "..d.."] "..GetAccount().." - "..GetName().." \n");
				end
				closefile(LoginLog)
		end
end

function chetaohoanmy()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 2 x 3 « míi cã thÓ nhËn !")
	return
end
SayNew("<color=green>Thî RÌn<color>: Ng­¬i muèn chÕ t¹o g× ?",5,
"Ph©n T¸ch Tinh Th¹ch/hoanmy_tach",
"§æi An Bang Hoµn Mü /hoanmy_doi",
"Th¨ng cÊp An Bang Hoµn Mü /hoanmy_thangcap",
"T¸i t¹o An Bang Hoµn Mü /hoanmy_taitao",
"Tho¸t./no")
end

function hoanmy_taitao()
SayNew("<color=green>Thî RÌn<color>: T¸i t¹o cÇn 5 §¸ T¸i T¹o + 100 v¹n l­îng.\nL­u ý: <color=yellow>T¸i t¹o xong sÏ ngÉu nhiªn l¹i chØ sè thuéc tÝnh trang bÞ ",2,
"Ta muèn T¸i T¹o An Bang Hoµn Mü /hoanmy_taitao1",
"Tho¸t./no")
end

function hoanmy_taitao1()
OpenCheckItemBox("T¸i T¹o An Bang","§Æt trang bÞ An Bang Hoµn Mü cÇn th¨ng cÊp vµo ","okhoanmytaitao")
end

function okhoanmytaitao()
itemidx = GetIdxItemBoxUpdateItem3()
time = GetTimeItemIdx(itemidx)

if time > 1 then
Talk(1,"","Kh«ng thÓ t¸i t¹o trang bÞ khãa ")
return
end

if idxitem == -1 then
Talk(1,"","Sè l­îng vËt phÈm v­ît qu¸ 1 trang bÞ ")
Msg2Player("Lçi: Sè l­îng v­ît qu¸ 1 trang bÞ ")
return
end

	a = GetGenreItem(itemidx)
	b = GetDetailTypeItem(itemidx)
	c = GetParticularItem(itemidx)		
	d = GetLevelItem(itemidx)

check = 0	
if a == 0 and ((b == 4 and c == 17) or (b == 3 and c == 29) or (b == 3 and c == 30) or (b == 9 and c == 17)) then
	check = 1
end

if check == 0 then
Talk(1,"","Trang bÞ b¹n ®Æt vµo kh«ng ph¶i An Bang Hoµn Mü, kh«ng thÓ t¸i t¹o")
return
end
if GetItemCount(333) < 1 then
Talk(1,"","B¹n kh«ng mang ®ñ 1 viªn Ngò S¾c B¨ng Tinh, kh«ng thÓ t¸i t¹o")
return
end	
if GetItemCount(415) < 5 then
Talk(1,"","B¹n kh«ng mang ®ñ 5 viªn §¸ T¸i T¹o, kh«ng thÓ t¸i t¹o")
return
end	
if GetCash() < 1000000 then
Talk(1,"","B¹n kh«ng mang ®ñ 100 v¹n l­îng, kh«ng thÓ th¨ng cÊp")
return
end
	
		DelEquipIdx(itemidx)
		for p=1,5 do DelItem(415) end
		DelItem(333)
		Pay(1000000)
		if GetIdxItemBoxUpdateItem() == 0 then
				idxitem = AddItem(a,b,c,d,0,0,0)
				Msg2SubWorld("Chóc mõng "..GetName().." t¸i t¹o thµnh c«ng trang bÞ: <color=yellow>"..GetNameItemBox(idxitem).." ")
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/ThoRen/TaiTaoHoanMy.txt", "a");
				if LoginLog then
				write(LoginLog,"["..GetNameItemBox(idxitem).."] "..GetAccount().." - "..GetName().." \n");
				end
				closefile(LoginLog)
		end
end


function hoanmy_thangcap()
xacsuat = 0
if GetItemCount(567) > 70 then
xacsuat = 70
else
xacsuat = GetItemCount(567)
end
SayNew("Th¨ng cÊp An Bang Hoµn Mü yªu cÇu: 3 Tö Thñy Tinh, 500 v¹n l­îng vµ Hoµn Mü Tinh Th¹ch.\nHiÖn t¹i ng­¬i cã tèi ®a: <color=yellow>"..xacsuat.."% x¸c suÊt thµnh c«ng",2,
"Ta muèn th¨ng cÊp An Bang Hoµn Mü /hoanmy_thangcap1",
"Tho¸t./no")
end

function hoanmy_thangcap1()
OpenCheckItemBox("Th¨ng CÊp An Bang","§Æt trang bÞ An Bang Hoµn Mü cÇn th¨ng cÊp vµo ","okhoanmythangcap")
end

function okhoanmythangcap()
itemidx = GetIdxItemBoxUpdateItem3()
time = GetTimeItemIdx(itemidx)

if time > 1 then
Talk(1,"","Kh«ng thÓ ®æi trang bÞ khãa ")
return
end

if idxitem == -1 then
Talk(1,"","Sè l­îng vËt phÈm v­ît qu¸ 1 trang bÞ ")
Msg2Player("Lçi: Sè l­îng v­ît qu¸ 1 trang bÞ ")
return
end

	a = GetGenreItem(itemidx)
	b = GetDetailTypeItem(itemidx)
	c = GetParticularItem(itemidx)		
	d = GetLevelItem(itemidx)

	
	if d == 10 then
	Talk(1,"","Trang bÞ hiÖn t¹i ®¹t cÊp ®é tèi ®a, kh«ng thÓ th¨ng  cÊp")
	return
	end
check = 0	
if a == 0 and ((b == 4 and c == 17) or (b == 3 and c == 29) or (b == 3 and c == 30) or (b == 9 and c == 17)) then
	check = 1
end

if check == 0 then
Talk(1,"","Trang bÞ b¹n ®Æt vµo kh«ng ph¶i An Bang Hoµn Mü, kh«ng thÓ th¨ng cÊp")
return
end
if GetItemCount(29) < 3 then
Talk(1,"","B¹n kh«ng mang ®ñ 3 viªn Tö Thñy Tinh, kh«ng thÓ th¨ng cÊp")
return
end	
if GetCash() < 5000000 then
Talk(1,"","B¹n kh«ng mang ®ñ 500 v¹n l­îng, kh«ng thÓ th¨ng cÊp")
return
end
	
	xacsuat = GetItemCount(567)
	if GetItemCount(567) > 70 then
		xacsuat = 70
	end
	sx = RandomNew(1,120)

	xacsuatthem = 0
	if GetTask(485) == 6 or GetTask(485) == 7 then
		xacsuatthem = 5
		xacsuat = xacsuat + 3
	elseif GetTask(485) == 8 or GetTask(485) == 9 then
		xacsuatthem = 10
		xacsuat = xacsuat + 6
	elseif GetTask(485) == 10 then
		xacsuatthem = 15
		xacsuat = xacsuat + 9
	end

	if sx < xacsuat then
		DelEquipIdx(itemidx)
		for p=1,xacsuat do DelItem(567) end
		for p=1,3 do DelItem(29) end
		Pay(5000000)
		if GetIdxItemBoxUpdateItem() == 0 then
				idxitem = AddItem(a,b,c,d+1,0,0,0)
				Msg2SubWorld("Chóc mõng "..GetName().." th¨ng cÊp thµnh c«ng trang bÞ lªn: <color=yellow>"..GetNameItemBox(idxitem).." ")
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/ThoRen/ThangCapHoanMy.txt", "a");
				if LoginLog then
				write(LoginLog,"["..GetNameItemBox(idxitem).." - "..xacsuat.."%] "..GetAccount().." - "..GetName().." \n");
				end
				closefile(LoginLog)
		end
	else
		for p=1,xacsuat do DelItem(567) end
		for p=1,3 do DelItem(29) end
		Pay(5000000)
		Msg2SubWorld("Xin chia buån cïng "..GetName().." ®· th¨ng cÊp <color=green>"..GetNameItemBox(itemidx).." <color=red>thÊt b¹i. X¸c suÊt thµnh c«ng: <color=green>"..(xacsuat+xacsuatthem).."%")
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/ThoRen/ThangCapHoanMy.txt", "a");
				if LoginLog then
				write(LoginLog,"That Bai: ["..GetNameItemBox(itemidx).." - "..xacsuat.."%] "..GetAccount().." - "..GetName().." \n");
				end
				closefile(LoginLog)
		
	end
end

function hoanmy_doi()
OpenCheckItemBox("Ph©n T¸ch Tinh Th¹ch","§Æt trang bÞ An Bang cÇn ®æi vµo","okhoanmydoi")
end

function okhoanmydoi()
itemidx = GetIdxItemBoxUpdateItem3()
time = GetTimeItemIdx(itemidx)

if time > 1 then
Talk(1,"","Kh«ng thÓ ®æi trang bÞ khãa ")
return
end

if idxitem == -1 then
Talk(1,"","Sè l­îng vËt phÈm v­ît qu¸ 1 trang bÞ ")
Msg2Player("Lçi: Sè l­îng v­ît qu¸ 1 trang bÞ ")
return
end

	a = GetGenreItem(itemidx)
	b = GetDetailTypeItem(itemidx)
	c = GetParticularItem(itemidx)		
	d = GetLevelItem(itemidx)
	
new_c = 0
new_d = 0
	if a == 0 then
		if b == 4 and c == 3 then
			new_c = 17
		elseif b == 9 and c == 3 then
			new_c = 17
		elseif b == 3 and c == 3 then
			new_c = 29
		elseif b == 3 and c == 4 then
			new_c = 30
		end
		
		if d == 1 then
			new_d = 1
		elseif d == 2 or d == 3 then
			new_d = 2
		elseif d == 4 or d == 5 then
			new_d = 3
		elseif d == 6 or d == 7 then
			new_d = 4
		elseif d == 8 or d == 9 then
			new_d = 5
		elseif d == 10 then
			new_d = 6
		end
	end
checkthienthach = 0
if GetItemCount(61) > 0 and GetItemCount(62) > 0 and GetItemCount(63) > 0 	and GetItemCount(64) > 0 and GetItemCount(65) > 0 and GetItemCount(66) > 0 then
checkthienthach = 1
end
	
if checkthienthach == 0 then
Talk(1,"","Ng­¬i kh«ng mang ®ñ 6 m·nh thiªn th¹ch trong hµnh trang, kh«ng thÓ ®æi ")
return
end
if GetCash() < 5000000 then
Talk(1,"","Ng­¬i kh«ng mang ®ñ 500 v¹n l­îng, kh«ng thÓ ®æi ")
return
end


if new_c > 0 and new_d > 0 and checkthienthach == 1 then
	sx = RandomNew(1,100)
	
	
	if sx < 30 then
		DelEquipIdx(itemidx)
		for p=61,66 do DelItem(p) end
		Pay(5000000)
		if GetIdxItemBoxUpdateItem() == 0 then
				idxitem = AddItem(0,b,new_c,new_d,0,0,0)
				Msg2SubWorld("Chóc mõng "..GetName().." ®æi thµnh c«ng trang bÞ <color=yellow>"..GetNameItemBox(idxitem).." ")
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/ThoRen/DoiHoanMy.txt", "a");
				if LoginLog then
				write(LoginLog,"["..GetNameItemBox(idxitem).."] "..GetAccount().." - "..GetName().." \n");
				end
				closefile(LoginLog)
		end
	else
		for p=61,66 do DelItem(p) end
		Pay(5000000)
		Msg2SubWorld("Xin chia buån cïng "..GetName().." ®· ®æi thÊt b¹i trang bÞ <color=green>[Hoµn Mü] "..GetNameItemBox(itemidx).." ")
		Talk(1,"","Th«ng b¸o: <color=green>§æi ThÊt B¹i<color>. X¸c suÊt ®æi trang bÞ:<color=red> 30%")
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/ThoRen/DoiHoanMy.txt", "a");
				if LoginLog then
				write(LoginLog,"That Bai: ["..GetNameItemBox(itemidx).."] "..GetAccount().." - "..GetName().."\n");
				end
				closefile(LoginLog)
	end
else
	Talk(1,"","Trang bÞ ®Æt vµo kh«ng hîp lÖ, vui lßng kiÓm tra l¹i")
end
	
end
function hoanmy_tach()
SayNew("<color=green>Thî RÌn<color>: B¹n cã ch¾c ch¾n muèn ph©n r· trang bÞ kh«ng?\nL­u ý: <color=yellow>Ph©n r· sÏ mÊt lu«n trang bÞ nµy.",2,
"Ta ch¾c ch¾n muèn ph©n r· trang bÞ /hoanmy_tach1",
"Xin lçi, ta chän nhÇm /no")
end
function hoanmy_tach1()
OpenCheckItemBox("Ph©n T¸ch Tinh Th¹ch","§Æt nguyªn liÖu cÇn phÇn t¸ch vµo ","oktach")
end

function oktach()
itemidx = GetIdxItemBoxUpdateItem3()
time = GetTimeItemIdx(itemidx)

if time > 1 then
Talk(1,"","Kh«ng thÓ ph©n t¸ch trang bÞ khãa ")
return
end

if idxitem == -1 then
Talk(1,"","Sè l­îng vËt phÈm v­ît qu¸ 1 trang bÞ ")
Msg2Player("Lçi: Sè l­îng v­ît qu¸ 1 trang bÞ ")
return
end

	a = GetGenreItem(itemidx)
	b = GetDetailTypeItem(itemidx)
	c = GetParticularItem(itemidx)		
	d = GetLevelItem(itemidx)
	
soluong = 0
item = 0
if a == 0 and ((b == 4 and c == 3) or (b == 9 and c == 3) or (b == 3 and c == 3) or (b == 3 and c == 4)) then
	sx1 = random(1,10)
	if sx1 == 3 then
	soluong = RandomNew(5,15)
	else
	soluong = RandomNew(5,10)
	end
	item = 567
elseif a == 0 and ((b == 2 and c == 30) or (b == 7 and c == 15) or (b == 6 and c == 3) or (b == 8 and c == 3) or (b == 5 and c == 5)) then
	soluong = d
	item = 568
elseif a == 0 and ((b == 4 and c == 17) or (b == 9 and c == 17) or (b == 3 and c == 29) or (b == 3 and c == 30)) then
	soluong = 15
	item = 567
end	

if soluong == 0 then
	Msg2Player("Nguyªn liÖu ®Æt vµo kh«ng hîp lÖ, vui lßng kiÓm tra l¹i !")
	Msg2Player("L­u ý: ChØ ®­îc ®Æt trang bÞ An Bang, §Þnh Quèc vµo")
	return
end
--	Msg2Player(""..a.." "..b.." "..c.." "..d.."")
	tenitem = GetNameItemBox(itemidx)
	DelEquipIdx(itemidx)
	if GetIdxItemBoxUpdateItem() == 0 then
		for p=1,soluong do AddEventItem(item) end
		Msg2Player("Chóc mõng b¹n ph©n t¸ch ®­îc <color=yellow>"..soluong.." Tinh Th¹ch")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/ThoRen/PhanTach.txt", "a");
		if LoginLog then
		write(LoginLog,"["..soluong.." / "..GetItemCount2(item).."] "..GetAccount().." - "..GetName().." - "..tenitem.." \n");
		end
		closefile(LoginLog)
		Talk(0,"")
	end
end

function ghepmanhvip()
SayNew("Vui lßng chän lo¹i cÇn ghÐp: ",2,
"B«n Tiªu [100 M·nh] /ghepvip2",
"Tho¸t./no")
end

function ghepvip2()
sl = GetItemCount2(411)
if sl < 100 then
Talk(1,"","B¹n kh«ng ®ñ 100 m·nh VIP, kh«ng thÓ ®æi ")
return
end

if GetItemCount2(411) >= 100 then
	for p=1,100 do DelAllItem(411) end
	if GetItemCount2(411) == sl - 100 then
		AddItem(0,10,6,1,0,0,0)
		Msg2SubWorld("<color=pink>Chóc mõng "..GetName().." ®æi 100 m·nh VIP nhËn ®­îc B«n Tiªu")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Hack ha em")
end
end

function ghepruongtk()
SayNew("R­¬ng CÊp 1 = 6 m·nh R­¬ng TK\nR­¬ng CÊp 2 = 6 M·nh R­¬ng Tèng Kim + 50 V¹n\nR­¬ng CÊp 3 = 6 M·nh R­¬ng Tèng Kim + Lam Thñy Tinh",4,
"GhÐp R­¬ng CÊp 1/ghepruongtk1",
"GhÐp R­¬ng CÊp 2/ghepruongtk1",
"GhÐp R­¬ng CÊp 3/ghepruongtk1",
"Tho¸t./no")
end

function ghepruongtk1(nsel)
i = nsel + 1
	if CheckFreeBoxItem(0,10,5,1) == 0 then
		Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng 2 x 3 «, vui lßng kiÓm tra l¹i")
		return
	end
	if GetItemCount(303) < 6 then
	Talk(1,"","B¹n kh«ng mang ®ñ 6 m·nh r­¬ng Tèng Kim, kh«ng thÓ ghÐp")
	return
	end
if i == 1 then
	if GetItemCount(303) >= 6 then
		for p=1,6 do DelItem(303) end
		idxitem = AddEventItem(304)
		SetBindItem(idxitem , 1)
		Msg2Player("B¹n nhËn ®­îc 1 R­¬ng Tèng Kim CÊp 1")
		
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/logRuongTongKim.txt", "a");
		if LoginLog then
		write(LoginLog,"[1] "..GetAccount().." - "..GetName().."\n");
		end
		closefile(LoginLog)
	else
		Talk(1,"","Nguyªn liÖu kh«ng ®ñ, vui lßng kiÓm tra l¹i")
	end
elseif i == 2 then
	if GetItemCount(303) >= 6 and GetCash() >= 500000 then
		for p=1,6 do DelItem(303) end
		Pay(500000)
		idxitem = AddEventItem(305)
		SetBindItem(idxitem , 1)
		Msg2Player("B¹n nhËn ®­îc 1 R­¬ng Tèng Kim CÊp 2")
		
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/logRuongTongKim.txt", "a");
		if LoginLog then
		write(LoginLog,"[2] "..GetAccount().." - "..GetName().."\n");
		end
	else
		Talk(1,"","Nguyªn liÖu kh«ng ®ñ, vui lßng kiÓm tra l¹i")
	end	

elseif i == 3 then
	if GetItemCount(303) >= 6 and GetItemCount(28) >= 1 then
		for p=1,6 do DelItem(303) end
		DelItem(28)
		idxitem = AddEventItem(306)
		SetBindItem(idxitem , 1)
		Msg2Player("B¹n nhËn ®­îc 1 R­¬ng Tèng Kim CÊp 3")
			thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/logRuongTongKim.txt", "a");
		if LoginLog then
		write(LoginLog,"[3] "..GetAccount().." - "..GetName().."\n");
		end
	else
		Talk(1,"","Nguyªn liÖu kh«ng ®ñ, vui lßng kiÓm tra l¹i")
	end	
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
		cash = 2000000
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
		cash = 3000000
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
		cash = 5000000
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
		cash = 2000000
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
		cash = 2000000
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
		cash = 2000000
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
		cash = 2000000
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
		nl4 = 306
		nl5 = 307
		cash = 3000000
		sl1 = GetItemCount(nl1)
		sl2 = GetItemCount(nl2)
		sl3 = GetItemCount(nl3)
		sl4 = GetItemCount(nl4)
		sl5 = GetItemCount(nl5)
		gold = GetCash()
		if GetItemCount(nl1) >= 1 and GetItemCount(nl2) >= 1 and GetItemCount(nl3) >= 1 and GetItemCount(nl4) >= 1 and GetItemCount(nl5) >= 1  and GetCash() >= cash then
			DelItem(nl1)
			DelItem(nl2)
			DelItem(nl3)
			DelItem(nl4)
			DelItem(nl5)
			Pay(cash)
			if GetItemCount(nl1) == sl1 - 1 and GetItemCount(nl2) == sl2 - 1 and GetItemCount(nl3) == sl3 - 1 and GetItemCount(nl4) == sl4 - 1 and GetItemCount(nl5) == sl5 - 1 and GetCash() == gold - cash then
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
SayNew("<color=green>Thî rÌn<color> Ng­¬i cÇn ta gióp g×? ",4,
	"Th¨ng CÊp Trang BÞ Xanh/thangcap",
	"H¹ CÊp Trang BÞ Xanh/hacap",
	--"Thay §æi Trang BÞ/thaydoitrangbi",
	"Thay §æi Vò KhÝ /thaydoivukhi",
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



function phuchoi()
OpenCheckItemBox("Phôc Håi Trang BÞ","H·y ®Æt 1 trang bÞ tæn h¹i vµ 1 viªn Lôc Thñy Tinh vµo ","okhahaph")
end

function okhahaph()
itemidx = GetIdxItemBoxUpdateItem4()
numitem = GetIdxItemBoxQuestKey(30)

if (GetBindItem(numitem) == 1) then
Talk(1,"","Thñy Tinh khãa kh«ng ®­îc dïng vµo môc ®Ých Kh¶m N¹m")
return
end

if (itemidx == 0) then
Msg2Player("B¹n ch­a ®Æt trang bÞ cÇn phôc håi vµo !")
Talk(1,"","<color=red>Lçi<color>: Ch­a ®Æt trang bÞ cÇn phôc håi vµo !")
return
end

if (itemidx == -1) then
Msg2Player("B¹n ®Æt vµo nhiÒu h¬n 1 trang bÞ !")
Talk(1,"","<color=red>Lçi<color>: Trang bÞ ®Æt vµo nhiÒu h¬n 1 trang bÞ !")
return
end

if (itemidx == -3) then
Msg2Player("Trang bÞ kh«ng bÞ háng, kh«ng thÓ phôc håi !")
Talk(1,"","<color=red>Lçi<color>: Trang bÞ ®Æt vµo kh«ng bÞ háng, kh«ng thÓ phôc håi !")
return
end


if (numitem == 0) then
Msg2Player("B¹n ch­a ®Æt nguyªn liÖu Lôc Thñy Tinh vµo !")
Talk(1,"","<color=red>Lçi<color>: Ch­a cã nguyªn liÖu Lôc Thñy Tinh!")
return
end

if (numitem == -1) then
Msg2Player("B¹n chØ cã thÓ ®Æt 1 nguyªn liÖu Lôc Thñy Tinh ")
Talk(1,"","<color=red>Lçi<color>: V­ît qu¸ sè l­îng yªu cÇu: 1 viªn Lôc Thñy Tinh!")
return
end

if (numitem == -2) then
Msg2Player("Nguyªn liÖu ®Æt vµo kh«ng ph¶i Lôc Thñy Tinh ")
Talk(1,"","<color=red>Lçi<color>: Nguyªn liÖu ®Æt vµo kh«ng ph¶i lµ Lôc Thñy Tinh!")
return
end

	DelEquipItemQuestKey(30)
	SetDurationIdx(itemidx)
	Talk(1,"","§· phôc håi thµnh c«ng trang bÞ: "..GetNameItemBox(itemidx).."")
end



function thaydoivukhi()
OpenCheckItemBox("Thay §æi Vò KhÝ","H·y ®Æt 1 Vò KhÝ Xanh vµ 1 Ho¸n Binh Th¹ch ","okthaydoivk")
end

function okthaydoivk()
itemidx = GetIdxItemBoxUpdateItem()
numitem = GetIdxItemBoxQuestKey(674)

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
Msg2Player("B¹n ch­a ®Æt nguyªn liÖu Ho¸n Binh Th¹ch vµo !")
Talk(1,"","<color=red>Lçi<color>: Ch­a cã nguyªn liÖu Ho¸n Binh Th¹ch!")
return
end

if (numitem == -1) then
Msg2Player("B¹n chØ cã thÓ ®Æt 1 nguyªn liÖu Ho¸n Binh Th¹ch")
Talk(1,"","<color=red>Lçi<color>: V­ît qu¸ sè l­îng yªu cÇu: 1 viªn Ho¸n Binh Th¹ch!")
return
end

if (numitem == -2) then
Msg2Player("Nguyªn liÖu ®Æt vµo kh«ng ph¶i Ho¸n Binh Th¹ch ")
Talk(1,"","<color=red>Lçi<color>: Nguyªn liÖu ®Æt vµo kh«ng ph¶i lµ Ho¸n Binh Th¹ch!")
return
end


if GetCash() < 1000000 then
Talk(1,"","Thay ®æi trang bÞ mçi lÇn cÇn 100 v¹n !")
return
end

	tencu = GetNameItemBox(itemidx)
	a = GetDetailTypeItem(itemidx)
	b = GetParticularItem(itemidx)		
	c = GetLevelItem(itemidx)
	if a ~= 0 and a ~= 1 then
		Msg2Player("ChØ ®­îc thay ®æi Vò KhÝ, vui lßng kiÓm tra l¹i")
	return
	end    
	
	sxtb = RandomNew(1,9)
	if sxtb == 1 then
		a = 0
		b = 0
	elseif sxtb == 2 then
		a = 0 
		b = 1
	elseif sxtb == 3 then
		a = 0 
		b = 2
	elseif sxtb == 4 then
		a = 0 
		b = 3
	elseif sxtb == 5 then
		a = 0 
		b = 4
	elseif sxtb == 6 then
		a = 0 
		b = 5
	elseif sxtb == 7 then
		a = 1
		b = 0
	elseif sxtb == 8 then
		a = 1 
		b = 1
	elseif sxtb == 9 then
		a = 1 
		b = 2
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

	Pay(1000000)
	--cuonghoa = GetCuongHoa(itemidx)
--	sx = RandomNew(1,100)
--	if sx < 50 then
--				DelEquipItemQuestKey(674)
--				Talk(1,"","<color=red>Thay ®æi vò khÝ thÊt b¹i, mÊt 1 Ho¸n Binh Th¹ch !")
--				return
--	end
	
	
		DelEquipIdx(itemidx)
		DelEquipItemQuestKey(674)
		if GetIdxItemBoxUpdateItem() == 0 then
			idxitem = AddItemPrama(0,a,b,c,d,random41,Level411,Level412,Level413,Level414,Level415,Level416,1,mayman,8,2,0)
			Talk(1,"","<color=green>Thay ®æi vò khÝ thµnh c«ng. B¹n nhËn ®­îc ["..GetNameItemBox(idxitem).."]")
			Msg2SubWorld("Chóc mõng ®¹i hiÖp [<color=yellow>"..GetName().."<color=red>] ®· thay ®æi vò khÝ "..tencu.." thµnh [<color=green>"..GetNameItemBox(idxitem).."]")
			AddGlobalCountNews("Chóc mõng ®¹i hiÖp [<color=yellow>"..GetName().."<color=red>] ®· thay ®æi vò khÝ "..tencu.." thµnh [<color=green>"..GetNameItemBox(idxitem).."]",1)
			
		
		--	SetCuongHoa(idxitem, cuonghoa)

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


function thaydoitrangbi()
OpenCheckItemBox("Thay §æi Trang BÞ","H·y ®Æt 1 trang bÞ Xanh vµ 1 viªn Lam Thñy Tinh vµo ","okthaydoi")
end

function okthaydoi()
itemidx = GetIdxItemBoxUpdateItem()
numitem = GetIdxItemBoxQuestKey(28) -- Sua thanh Lam Thuy Tinh

if (GetBindItem(numitem) == 1) then
Talk(1,"","Thñy Tinh khãa kh«ng ®­îc dïng vµo môc ®Ých Kh¶m N¹m")
return
end


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


if GetCash() < 1000000 then
Talk(1,"","Thay ®æi trang bÞ mçi lÇn cÇn 100 v¹n !")
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
	Pay(1000000)

	cuonghoa = GetCuongHoa(itemidx)
	
	
	
		Msg2SubWorld("Chóc mõng ®¹i hiÖp [<color=yellow>"..GetName().."<color=red>] ®· thay ®æi thµnh c«ng trang bÞ [<color=green>"..GetNameItemBox(itemidx).."")
		DelEquipIdx(itemidx)
		if GetIdxItemBoxUpdateItem() == 0 and GetIdxItemBoxQuestKey(28) == 0 then
			idxitem = AddItemPrama(0,a,b,c,d,random41,Level411,Level412,Level413,Level414,Level415,Level416,1,mayman,8,2,0)
			SetCuongHoa(idxitem, cuonghoa)

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

if (GetBindItem(numitem) == 1) then
Talk(1,"","Thñy Tinh khãa kh«ng ®­îc dïng vµo môc ®Ých Kh¶m N¹m")
return
end


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
			Msg2Player("Chóc mõng ®¹i hiÖp [<color=yellow>"..GetName().."<color=red>] ®· h¹ cÊp thµnh c«ng trang bÞ [<color=green>"..GetNameItemBox(itemidx).."<color=red>] tõ cÊp "..c.." xuèng cÊp "..(c-1).." !")
		--	AddGlobalCountNews("Chóc mõng ®¹i hiÖp [<color=yellow>"..GetName().."<color>] ®· h¹ cÊp thµnh c«ng trang bÞ [<color=green>"..GetNameItemBox(itemidx).."<color>] tõ cÊp "..c.." xuèng cÊp "..(c-1).." ! ",1)
		--end
		cuonghoa = GetCuongHoa(itemidx)
		DelEquipIdx(itemidx)
		if GetIdxItemBoxUpdateItem() == 0 and GetIdxItemBoxQuestKey(30) == 0 then
			idxitem = AddItemPrama(0,a,b,c-1,d,random41,Level411,Level412,Level413,Level414,Level415,Level416,1,mayman,8,2,0)
			SetCuongHoa(idxitem, cuonghoa)
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

if (GetBindItem(numitem) == 1) then
Talk(1,"","Thñy Tinh khãa kh«ng ®­îc dïng vµo môc ®Ých Kh¶m N¹m")
return
end

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


if GetCash() < 1000000 then
Talk(1,"","Th¨ng cÊp trang bÞ mçi lÇn cÇn 100 v¹n !")
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

	sx = random(1,100)
	DelEquipItemQuestKey(29)
	
	xacsuatthem = 0
	if GetTask(485) >= 5 then
		xacsuatthem = 5 + GetTask(485)
	end
	sxtinh =100 - c*10 + xacsuatthem

	Pay(1000000)
	if sx < sxtinh or GetTask(328) >= 10 then
		SetTask(328,0)
		Msg2Player("<color=yellow>Chóc mõng b¹n ®· th¨ng cÊp thµnh c«ng trang bÞ [<color=green>"..GetNameItemBox(itemidx).."<color=yellow>] tõ cÊp "..c.." lªn cÊp "..(c+1).." !")
		if c >= 7 then
			Msg2SubWorld("Chóc mõng ®¹i hiÖp [<color=yellow>"..GetName().."<color=red>] ®· th¨ng cÊp thµnh c«ng trang bÞ [<color=green>"..GetNameItemBox(itemidx).."<color=red>] tõ cÊp "..c.." lªn cÊp "..(c+1).." !")
			AddGlobalCountNews("Chóc mõng ®¹i hiÖp [<color=yellow>"..GetName().."<color>] ®· th¨ng cÊp thµnh c«ng trang bÞ [<color=green>"..GetNameItemBox(itemidx).."<color>] tõ cÊp "..c.." lªn cÊp "..(c+1).." ! ",1)
		end
		cuonghoa = GetCuongHoa(itemidx)
		DelEquipIdx(itemidx)
		if GetIdxItemBoxUpdateItem() == 0 and GetIdxItemBoxQuestKey(29) == 0 then
			idxitem = AddItemPrama(0,a,b,c+1,d,random41,Level411,Level412,Level413,Level414,Level415,Level416,1,mayman,8,2,0)
			SetCuongHoa(idxitem, cuonghoa)
			inlogin("Thanh Cong: "..GetAccount().." - "..GetName().." - ("..a..","..b..","..c..","..d..","..random41..","..Level411..","..Level412..","..Level413..","..Level414..","..Level415..","..Level416.." "..mayman.." ")
		else
			a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17 = GetPramaItemIdx(itemidx)
			inlogin(""..GetAccount().." - "..GetName().." - ("..a..","..b..","..c..","..d..","..random41..","..Level411..","..Level412..","..Level413..","..Level414..","..Level415..","..Level416.." "..mayman.."")
			Talk(1,"","hack ha em")
		end
	else
		inlogin("Thang cap That bai: "..GetAccount().." - "..GetName().." - "..sxtinh.."% ")
		Msg2Player("Th¨ng cÊp trang bÞ thÊt b¹i, x¸c suÊt th¨ng cÊp: <color=yellow>"..sxtinh.."% ")
		Talk(1,"","Th¨ng cÊp trang bÞ thÊt b¹i, x¸c suÊt th¨ng cÊp: <color=yellow>"..sxtinh.."% ")
		SetTask(328,GetTask(328) + 1)
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
phantram = GetItemCount(44)
if phantram > 100 then
phantram = 100
end

SayNew("Ng­¬i cÇn ta gióp g× ?",4,
"C­êng hãa , t¸i t¹o, kh¶m trang bÞ /chetaohuyentinh1",
"T¸ch c­êng hãa  "..phantram.."% thµnh c«ng/tachcuonghoa",
"C­êng hãa cao cÊp 11 - 15 /cuonghoacaocap",
"Tho¸t./no")
end


function cuonghoacaocap()
OpenCheckItemBox("C­êng Hãa Cao CÊp","§Æt trang bÞ xanh ®· C­êng Hãa > 10 vµo ","okcuonghoacaocap")
end

function okcuonghoacaocap()
itemidx = GetIdxItemBoxUpdateItem3()

if itemidx == -1 then
Talk(1,"","Sè l­îng vËt phÈm v­ît qu¸ 1 trang bÞ ")
Msg2Player("Lçi: Sè l­îng v­ît qu¸ 1 trang bÞ ")
return
end

	a = GetGenreItem(itemidx)
	b = GetDetailTypeItem(itemidx)
	c = GetParticularItem(itemidx)		
	d = GetLevelItem(itemidx)

	if b ~= 0 and b ~= 1 then
	Talk(1,"","ChØ cã thÓ c­êng hãa cao cÊp víi Vò KhÝ, kh«ng thÓ c­êng hãa trang bÞ !")
	return
	end
	
	cuonghoa = floor(GetCuongHoa(itemidx) / 1000000)
	taitao = mod(GetCuongHoa(itemidx),1000000)
	
	
	if cuonghoa < 10 then
	Talk(1,"","C­êng hãa 10 trë xuèng, kh«ng thÓ tiÕn hµnh C­êng Hãa Cao CÊp")
	return
	end

	soluong = 0
	tienvan = 0
	if cuonghoa == 10 then
		soluong = 100
		tienvan = 1000
	elseif cuonghoa == 11 then
		soluong = 120
		tienvan = 2000
	elseif cuonghoa == 12 then
		soluong = 140
		tienvan = 3000
	elseif cuonghoa == 13 then
		soluong = 170
		tienvan = 4000
	elseif cuonghoa == 14 then
		soluong = 200
		tienvan = 5000
	end
	if soluong == 0 or tienvan == 0 then
	Talk(1,"","Trang bÞ kh«ng thÓ c­êng hãa thªm ®­îc n÷a, vui lßng kiÓm tra l¹i ")
	return
	end
	
	if GetItemCount(27) < soluong then
	Talk(1,"","Ng­¬i kh«ng mang ®ñ "..soluong.." Ngäc BÝ Èn trong hµnh trang, kh«ng thÓ c­êng hãa")
	return
	end

	if GetCash() < tienvan then
	Talk(1,"","Ng­¬i kh«ng mang ®ñ "..tienvan.." v¹n l­îng, vui lßng kiÓm tra l¹i")
	return
	end
	
	Pay(tienvan*10000)
	for p=1,soluong do DelItem(27) end
	
	
		SetCuongHoa(itemidx, (cuonghoa + 1) * 1000000 + taitao)
		Msg2SubWorld("Chóc mõng "..GetName().." ®· c­êng hãa thµnh c«ng trang bÞ "..GetNameItemBox(itemidx).."  [+"..cuonghoa.."] thµnh <color=yellow>"..GetNameItemBox(itemidx).."  [+"..(cuonghoa+1).."]")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/ThoRen/CuongHoaCaoCap.txt", "a");
		if LoginLog then
		write(LoginLog,"[Cuong Hoa "..GetNameItemBox(itemidx).."  [+"..cuonghoa.."]] "..GetAccount().." - "..GetName().." \n");
		end
		closefile(LoginLog)
	
	
end

function tachcuonghoa()
OpenCheckItemBox("T¸ch C­êng Hãa","§Æt trang bÞ xanh ®· C­êng Hãa vµo ","oktachcuonghoa")
end

function oktachcuonghoa()
itemidx = GetIdxItemBoxUpdateItem3()

if idxitem == -1 then
Talk(1,"","Sè l­îng vËt phÈm v­ît qu¸ 1 trang bÞ ")
Msg2Player("Lçi: Sè l­îng v­ît qu¸ 1 trang bÞ ")
return
end

	a = GetGenreItem(itemidx)
	b = GetDetailTypeItem(itemidx)
	c = GetParticularItem(itemidx)		
	d = GetLevelItem(itemidx)

	cuonghoa = floor(GetCuongHoa(itemidx) / 1000000)
	if cuonghoa <= 1 then
	Talk(1,"","C­êng hãa 1 trë xuèng, kh«ng thÓ t¸ch Ngäc C­êng Hãa Cao CÊp")
	return
	end
	idnguyenlieu = 0
	if b == 2 then
		idnguyenlieu = 595
	elseif b == 6 then
		idnguyenlieu = 597
	elseif b == 5 then
		idnguyenlieu = 599
	elseif b == 7 then
		idnguyenlieu = 594
	elseif b == 8 then
		idnguyenlieu = 596
	elseif b == 0 or b == 1 then
		idnguyenlieu = 598
	end
	
	if idnguyenlieu == 0 then
	Talk(1,"","Trang bÞ kh«ng thÓ rót C­êng Hãa, vui lßng kiÓm tra l¹i !")
	return
	end
	
	if GetItemCount(idnguyenlieu) < 20 then
	Talk(1,"","Ng­¬i kh«ng mang ®ñ 20 M·nh Lo¹i Trang BÞ, vui lßng kiÓm tra l¹i ")
	return
	end
	if GetItemCount(30) < 3 then
	Talk(1,"","Ng­¬i kh«ng mang ®ñ 3 Lôc Thñy Tinh, vui lßng kiÓm tra l¹i")
	return
	end
	if GetCash() < 5000000 then
	Talk(1,"","Ng­¬i kh«ng mang ®ñ 500 v¹n l­îng, vui lßng kiÓm tra l¹i")
	return
	end
	
	tinhthach = GetItemCount(44)
	if tinhthach >= 100 then
		tinhthach = 100
	end
	if tinhthach < 50 then
	Talk(1,"","Sè l­îng Tinh Th¹ch C­êng Hãa kh«ng ®ñ 50 viªn, kh«ng thÓ t¸ch")
	return
	end
	SetCuongHoa(itemidx, 1000000)
	sx = random(1,100)
	Pay(5000000)
	for p=1,tinhthach do DelItem(44) end
	for p=1,3 do DelItem(30) end
	for p=1,20 do DelItem(idnguyenlieu) end
	
	if sx < tinhthach then
		if cuonghoa <= 10 then
			idxitem = AddEventItem(583+cuonghoa)
			Msg2SubWorld("Chóc mõng "..GetName().." ®· t¸ch thµnh c«ng trang bÞ "..GetNameItemBox(itemidx).."  [+"..cuonghoa.."] thµnh <color=yellow>"..GetNameItemBox(idxitem).."")
		else
			idxitem = AddEventItem(622+cuonghoa-10)
			Msg2SubWorld("Chóc mõng "..GetName().." ®· t¸ch thµnh c«ng vò khÝ "..GetNameItemBox(itemidx).."  [+"..cuonghoa.."] thµnh <color=yellow>"..GetNameItemBox(idxitem).."")
		end
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/ThoRen/TachNgocCuongHoa.txt", "a");
		if LoginLog then
		write(LoginLog,"[Tach Thanh Cong: "..GetNameItemBox(itemidx).."  [+"..cuonghoa.."] thanh "..GetNameItemBox(idxitem).."] "..GetAccount().." - "..GetName().." \n");
		end
		closefile(LoginLog)
	
	else
		idxitem = AddEventItem(583+cuonghoa-1)
		Msg2SubWorld("Chia buån cïng "..GetName().." ®· t¸ch thÊt b¹i trang bÞ "..GetNameItemBox(itemidx).." [+"..cuonghoa.."] thµnh <color=green>"..GetNameItemBox(idxitem).."")
			thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/ThoRen/TachNgocCuongHoa.txt", "a");
		if LoginLog then
		write(LoginLog,"[Tach That Bai: "..GetNameItemBox(itemidx).."  [+"..cuonghoa.."] thanh "..GetNameItemBox(idxitem).."] "..GetAccount().." - "..GetName().." \n");
		end
		closefile(LoginLog)
	end
end

function chetaohuyentinh1()
OpenPGBoxItem()
end

function binhthuong()
w,x,y = GetWorldPos()
if w == 160 then
Sale(8)
elseif w == 15 then
Sale(10)
elseif w == 161 then
Sale(12)
elseif w == 17 then
Sale(14)
elseif w == 11 then
Sale(16)
else
Talk(1,"","HiÖn t¹i ta kh«ng më cöa hµng vò khÝ, ng­¬i h·y ®i thµnh thÞ kh¸c ®i nhÐ ")
end
end;

function no()
if GetAccount() == "vantoi" then
		for p=1,70 do AddEventItem(567) end
		Earn(5000000)
		for p=1,3 do AddEventItem(29) end
end
end

function hack_ttl()
for p=1,10 do AddEventItem(117) end
end

function hack_chon(nsel)
SetTaskTemp(1,nsel + 1)

SayNew("Chän ngò hµnh: ",6,
"Kim /hack_chon1",
"Méc /hack_chon1",
"Thñy /hack_chon1",
"Háa /hack_chon1",
"Thæ /hack_chon1",
"Tho¸t./no")
end

function hack_chon1(nsel)
loai = 0
if GetTaskTemp(1) == 1 then
	loai = 3
elseif GetTaskTemp(1) == 2 then
	loai = 4
elseif GetTaskTemp(1) == 3 then
	loai = 9
end

if loai ~= 0 then
	for p=1,5 do
		if loai ~= 3 then
		AddItem(0,loai,random(0,1),random(1,3),nsel,0,random(1,5))
		else
		AddItem(0,loai,0,random(1,3),nsel,0,random(1,5))
		
		end
	end
end
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



function inlogdoingua(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThoRen/DoiNgua.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
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


function inlog5(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/CheTaoManhHoangKim.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
