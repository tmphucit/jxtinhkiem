-- CheckMagicItem(idx,85,100,200)  check id 85 co diem tu 100 - 200 chua. Neu dung tra ve 1, sai ve 0
-- GetLevelItem(idx) -- Level trang bi
-- GetSeriItem(idx) -- Ngu hanh trang bi theo so
--  DelEquipIdx (idx)  Del trang bi trong ruong
-- GetParticularItem(idx)
--  OpenSlectBoxCheck(1,2,5,"ok"); Nhan thuong
-- So nhiem vu trong ngay: 82
-- So nhiem vu lien tiep: 83
-- Giai doan nhiem vu: 84
-- Loai Nhiem vu: 85
-- §iÓm nhiÖm vô yeu cau: 86
-- §iÓm nhiem vu dat duoc: 87
-- Ban do yeu cau nv do chi: 88
-- Ban do SHXT: 89
-- Sè lÇn huy nhiem vu: 90
-- Phan thuong 1 2 3 : 91 - 93
-- Tri Kinh Nghiem Loai: Task 94, 1 la thieu, 2 la du


function main()


gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
time = gio * 60 + phut
ngay = tonumber(date("%d"))
if GetTask(136) == ngay then
	if (GetTask(82) >= 20) then
	Talk(1,"","H«m nay ng­¬i ®· lµm ®ñ sè nhiÖm vô ta yªu cÇu, ngµy mai h·y quay l¹i nhÐ !")
	return
	end
else
	SetTask(136,ngay)
	SetTask(137,0)
	SetTask(82,0)
	SetTask(9,0)
	SetTask(2,0)
	SetTask(3,0)
end

if GetTask(3) > 0 then
if time < GetTask(3) then
	Msg2Player(" "..time.." "..GetTask(3).." ")
	Talk(1,"","<color=green>D· TÈu: <color>: Ng­¬i ®· hñy nhiÖm vô liªn tôc <color=red>3<color> lÇn, hÖ thèng cÊm lµm nhiÖm vô 1 giê, h·y quay l¹i sau nhÐ !")
	return
else
	SetTask(3,0)
	SetTask(2,0)	
end
end



if GetTask(89) < 0 then
SetTask(89,GetTask(89)+1000)
end

if GetTask(85) == 7 and GetTask(88) > 9 then
SetTask(84,0)
elseif GetTask(85) == 9 and GetTask(88) > 3 then
SetTask(84,0)
end
if GetTask(84) == 0 then -- Chua nhan nv
soluong = 20 - GetTask(82)
Say("<color=green>D· TÈu: <color>: VÞ C«ng tö ®· hoµn thµnh <color=yellow>"..GetTask(82).."<color> nhiÖm vô, nhiÖm vô nµy ngµy h«m nay cã thÓ thùc hiÖn l¹i <color=yellow>"..soluong.."<color> lÇn n÷a, ng­¬i cã muèn lµm n÷a kh«ng  ",3,
"Ta muèn nhËn nhiÖm vô tiÕp theo /nhannv2", 
"NhËn phÇn th­ëng/nhanptmoc",
"§Ó ta nghÜ ng¬i mét l¸t ®·! Ta bËn råi /no")
elseif GetTask(84) == 1 or GetTask(84) == 2 or GetTask(84) == 3 or GetTask(84) == 4 then -- Da nhan nv chua hoan thanh
	if GetTask(85) == 1 then -- Tim do chi
		Say("<color=green>D· TÈu: <color>: §©y lµ nhiÖm vô thø "..GetTask(82).."/20, Ng­¬i h·y ®Õn <color=yellow>"..DoChi_Map[GetTask(88)].." t×m gióp ta "..GetTask(86).." tÊm ThÇn BÝ §å ChÝ ",3,
		"Ta ®· hoµn thµnh nhiÖm vô lÇn nµy /hoanthanh",
		"Ta muèn hñy bá nhiÖm vô kh«ng lµm n÷a /huy",
		"Ta ®ang bËn, hÑn gÆp ng­êi sau /no")
	elseif GetTask(85) == 2 then -- tim mat chi
		Say("<color=green>D· TÈu: <color>: §©y lµ nhiÖm vô thø "..GetTask(82).."/20, Ng­¬i h·y ®Õn <color=yellow>"..DoChi_Map[GetTask(88)].." t×m gióp ta "..GetTask(86).." tÊm MËt ChÝ ",3,
		"Ta ®· hoµn thµnh nhiÖm vô lÇn nµy /hoanthanh",
		"Ta muèn hñy bá nhiÖm vô kh«ng lµm n÷a /huy",
		"Ta ®ang bËn, hÑn gÆp ng­êi sau /no")
	elseif GetTask(85) == 3 then -- Mua Item Shop
		Say("<color=green>D· TÈu: <color>: §©y lµ nhiÖm vô thø "..GetTask(82).."/20\nNg­¬i h·y ®Õn <color=yellow>"..Mua_Shop[GetTask(88)][1].." - "..Mua_Shop[GetTask(88)][2].." gióp ta mua "..Mua_Shop[GetTask(88)][3].." [CÊp "..Mua_Shop[GetTask(88)][6].."] ",3,
		"§îi xi, ta sÏ ®i mua gióp ng­êi /no",
		"Ta ®Õn giao vËt phÈm nhiÖm vô /hoanthanh",
		"Ta muèn hñy bá nhiÖm vô kh«ng lµm n÷a /huy")
	elseif GetTask(85) == 4 then -- Tim Trang Suc : Ten + He
		Say("<color=green>D· TÈu: <color>: §©y lµ nhiÖm vô thø "..GetTask(82).."/20\nH·y t×m cho ta 1 <color=yellow>"..TrangSuc_Ten[GetTask(88)][1].."",3,
		"§îi xi, ta sÏ ®i mua gióp ng­êi /no",
		"Ta ®Õn giao vËt phÈm nhiÖm vô /hoanthanh",
		"Ta muèn hñy bá nhiÖm vô kh«ng lµm n÷a /huy")
	elseif GetTask(85) == 5 then -- Tim Option
		Say("<color=green>D· TÈu: <color>: §©y lµ nhiÖm vô thø "..GetTask(82).."/20\nH·y t×m cho ta 1 trang bÞ cã <color=yellow>"..Option[GetTask(88)][1].." tõ "..Option[GetTask(88)][3].." ®Õn "..Option[GetTask(88)][4].." ",3,
		"§îi xi, ta sÏ ®i mua gióp ng­êi /no",
		"Ta ®Õn giao vËt phÈm nhiÖm vô /hoanthanh",
		"Ta muèn hñy bá nhiÖm vô kh«ng lµm n÷a /huy")
	elseif GetTask(85) == 6 then -- Tim Trang suc _ Option
		Say("<color=green>D· TÈu: <color>: §©y lµ nhiÖm vô thø "..GetTask(82).."/20\nH·y t×m cho ta 1 trang bÞ <color=yellow>"..Item_Option[GetTask(88)][1].." cã "..Item_Option2[GetTask(86)][1].."",3,
		"§îi xi, ta sÏ ®i mua gióp ng­êi /no",
		"Ta ®Õn giao vËt phÈm nhiÖm vô /hoanthanh",
		"Ta muèn hñy bá nhiÖm vô kh«ng lµm n÷a /huy")
	elseif GetTask(85) == 7 then -- TrÞ danh väng, phóc duyªn, tèng kim
		Say("<color=green>D· TÈu: <color>: §©y lµ nhiÖm vô thø "..GetTask(82).."/20, §· liªn tiÕp hoµn thµnh <color=red>"..GetTask(83).."<color> nhiÖm vô.\nNg­¬i h·y ®i n©ng <color=yellow>"..Tri_Diem[GetTask(88)][1].." thªm "..Tri_Diem[GetTask(88)][3].." ®iÓm ",3,
		"Ta ®· hoµn thµnh nhiÖm vô lÇn nµy /hoanthanh",
		"Ta muèn hñy bá nhiÖm vô kh«ng lµm n÷a /huy",
		"Ta ®ang bËn, hÑn gÆp ng­êi sau /no")
	elseif GetTask(85) == 8 then -- TrÞ PK
		Say("<color=green>D· TÈu: <color>: §©y lµ nhiÖm vô thø "..GetTask(82).."/20, §· liªn tiÕp hoµn thµnh <color=red>"..GetTask(83).."<color> nhiÖm vô.\nNg­¬i h·y ®i n©ng <color=yellow>trÞ PK lªn "..GetTask(88).."  ®iÓm ",3,
		"Ta ®· hoµn thµnh nhiÖm vô lÇn nµy /hoanthanh",
		"Ta muèn hñy bá nhiÖm vô kh«ng lµm n÷a /huy",
		"Ta ®ang bËn, hÑn gÆp ng­êi sau /no")
	elseif GetTask(85) == 9 then -- TrÞ Kinh NghiÖm
		Say("<color=green>D· TÈu: <color>: §©y lµ nhiÖm vô thø "..GetTask(82).."/20, §· liªn tiÕp hoµn thµnh <color=red>"..GetTask(83).."<color> nhiÖm vô.\nNg­¬i h·y ®i n©ng <color=yellow>TrÞ Kinh NghiÖm lªn "..GetTask(88).."  ®iÓm ",3,
		"Ta ®· hoµn thµnh nhiÖm vô lÇn nµy /hoanthanh",
		"Ta muèn hñy bá nhiÖm vô kh«ng lµm n÷a /huy",
		"Ta ®ang bËn, hÑn gÆp ng­êi sau /no")
	end
end
end

function nhanptmoc()
if GetTask(83) >= (GetTask(106)+1)*100 then
	Say("<color=green>D· TÈu: <color>: B¹n ®· hoµn thµnh <color=red>"..GetTask(83).."<color> nhiÖm vô D· TÈu. Vui lßng nhËn phÇn th­ëng ®¹t mèc <color=yellow>"..((GetTask(106)+1)*100).."<color> cña m×nh ",2,
	"Ta ®Õn ®Ó nhËn phÇn th­ëng /nhanphanthuong",
	"Ta muèn xem danh s¸ch c¸c mèc phÇn th­ëng/xemdsmoc")
else
	Say("<color=green>D· TÈu: <color>: B¹n ®· hoµn thµnh <color=red>"..GetTask(83).."<color> nhiÖm vô D· TÈu. PhÇn th­ëng nhËn ®­îc khi ®¹t mèc <color=yellow>"..((GetTask(106)+1)*100).."<color> nhiÖm vô hoµn thµnh liªn tiÕp ",3,
	"NhËn phÇn th­ëng hoµn thµnh 20 nhiÖm vô mçi ngµy/nhanptnvmoingay",
	"Ta sÏ cè g¾ng thªm /no",
	"Ta muèn xem danh s¸ch c¸c mèc phÇn th­ëng/xemdsmoc")
	
end
end

function nhanptnvmoingay()
nl = GetTask(111)
if GetTask(111) >= 100 then
	Talk(1,"","B¹n ®· nhËn phÇn th­ëng ngµy h«m nay råi !")
elseif GetTask(111) >= 20 and GetTask(111) < 100 then
	SetTask(111,100)
	

	if GetLevel() >= 80 then
	sx = random(1,2)
	if sx == 1 then
		AddEventItem(117)
		Msg2Player("B¹n nhËn ®­îc 1 Tiªn Th¶o Lé 1 giê ")
	else
		AddEventItem(118)
		Msg2Player("B¹n nhËn ®­îc 1 N÷ Nhi Hång 1 giê ")
	end
	else
		Earn(10000)
		Msg2Player("B¹n nhËn ®­îc 1 v¹n l­îng !")
	end
	Talk(0,"")
else
	Talk(1,"","B¹n hoµn thµnh "..GetTask(111).." / 20 nhiÖm vô ngµy h«m nay, ch­a ®¹t yªu cÇu !")
end
end

function nhanphanthuong()
if CheckFreeBoxItem(0,10,5,1) == 0 then
Talk(1,"","§Ó trång hµnh trang 2 x 3 « ®Ó nhËn phÇn th­ëng , nÕu kh«ng sÏ bÞ mÊt !")
return
end

sl = GetTask(106)
if GetTask(83) >= (sl+1)*100 then
	SetTask(106,GetTask(106)+1)
	if GetTask(106) == sl+1 then
		phanthuongmoc(GetTask(106))
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","hack ha em")
end
end

function phanthuongmoc(num)
if num == 10 then
	sx1 = random(1,2)
	if sx1 == 1 then
		for i=1,random(1,3) do
			AddEventItem(120) -- TTL 6 gio
		end
		Msg2SubWorld("Chóc mõng ["..GetName().."] hoµn thµnh mèc 1000 nhiÖm vô D· TÈu nhËn ®­îc phÇn th­ëng Tiªn Th¶o Lé 6 giê ")
	else
		for i=1,random(1,3) do
			AddEventItem(116) -- NNH 6 gio
		end
		Msg2SubWorld("Chóc mõng ["..GetName().."] hoµn thµnh mèc 1000 nhiÖm vô D· TÈu nhËn ®­îc phÇn th­ëng N÷ Nhi Hång 6 giê ")
	end

elseif num == 20 then
	sx1 = random(1,2)
	if sx1 == 1 then
		AddEventItem(28)
		AddEventItem(29)
		AddEventItem(30)		
		Msg2SubWorld("Chóc mõng ["..GetName().."] hoµn thµnh mèc 2000 nhiÖm vô D· TÈu nhËn ®­îc 1 Bé Thñy Tinh ")
	else
		for i=1,6 do 
			AddEventItem(31)
		end	
		Msg2SubWorld("Chóc mõng ["..GetName().."] hoµn thµnh mèc 2000 nhiÖm vô D· TÈu nhËn ®­îc 1 Bé Tinh Hång B¶o Th¹ch ")
	end
elseif num == 30 then
	sx1 = random(1,2)
	if sx1 == 1 then
		for i=1,random(1,3) do
			AddEventItem(0) -- VLMT
		end
		Msg2SubWorld("Chóc mõng ["..GetName().."] hoµn thµnh mèc 3000 nhiÖm vô D· TÈu nhËn ®­îc phÇn th­ëng Vâ L©m MËt TÞch ")
	else
		for i=1,random(1,3) do
			AddEventItem(1) -- TTK
		end
		Msg2SubWorld("Chóc mõng ["..GetName().."] hoµn thµnh mèc 3000 nhiÖm vô D· TÈu nhËn ®­îc phÇn th­ëng TÈy Tñy Kinh ")
	end
elseif num == 40 then
	sx = random(1,2)
	if sx == 1 then
		sx1 = random(1,3)
		if sx1 == 1 then
		AddItem(0,4,4,1,0,0,0) -- DC Nhu Tinh
		elseif sx1 == 2 then
		AddItem(0,9,5,1,0,0,0)
		else
		AddItem(0,3,5,1,0,0,0)
		end
		Msg2SubWorld("Chóc mõng ["..GetName().."] hoµn thµnh mèc 4000 nhiÖm vô D· TÈu nhËn ®­îc phÇn th­ëng Trang bÞ Nhu T×nh")
	else	
		sx1 = random(1,4)
		if sx1 == 1 then
		AddItem(0,4,5,1,0,0,0) -- DC Hiep Cot
		elseif sx1 == 2 then
		AddItem(0,2,31,1,0,0,0)
		elseif sx1 == 3 then
		AddItem(0,9,4,1,0,0,0)
		else
		AddItem(0,3,6,1,0,0,0)
		end
		Msg2SubWorld("Chóc mõng ["..GetName().."] hoµn thµnh mèc 4000 nhiÖm vô D· TÈu nhËn ®­îc phÇn th­ëng Trang bÞ HiÖp Cèt ")
	end
elseif num == 50 then
	sx1 = random(1,5)
	if sx1 == 1 then
	AddItem(0,2,30,1,0,0,0)
	elseif sx1 == 2 then
	AddItem(0,6,3,1,0,0,0)
	elseif sx1 == 3 then
	AddItem(0,5,5,1,0,0,0)
	elseif sx1 == 4 then
	AddItem(0,8,3,1,0,0,0)
	else
	AddItem(0,7,15,1,0,0,0)
	end
	Msg2SubWorld("Chóc mõng ["..GetName().."] hoµn thµnh mèc 5000 nhiÖm vô D· TÈu nhËn ®­îc phÇn th­ëng Trang bÞ §Þnh Quèc ")
elseif num == 60 then
	sx1 = random(1,4)
	if sx1 == 1 then
	AddItem(0,4,3,1,0,0,0) -- DC An Bang
	elseif sx1 == 2 then
	AddItem(0,9,3,1,0,0,0)
	elseif sx1 == 3 then
	AddItem(0,3,3,1,0,0,0)
	else
	AddItem(0,3,4,1,0,0,0)		
	end
	Msg2SubWorld("Chóc mõng ["..GetName().."] hoµn thµnh mèc 6000 nhiÖm vô D· TÈu nhËn ®­îc phÇn th­ëng Trang bÞ An Bang")
elseif num == 80 then
	
	Msg2SubWorld("Chóc mõng ["..GetName().."] hoµn thµnh mèc 8000 nhiÖm vô D· TÈu nhËn ®­îc phÇn th­ëng ThÇn Thó Phi V©n")
else
	sx1 = random(1,4)
	if sx1 == 1 then
		for i=1,random(1,3) do
			AddEventItem(118) -- NNH 1 gio
		end
	elseif sx1 == 2 then
		AddEventItem(115) -- NNH 3 gio
	elseif sx1 == 3 then
		for i=1,random(1,3) do
			AddEventItem(117) -- TLL 1 gio
		end
	else
		AddEventItem(119) -- TTL 3 gio
	end
end
--KickOutSelf()
end


function xemdsmoc()
Say("<color=green>D· TÈu: <color>: Chän mèc nhËn phÇn th­ëng: ",10,
"1000 nhiÖm vô /moc1",
"2000 nhiÖm vô /moc1",
"3000 nhiÖm vô /moc1",
"4000 nhiÖm vô /moc1",
"5000 nhiÖm vô /moc1",
"6000 nhiÖm vô /moc1",
"8000 nhiÖm vô /moc1",
"10000 nhiÖm vô /moc1",
"Hoµn thµnh 100 nhiÖm vô /moc1",
"Tho¸t./no")
end

function moc1(nsel)
i = nsel+1
if i == 1 then
	Talk(1,"","Hoµn thµnh 1000 nhiÖm vô nhËn ®­îc 1 - 3 N÷ Nhi Hång 6 giê hoÆc 1 - 3 Tiªn Th¶o Lé 6 giê ")
elseif i == 2 then
	Talk(1,"","Hoµn thµnh 2000 nhiÖm vô nhËn ®­îc 1 bé Thñy Tinh hoÆc 1 bé Tinh Hång B¶o Th¹ch")
elseif i == 3 then
	Talk(1,"","Hoµn thµnh 3000 nhiÖm vô nhËn ®­îc 1 - 3 Vâ L©m MËt TÞch hoÆc 1 - 3 TÈy Tñy Kinh ")
elseif i == 4 then
	Talk(1,"","Hoµn thµnh 4000 nhiÖm vô nhËn ®­îc trang bÞ HiÖp Cèt hoÆc trang bÞ Nhu T×nh ")
elseif i == 5 then
	Talk(1,"","Hoµn thµnh 5000 nhiÖm vô nhËn ®­îc 1 trang bÞ §Þnh Quèc")
elseif i == 6 then
	Talk(1,"","Hoµn thµnh 6000 nhiÖm vô nhËn ®­îc 1 trang bÞ An Bang ")
elseif i == 7 then
	Talk(1,"","Hoµn thµnh 8000 nhiÖm vô nhËn ®­îc 1 thÇn thó Phi V©n ")
elseif i == 8 then
	Talk(1,"","Hoµn thµnh 10.000 nhiÖm vô nhËn ®­îc 1 trang bÞ VIP cña Sevrer [CËp nhËt sau] ")
elseif i == 9 then
	Talk(1,"","Cø hoµn thµnh 100 nhiÖm vô D· TÈu nhËn ®­îc ngÉu nhiªn Tiªn Th¶o Lé, Tiªn Th¶o Lé 3 giê, N÷ Nhi Hång, N÷ Nhi Hång 3 giê. Sè l­îng 1 - 3")
end
end
function hoanthanh()
if GetTask(84) == 1 then -- Dang lam nhiem vu
	if GetTask(85) == 1 or GetTask(85) == 2 then
		if GetTask(87) >= GetTask(86) then
			nl = GetTask(84)
			SetTask(84,GetTask(84)+1)
			if (GetTask(84) == nl+1) then
				nl2 = GetTask(83)
				SetTask(83,GetTask(83)+1)
				if GetTask(83) == nl2+1 then
					hoanthanh()
					Talk(0,"")
				else
					Talk(1,"","Hack ha em")
				end
			else
				Talk(1,"","Hack ha em")
			end
		else
			Say("<color=green>D· TÈu: <color>: Ng­êi chØ t×m ®­îc "..GetTask(87).." / "..GetTask(86).." tÊm mµ muèn hoµn thµnh nhiÖm vô µ, h·y ®i t×m nhanh lªn !",1,
			"V©ng ta sÏ ®i ngay /no")
		end
	elseif GetTask(85) == 3 or GetTask(85) == 4 or GetTask(85) == 5  or GetTask(85) == 6 then
		giaonhiemvu()
	elseif GetTask(85) == 7 then
		SetTask(87,GetTask(Tri_Diem[GetTask(88)][2]))
		if GetTask(87) >= GetTask(86) then
			nl = GetTask(84)
			SetTask(84,GetTask(84)+1)
			if (GetTask(84) == nl+1) then
				nl2 = GetTask(83)
				SetTask(83,GetTask(83)+1)
				if GetTask(83) == nl2+1 then
					hoanthanh()
					Talk(0,"")
				else
					Talk(1,"","Hack ha em")
				end
			else
				Talk(1,"","Hack ha em")
			end
		else
			sl = Tri_Diem[GetTask(88)][3] - (GetTask(86)-GetTask(87))
			Say("<color=green>D· TÈu: <color>: Ng­êi chØ n©ng <color=yellow>"..Tri_Diem[GetTask(88)][1].."<color> ®­îc <color=red>"..sl.." / "..Tri_Diem[GetTask(88)][3].."<color> ®iÓm, cè g¾ng lªn !",1,
			"V©ng ta sÏ ®i ngay /no")
		end
	elseif GetTask(85) == 8 then
		SetTask(87,GetPK())
		if GetTask(87) >= GetTask(86) then
			nl = GetTask(84)
			SetTask(84,GetTask(84)+1)
			if (GetTask(84) == nl+1) then
				nl2 = GetTask(83)
				SetTask(83,GetTask(83)+1)
				if GetTask(83) == nl2+1 then
					hoanthanh()
					Talk(0,"")
				else
					Talk(1,"","Hack ha em")
				end
			else
				Talk(1,"","Hack ha em")
			end
		else
			sl = GetTask(88) - (GetTask(86)-GetTask(87))
			Say("<color=green>D· TÈu: <color>: Ng­êi chØ n©ng <color=yellow>TrÞ PK<color> ®­îc <color=red>"..sl.." / "..GetTask(88).."<color> ®iÓm, cè g¾ng lªn !",1,
			"V©ng ta sÏ ®i ngay /no")
		end
	elseif GetTask(85) == 9 then
		if GetTask(94) == 1 then
			SetTask(87,GetExp())
			if GetTask(87) >= GetTask(86) then
				nl = GetTask(84)
				SetTask(84,GetTask(84)+1)
				if (GetTask(84) == nl+1) then
					nl2 = GetTask(83)
					SetTask(83,GetTask(83)+1)
					if GetTask(83) == nl2+1 then
						hoanthanh()
						Talk(0,"")
					else
						Talk(1,"","Hack ha em")
					end
				else
					Talk(1,"","Hack ha em")
				end
			else
				sl = GetTask(88) - (GetTask(86)-GetTask(87))
				Say("<color=green>D· TÈu: <color>: Ng­êi chØ n©ng <color=yellow>TrÞ Kinh NghiÖm<color> ®­îc <color=red>"..sl.." / "..GetTask(88).."<color> ®iÓm, cè g¾ng lªn !",1,
				"V©ng ta sÏ ®i ngay /no")
			end
		elseif GetTask(94) == 2 then
			if GetLevel() > GetTask(87) then
				nl = GetTask(84)
				SetTask(84,GetTask(84)+1)
				if (GetTask(84) == nl+1) then
					nl2 = GetTask(83)
					SetTask(83,GetTask(83)+1)
					if GetTask(83) == nl2+1 then
						hoanthanh()
						Talk(0,"")
					else
						Talk(1,"","Hack ha em")
					end
				else
					Talk(1,"","Hack ha em")
				end
			elseif GetLevel() == GetTask(87) then
				if GetExp() >= GetTask(86) then
					nl = GetTask(84)
					SetTask(84,GetTask(84)+1)
					if (GetTask(84) == nl+1) then
						nl2 = GetTask(83)
						SetTask(83,GetTask(83)+1)
						if GetTask(83) == nl2+1 then
							hoanthanh()
							Talk(0,"")
						else
							Talk(1,"","Hack ha em")
						end
					else
						Talk(1,"","Hack ha em")
					end
				else	
					sl1 = GetTask(88) - GetTask(86)
					sl2 = sl1 + GetExp()
					Say("<color=green>D· TÈu: <color>: Ng­êi chØ n©ng <color=yellow>TrÞ Kinh NghiÖm<color> ®­îc <color=red>"..sl2.." / "..GetTask(88).."<color> ®iÓm, cè g¾ng lªn !",1,
					"V©ng ta sÏ ®i ngay /no")
				end		
			else
				sl1 = GetTask(88) - GetTask(86)
				sl2 = GetLevelExp() - sl1
				sl3 = GetExp() - sl2
				Say("<color=green>D· TÈu: <color>: Ng­êi chØ n©ng <color=yellow>TrÞ Kinh NghiÖm<color> ®­îc <color=red>"..sl3.." / "..GetTask(88).."<color> ®iÓm, cè g¾ng lªn !",1,
				"V©ng ta sÏ ®i ngay /no")
			end
		end
	end
elseif GetTask(84) == 2 then -- Da hoan thanh nhung chua nhan thuong
	SetTask(91,random(1,3))
	while 1 do
		SetTask(92,random(1,5))
		if GetTask(92) ~= GetTask(91) then
			break;
		end
	end
	while 1 do
		SetTask(93,random(1,5))
		if GetTask(93) ~= GetTask(91) and GetTask(93) ~= GetTask(92) then
			break;
		end
	end	
	nl = GetTask(84)
	SetTask(84,GetTask(84)+1)
	if (GetTask(84) == nl+1) then
		hoanthanh()
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
elseif GetTask(84) == 3 then -- Da xac nhan phan thuong chi viec chon
	OpenSlectBoxCheck(GetTask(91),GetTask(92),GetTask(93),"phanthuong")
	
end
end

function phanthuong(nid)
if GetTask(84) == 3 then
	nl = GetTask(84)
	SetTask(84,GetTask(84)-3)
	if GetTask(84) == nl-3 then
		if (nid == 1) then
			Win_Exp()
		elseif (nid == 2) then
			SetTask(90,GetTask(90)+1)	
			Msg2Player("B¹n nhËn ®­îc 1 lÇn c¬ héi hñy bá nhiÖm vô  !")
		elseif (nid == 3) then
			Win_Item()
		elseif (nid == 4) then
				xs2 = random(1,3)
				if xs2 == 1 then
					Win_Exp()
				elseif xs2 == 2 then
					Win_Gold()
				elseif xs2 == 3 then
					Win_Item()
				end	
			
		elseif (nid == 5) then
			Win_Gold()
		end
		SetTask(86,0)
		SetTask(87,0)
		SetTask(85,0)
		SetTask(88,0)
		SetTask(82,GetTask(82)+1)
		if GetTask(111) >= 100 and GetTask(82) < 30 then
			SetTask(111,1)
		else
			SetTask(111,GetTask(111)+1)
		end	
		SetTask(2,0)
		SetTask(3,0)
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
end
end

function hoangkim()
item = random(1,230)
if item == 1 then
AddItem(0,3,3,1,0,0,0)
Msg2SubWorld("Chóc mõng ["..GetName().."] hoµn thµnh NhiÖm vô D· TÈu H¹ng nhËn ®­îc [An Bang Cóc Hoa Th¹ch ChØ Hoµn]")
elseif item == 2 then
AddItem(0,3,4,1,0,0,0)
Msg2SubWorld("Chóc mõng ["..GetName().."] hoµn thµnh NhiÖm vô D· TÈu H¹ng nhËn ®­îc [An Bang Kª HuyÕt Th¹ch Giíi ChØ]")
elseif item == 3 then
AddItem(0,9,3,1,0,0,0)
Msg2SubWorld("Chóc mõng ["..GetName().."] hoµn thµnh NhiÖm vô D· TÈu H¹ng nhËn ®­îc [An Bang §iÒn Hoµng Th¹ch Ngäc Béi]")
elseif item == 4 or item == 11 or item == 17 then
AddItem(0,3,6,1,0,0,0)
Msg2SubWorld("Chóc mõng ["..GetName().."] hoµn thµnh NhiÖm vô D· TÈu H¹ng nhËn ®­îc [HiÖp Cèt §an T©m Giíi]")
elseif item == 5 or item == 12 or item == 18 then
AddItem(0,3,5,1,0,0,0)
Msg2SubWorld("Chóc mõng ["..GetName().."] hoµn thµnh NhiÖm vô D· TÈu H¹ng nhËn ®­îc [Nhu T×nh Phông Nghi Giíi ChØ]")
elseif item == 14 or item == 15 or item == 19 then
AddItem(0,9,4,1,0,0,0)
Msg2SubWorld("Chóc mõng ["..GetName().."] hoµn thµnh NhiÖm vô D· TÈu H¹ng nhËn ®­îc [HiÖp Cèt T×nh ý KÕt]")
elseif item == 6 or item == 13 or item == 20 then
AddItem(0,9,5,1,0,0,0)
Msg2SubWorld("Chóc mõng ["..GetName().."] hoµn thµnh NhiÖm vô D· TÈu H¹ng nhËn ®­îc [Nhu T×nh TuÖ T©m Ngäc Béi]")
elseif item == 7 or item == 16 or item == 21 then
AddItem(0,9,5,1,0,0,0)
Msg2SubWorld("Chóc mõng ["..GetName().."] hoµn thµnh NhiÖm vô D· TÈu H¹ng nhËn ®­îc [Nhu T×nh TuÖ T©m Ngäc Béi]")
elseif item == 8 then
AddItem(0,7,15,1,0,0,0)
Msg2SubWorld("Chóc mõng ["..GetName().."] hoµn thµnh NhiÖm vô D· TÈu H¹ng nhËn ®­îc [§Þnh Quèc ¤ Sa Ph¸t Qu¸n]")
elseif item == 9 or item == 22 then
AddItem(0,8,3,1,0,0,0)
Msg2SubWorld("Chóc mõng ["..GetName().."] hoµn thµnh NhiÖm vô D· TÈu H¹ng nhËn ®­îc [§Þnh Quèc Tö §»ng Hé UyÓn]")
elseif item == 10 or item == 23 then
AddItem(0,5,5,1,0,0,0)
Msg2SubWorld("Chóc mõng ["..GetName().."] hoµn thµnh NhiÖm vô D· TÈu H¹ng nhËn ®­îc [§Þnh Quèc XÝch QuyÒn NhuyÔn Ngoa]")
else
	rnd = random(1,9)
	if rnd == 1 then
	AddItem(0,6,2,1,0,0,0)
	elseif rnd == 2 then
	AddItem(0,5,4,1,0,0,0)
	elseif rnd == 3 then
	AddItem(0,9,2,1,0,0,0)
	elseif rnd == 4 then
	AddItem(0,7,14,1,0,0,0)
	elseif rnd == 5 then
	AddItem(0,2,29,1,0,0,0)
	elseif rnd == 6 then
	AddItem(0,8,2,1,0,0,0)
	elseif rnd == 7 then
	AddItem(0,4,2,1,0,0,0)
	elseif rnd == 8 then
	AddItem(0,3,1,1,0,0,0)
	else 
	AddItem(0,3,2,1,0,0,0)
	end
	Msg2SubWorld("Chóc mõng ["..GetName().."] hoµn thµnh NhiÖm vô D· TÈu H¹ng nhËn ®­îc Trang bÞ Kim Phong")
end
end



function tinh_exp_dc()
if GetLevel() >= 100 then
return 11
else
return floor(GetLevel()/10)+1
end
end

function tinh_exp_soluong()
if GetLevel() <= 30 then
return 3
elseif GetLevel() >= 30 and GetLevel() <= 59  then
return 6
elseif GetLevel() >= 60 and GetLevel() <= 79 then
return 9
elseif GetLevel() >= 80 and GetLevel() <= 119 then
return 12
else
return 15
end
end

function Win_Exp()
if tinh_exp_dc() < 1 or tinh_exp_dc() > getn(Mang_Exp2) then
Msg2Player("Lien he GM de bao loi. Loi nhan exp: "..tinh_exp_dc().." ")
print("Lien he GM de bao loi. Loi nhan exp: "..tinh_exp_dc().." ")
return
end
diem2 = 1
diemexp = 20 * tinh_exp_soluong() * Mang_Exp2[tinh_exp_dc()]
if GetTask(85) == 1 then
	if GetTask(88) < 1 or GetTask(88) > getn(DoChi_Map) then
	SetTask(88,11)
	end
	diem2 = 20 * GetTask(86) * Exp_Map[GetTask(88)]
elseif GetTask(85) == 2 then
	if GetTask(88) < 1 or GetTask(88) > getn(DoChi_Map) then
	SetTask(88,11)
	end
	diem2 = 400 * GetTask(86)  * Exp_Map[GetTask(88)]
elseif GetTask(85) == 3 then
	diem2 = diemexp / 5 
elseif GetTask(85) == 4 or GetTask(85) ==  6 then
	diem2 = diemexp / 2 *8
elseif GetTask(85) == 5 then
	diem2 = diemexp / 3 * 8	
elseif GetTask(85) == 8 then
	if GetTask(88) == 1 then
		diem2 = diemexp / 2
	elseif GetTask(88) == 2 then
		diem2 = diemexp
	else
		diem2 = diemexp * 2
	end
elseif GetTask(85) == 9 then
	if GetTask(88) == 250000 then
		diem2 = diemexp / 3
	elseif GetTask(88) == 500000 then
		diem2 = diemexp / 2
	else
		diem2 = diemexp * 2 / 3
	end
elseif GetTask(85) == 7 then
	if GetTask(88) == 1 or GetTask(88) == 4 then
		diem2 = diemexp / 4
	elseif GetTask(88) == 2 or GetTask(88) == 5 then
		diem2 = diemexp / 3
	elseif GetTask(88) == 3 or GetTask(88) == 6 then
		diem2 = diemexp / 2
	elseif GetTask(88) == 7 then
		diem2 = diemexp / 2
	elseif GetTask(88) == 8 then
		diem2 = diemexp 
	else
		diem2 = diemexp * 2
	end
else
	diem2 = 800000
end
diem3 = 0
diem4 = 0
diem2 = floor(diem2)
diem3 = diem2 - (diem2 * 20 / 100) 
diem4 = diem2 + (diem2 * 20 / 100) 
diemnhanduoc = floor(random(diem3,diem4))*3
for chia =1,50 do
	AddOwnExp(diemnhanduoc/50)
end
Msg2Player("B¹n nhËn ®­îc "..diemnhanduoc.." kinh nghiÖm ")
end

function tinh_gold_soluong()
if GetLevel() >= 100 then
return 10
else
return floor(GetLevel()/10)+1
end
end

function Win_Gold()
if tinh_exp_dc() < 1 or tinh_exp_dc() > getn(Mang_Exp2) then
Msg2Player("Lien he GM de bao loi. Loi nhan gold: "..tinh_exp_dc().." ")
print("Lien he GM de bao loi. Loi nhan exp: "..tinh_exp_dc().." ")
return
end
diemexp = 20 * tinh_exp_soluong() * Mang_Gold2[tinh_exp_dc()] * 15 / 100
diem2 = 1
if GetTask(85) == 1 then
	diem2 = diemexp
elseif GetTask(85) == 2 then
	diem2 = diemexp*2
elseif GetTask(85) == 3 then
	diem2 = diemexp / 5
elseif GetTask(85) == 4 or GetTask(85) ==  6 then
	diem2 = diemexp / 2
elseif GetTask(85) == 5 then
	diem2 = diemexp / 3	
elseif GetTask(85) == 8 then
	if GetTask(88) == 1 then
		diem2 = diemexp / 2
	elseif GetTask(88) == 2 then
		diem2 = diemexp
	elseif GetTask(88) == 3 then
		diem2 = diemexp * 2
	end
elseif GetTask(85) == 9 then
	if GetTask(88) == 250000 then
		diem2 = diemexp / 3
	elseif GetTask(88) == 500000 then
		diem2 = diemexp / 2
	else
		diem2 = diemexp * 2 / 3
	end
elseif GetTask(85) == 7 then
	if GetTask(88) == 1 or GetTask(88) == 4 then
		diem2 = diemexp / 4
	elseif GetTask(88) == 2 or GetTask(88) == 5 then
		diem2 = diemexp / 3
	elseif GetTask(88) == 3 or GetTask(88) == 6 then
		diem2 = diemexp / 2
	elseif GetTask(88) == 7 then
		diem2 = diemexp / 2
	elseif GetTask(88) == 8 then
		diem2 = diemexp 
	elseif GetTask(88) == 9 then
		diem2 = diemexp * 2
	end
else
	diem2 = 20000
end

diem2 = floor(diem2 / 5)
diem3 = diem2 - diem2 * 20 / 100
diem4 = diem2 + diem2 * 20 / 100
diem2 = floor(random(diem3,diem4))
Earn(diem2)	
Msg2Player("B¹n nhËn ®­îc "..diem2.." l­îng ")
end

function Win_Item()
xs = random(1,100)	
if xs <= 75 then
	xs3 = random(1,3)
	if xs3 == 1 then
		AddEventItem(103)
		Msg2Player("B¹n nhËn ®­îc 1 Ngò Hoa Ngäc Lé Hoµn LÔ Bao")	
	elseif xs3 == 2 then
		AddEventItem(104)
		Msg2Player("B¹n nhËn ®­îc 1 Cöu ChuyÓn Hoµn Hån §an LÔ Bao")			
	else
		AddEventItem(105)
		Msg2Player("B¹n nhËn ®­îc 1 Thñ ¤ Hoµn ThÇn §an LÔ Bao")	
	
	end
elseif xs > 75 and xs <= 99 then
	xs2 = random(1,100)
	if xs2 <= 60 then
		AddEventItem(173)
		Msg2Player("B¹n nhËn ®­îc 1 b×nh Phóc Duyªn Lé ")
	elseif xs2 > 60 and xs2 <= 90 then
		AddEventItem(174)
		Msg2Player("B¹n nhËn ®­îc 1 b×nh Phóc Duyªn Lé ")
	elseif xs2 > 90 and xs2 < 100 then
		AddEventItem(175)
		Msg2Player("B¹n nhËn ®­îc 1 b×nh Phóc Duyªn Lé ")
	end
else
	xs3 = random(1,30) 
	if xs3 == 1 then
		AddEventItem(random(28,30))
		Msg2Player("B¹n nhËn  ®­îc 1 viªn Thñy Tinh")
		Msg2SubWorld("<color=yellow>Chóc mõng "..GetName().." hoµn thµnh nhiÖm vô D· TÈu nhËn ®­îc 1 Thñy Tinh !")
	elseif xs3 == 2 then
		AddEventItem(1)
		Msg2Player("B¹n nhËn  ®­îc 1 TÈy Tñy Kinh")
		Msg2SubWorld("<color=pink>Chóc mõng "..GetName().." hoµn thµnh nhiÖm vô D· TÈu nhËn ®­îc 1 TÈy Tñy Kinh !")
	elseif xs3 == 3 then
		AddEventItem(0)
		Msg2Player("B¹n nhËn  ®­îc 1 Vâ l©m mËt tÞch")
		Msg2SubWorld("<color=pink>Chóc mõng "..GetName().." hoµn thµnh nhiÖm vô D· TÈu nhËn ®­îc 1 Vâ L©m MËt TÞch !")
	elseif xs3 == 4 then
		AddEventItem(31)
		Msg2Player("B¹n nhËn  ®­îc 1 viªn Tinh Hång B¶o Th¹ch")
		Msg2SubWorld("<color=yellow>Chóc mõng "..GetName().." hoµn thµnh nhiÖm vô D· TÈu nhËn ®­îc 1 Tinh Hång B¶o Th¹ch !")
	elseif xs3 > 4 and xs3 < 16 then
		AddEventItem(113)
		Msg2Player("B¹n nhËn ®­îc 1 Tiªn Th¶o Lé !")
		Msg2SubWorld("<color=yellow>Chóc mõng "..GetName().." hoµn thµnh nhiÖm vô D· TÈu nhËn ®­îc 1 Tiªn Th¶o Lé !")
	
	else
		AddEventItem(114)
		Msg2Player("B¹n nhËn ®­îc 1 N÷ Nhi Hång !")
		Msg2SubWorld("<color=yellow>Chóc mõng "..GetName().." hoµn thµnh nhiÖm vô D· TÈu nhËn ®­îc 1 N÷ Nhi Hång !")
	end		
end
end



function xs_chonloai()
s = random(1,100)
if s <= 20 then
return 1
elseif s > 20 and s <= 85 then
return 2
else
return 3
end
end

function tinhxacsuat()
chonloai = xs_chonloai()
sx = random(1,100)
if chonloai == 1 then
	if GetLevel() < 50 then	
		return 1
	elseif GetLevel() >= 50 and GetLevel() < 100 then
		if sx <= 90 then
			return 1
		else
			return 2
		end
	else
		if sx <= 80 then
			return 1
		else
			return 2
		end
	end
elseif chonloai == 2 then
	if GetLevel() < 50 then
		return 3
	elseif GetLevel() >= 50 and GetLevel() < 100 then
		if sx < 80 then
		return 3
		elseif sx >= 80 and sx < 100 then
		return 5
		else		
		return 4
		end
	else
		if sx < 20 then
		return 3
		elseif sx >= 20 and sx < 50 then
		return 5
		elseif sx >= 50 and sx < 80 then
		return 4
		else
		return 6
		end
	end	
elseif chonloai == 3 then
	if GetLevel() < 50 then
		return 9
	elseif GetLevel() >= 50 and GetLevel() < 100 then
		if sx <= 70 then		
		return 9
		else
		return 7
		end
	else
		if sx < 50 then
		return 9
		elseif sx >= 50 and sx < 96 then
		return 7
		else
		return 8
		end		
	end
end
end



function nhannv2()
ngay = tonumber(date("%d"))
nl = GetTask(84)
SetTask(84,GetTask(84)+1)
if GetTask(84) == (nl+1) then
	if GetLevel() < 10 then
		loainv = 1
	else
		loainv = tinhxacsuat()
	end
	SetTask(85,loainv)
	if (loainv == 1) then
		SetTask(86,soluongdochi())
		SetTask(87,0)
		SetTask(88,mapdochi())
	elseif (loainv == 2) then
		SetTask(86,soluongmatchi())
		SetTask(87,0)
		SetTask(88,mapdochi())
	elseif (loainv == 3) then
		if GetLevel() >= 10 and GetLevel() < 30 then
			SetTask(88,random(61,65))
		elseif GetLevel() >= 30 and GetLevel() < 70 then
			SetTask(88,random(1,40))
		else
			SetTask(88,random(1,getn(Mua_Shop)))
		end
	elseif (loainv == 4) then
		SetTask(88,random(1,getn(TrangSuc_Ten)))
	elseif (loainv == 5) then
		SetTask(88,random(1,getn(Option)))
	elseif (loainv == 6) then
		SetTask(88,random(1,getn(Item_Option)))
		SetTask(86,random(1,getn(Item_Option2)))	
	elseif (loainv == 7) then
		SetTask(88,random(1,getn(Tri_Diem)))
		SetTask(86,GetTask(Tri_Diem[GetTask(88)][2])+Tri_Diem[GetTask(88)][3])
		SetTask(87,GetTask(Tri_Diem[GetTask(88)][2]))
	elseif (loainv == 8) then
		SetTask(88,random(1,3))
		SetTask(86,GetPK()+GetTask(88))
		SetTask(87,GetPK())
	elseif (loainv == 9) then
		kn = GetLevelExp()
		if GetLevel() < 10 then
			SetTask(88,5000)
		elseif GetLevel() >= 10 and GetLevel() < 30 then
			SetTask(88,20000)
		elseif GetLevel() >= 30 and GetLevel() < 50 then
			SetTask(88,50000)	
		else
			SetTask(88,Mang_KN[random(1,getn(Mang_KN))])
		end
		if (kn - (GetTask(88)+GetExp()) > 0) then
			SetTask(86,GetExp()+GetTask(88))
			SetTask(87,GetExp())
			SetTask(94,1)
		else
			SetTask(94,2)
			knlv1 = GetLevelExp() - GetExp()	
			knlv2 = GetTask(88) - knlv1
			SetTask(86,knlv2)
			SetTask(87,GetLevel()+1)			
		end
	end
	main()
end
end
-- Tri Kinh Nghiem
Mang_KN = {250000,500000,1000000}

-- Tri Diem
Tri_Diem = {
{"Danh Väng",100,5},
{"Danh Väng",100,10},
{"Danh Väng",100,15},
{"Phóc Duyªn",162,10},
{"Phóc Duyªn",162,20},
{"Phóc Duyªn",162,30},
{"Phóc Duyªn",162,10},
{"Phóc Duyªn",162,20},
{"Phóc Duyªn",162,30},
}

-- Tim Item + Option

Item_Option2 = {
{"T¨ng Sinh Lùc",85},
{"T¨ng Néi Lùc",89},
{"T¨ng ThÓ Lùc",93},
{"T¨ng Kh¸ng §éc",101},
{"T¨ng Kh¸ng Háa",102},
{"T¨ng Kh¸ng L«i",103},
{"T¨ng Kh¸ng B¨ng",105},
{"Thêi Gian Lµm ChËm",106},
{"Thêi Gian Tróng §éc",108},
{"Thêi Gian Cho¸ng",110},
{"May M¾n",135},
}

Item_Option = {
{"Hoµng Ngäc Giíi ChØ ",3,0,1},
{"NhÉn Qu¶ Tr¸m",3,0,2,},
{"Phï Dung Th¹ch Giíi ChØ ",3,0,3},
{"D©y ChuyÒn §ång",4,0,1},
{"Ng©n H¹ng Liªm",4,0,2},
{"Kim H¹ng Liªm",4,0,3},
{"Lôc Tïng Th¹ch Hé Th©n Phï ",4,1,1},
{"San H« Hé Th©n Phï ",4,1,2},
{"MiÔu Nh·n Hé Th©n Phï ",4,1,3},
{"Hu©n Y H­¬ng Nang",9,0,1},
{"M¹t LÞ H­¬ng Nang",9,0,2},
{"Nhò H­¬ng H­¬ng Nang",9,0,3},
{"Lôc Du Ngäc Béi",9,1,1},
{"Kinh B¹ch Ngäc Béi",9,1,2},
{"§µo Hoa Ngäc Béi",9,1,3},
}


-- Tim Option
Option = {
{"T¨ng sinh lùc",85,1,100},
{"T¨ng sinh lùc",85,50,150},
{"T¨ng sinh lùc",85,100,200},
{"T¨ng néi lùc",89,1,100},
{"T¨ng néi lùc",89,50,150},
{"T¨ng néi lùc",89,100,200},
{"T¨ng thÓ lùc",93,1,100},
{"T¨ng thÓ lùc",93,50,150},
{"T¨ng thÓ lùc",93,100,200},
{"T¨ng kh¸ng tÊt c¶ ",114,1,5},
{"T¨ng kh¸ng tÊt c¶ ",114,5,10},
{"T¨ng Søc M¹nh",97,1,3},
{"T¨ng Søc M¹nh",97,3,5},
{"T¨ng Søc M¹nh",97,5,10},
{"T¨ng Th©n Ph¸p",98,1,3},
{"T¨ng Th©n Ph¸p",98,3,5},
{"T¨ng Th©n Ph¸p",98,5,10},
{"T¨ng Sinh KhÝ ",99,1,3},
{"T¨ng Sinh KhÝ ",99,3,5},
{"T¨ng Sinh KhÝ ",99,5,10},
{"T¨ng Kh¸ng §éc",101,1,5},
{"T¨ng Kh¸ng §éc",101,5,10},
{"T¨ng Kh¸ng §éc",101,10,15},
{"T¨ng Kh¸ng Háa",102,1,5},
{"T¨ng Kh¸ng Háa",102,5,10},
{"T¨ng Kh¸ng Háa",102,10,15},
{"T¨ng Kh¸ng L«i",103,1,5},
{"T¨ng Kh¸ng L«i",103,5,10},
{"T¨ng Kh¸ng L«i",103,10,15},
{"T¨ng Phßng Thñ ",104,1,5},
{"T¨ng Phßng Thñ ",104,5,10},
{"T¨ng Phßng Thñ ",104,10,15},
{"T¨ng Kh¸ng B¨ng",105,1,5},
{"T¨ng Kh¸ng B¨ng",105,5,10},
{"T¨ng Kh¸ng B¨ng",105,10,15},
{"Thêi Gian Lµm ChËm",106,20,20},
{"Thêi Gian Tróng §éc",108,20,20},
{"Thêi Gian Cho¸ng",110,20,20},
{"Thêi Gian Phôc Håi",113,20,20},
{"Tèc ®é ®¸nh ngo¹i c«ng",115,10,10},
{"Tèc ®é ®¸nh ngo¹i c«ng",115,20,20},
{"Hót néi lùc",137,1,3},
{"Hót sinh lùc",136,1,3},
{"T¨ng may m¾n",135,1,5},
{"Phôc håi sinh lùc",88,1,5},
}

-- Nhiem vu Tim Trang Suc 

-- Trang Suc Theo Ten
TrangSuc_Ten = {
{"Hoµng Ngäc Giíi ChØ - HÖ Kim",3,0,1,0},
{"Hoµng Ngäc Giíi ChØ - HÖ Méc",3,0,1,1},
{"Hoµng Ngäc Giíi ChØ - HÖ Thñy",3,0,1,2},
{"Hoµng Ngäc Giíi ChØ - HÖ Háa",3,0,1,3},
{"Hoµng Ngäc Giíi ChØ - HÖ Thæ ",3,0,1,4},
{"NhÉn Qu¶ Tr¸m - HÖ Kim",3,0,2,0},
{"NhÉn Qu¶ Tr¸m - HÖ Méc",3,0,2,1},
{"NhÉn Qu¶ Tr¸m - HÖ Thñy",3,0,2,2},
{"NhÉn Qu¶ Tr¸m - HÖ Háa",3,0,2,3},
{"NhÉn Qu¶ Tr¸m - HÖ Thæ ",3,0,2,4},
{"Phï Dung Th¹ch Giíi ChØ - HÖ Kim",3,0,3,0},
{"Phï Dung Th¹ch Giíi ChØ - HÖ Méc",3,0,3,1},
{"Phï Dung Th¹ch Giíi ChØ - HÖ Thñy",3,0,3,2},
{"Phï Dung Th¹ch Giíi ChØ - HÖ Háa",3,0,3,3},
{"Phï Dung Th¹ch Giíi ChØ - HÖ Thæ ",3,0,3,4},
{"D©y ChuyÒn §ång - HÖ Kim",4,0,1,0},
{"D©y ChuyÒn §ång - HÖ Méc",4,0,1,1},
{"D©y ChuyÒn §ång - HÖ Thñy",4,0,1,2},
{"D©y ChuyÒn §ång - HÖ Háa",4,0,1,3},
{"D©y ChuyÒn §ång - HÖ Thæ ",4,0,1,4},
{"Ng©n H¹ng Liªm - HÖ Kim",4,0,2,0},
{"Ng©n H¹ng Liªm - HÖ Méc",4,0,2,1},
{"Ng©n H¹ng Liªm - HÖ Thñy",4,0,2,2},
{"Ng©n H¹ng Liªm - HÖ Háa",4,0,2,3},
{"Ng©n H¹ng Liªm - HÖ Thæ ",4,0,2,4},
{"Kim H¹ng Liªm - HÖ Kim",4,0,3,0},
{"Kim H¹ng Liªm - HÖ Méc",4,0,3,1},
{"Kim H¹ng Liªm - HÖ Thñy",4,0,3,2},
{"Kim H¹ng Liªm - HÖ Háa",4,0,3,3},
{"Kim H¹ng Liªm - HÖ Thæ ",4,0,3,4},
{"Lôc Tïng Th¹ch Hé Th©n Phï - HÖ Kim",4,1,1,0},
{"Lôc Tïng Th¹ch Hé Th©n Phï - HÖ Méc",4,1,1,1},
{"Lôc Tïng Th¹ch Hé Th©n Phï - HÖ Thñy",4,1,1,2},
{"Lôc Tïng Th¹ch Hé Th©n Phï - HÖ Háa",4,1,1,3},
{"Lôc Tïng Th¹ch Hé Th©n Phï - HÖ Thæ ",4,1,1,4},
{"San H« Hé Th©n Phï - HÖ Kim",4,1,2,0},
{"San H« Hé Th©n Phï - HÖ Méc",4,1,2,1},
{"San H« Hé Th©n Phï - HÖ Thñy",4,1,2,2},
{"San H« Hé Th©n Phï - HÖ Háa",4,1,2,3},
{"San H« Hé Th©n Phï - HÖ Thæ ",4,1,2,4},
{"MiÔu Nh·n Hé Th©n Phï - HÖ Kim",4,1,3,0},
{"MiÔu Nh·n Hé Th©n Phï - HÖ Méc",4,1,3,1},
{"MiÔu Nh·n Hé Th©n Phï - HÖ Thñy",4,1,3,2},
{"MiÔu Nh·n Hé Th©n Phï - HÖ Háa",4,1,3,3},
{"MiÔu Nh·n Hé Th©n Phï - HÖ Thæ ",4,1,3,4},
{"Hu©n Y H­¬ng Nang - HÖ Kim",9,0,1,0},
{"Hu©n Y H­¬ng Nang - HÖ Méc",9,0,1,1},
{"Hu©n Y H­¬ng Nang - HÖ Thñy",9,0,1,2},
{"Hu©n Y H­¬ng Nang - HÖ Háa",9,0,1,3},
{"Hu©n Y H­¬ng Nang - HÖ Thæ ",9,0,1,4},
{"M¹t LÞ H­¬ng Nang - HÖ Kim",9,0,2,0},
{"M¹t LÞ H­¬ng Nang - HÖ Méc",9,0,2,1},
{"M¹t LÞ H­¬ng Nang - HÖ Thñy",9,0,2,2},
{"M¹t LÞ H­¬ng Nang - HÖ Háa",9,0,2,3},
{"M¹t LÞ H­¬ng Nang - HÖ Thæ ",9,0,2,4},
{"Nhò H­¬ng H­¬ng Nang - HÖ Kim",9,0,3,0},
{"Nhò H­¬ng H­¬ng Nang - HÖ Méc",9,0,3,1},
{"Nhò H­¬ng H­¬ng Nang - HÖ Thñy",9,0,3,2},
{"Nhò H­¬ng H­¬ng Nang - HÖ Háa",9,0,3,3},
{"Nhò H­¬ng H­¬ng Nang - HÖ Thæ ",9,0,3,4},
{"Lôc Du Ngäc Béi - HÖ Kim",9,1,1,0},
{"Lôc Du Ngäc Béi - HÖ Méc",9,1,1,1},
{"Lôc Du Ngäc Béi - HÖ Thñy ",9,1,1,2},
{"Lôc Du Ngäc Béi - HÖ Háa",9,1,1,3},
{"Lôc Du Ngäc Béi - HÖ Thæ ",9,1,1,4},
{"Kinh B¹ch Ngäc Béi - HÖ Kim",9,1,2,0},
{"Kinh B¹ch Ngäc Béi - HÖ Méc",9,1,2,1},
{"Kinh B¹ch Ngäc Béi - HÖ Thñy",9,1,2,2},
{"Kinh B¹ch Ngäc Béi - HÖ Háa",9,1,2,3},
{"Kinh B¹ch Ngäc Béi - HÖ Thæ ",9,1,2,4},
{"§µo Hoa Ngäc Béi - HÖ Kim",9,1,3,0},
{"§µo Hoa Ngäc Béi - HÖ Méc",9,1,3,1},
{"§µo Hoa Ngäc Béi - HÖ Thñy",9,1,3,2},
{"§µo Hoa Ngäc Béi - HÖ Háa",9,1,3,3},
{"§µo Hoa Ngäc Béi - HÖ Thæ ",9,1,3,4}
}





-- Nhiem Vu Mua Do O Shop
Mua_Shop = {
{"T¹p Hãa","Ph­îng T­êng","Ng­u B× Yªu §¸i",6,0,1},
{"T¹p Hãa","Ph­îng T­êng","Lang B× Yªu §¸i",6,0,2},
{"T¹p Hãa","Ph­îng T­êng","¤ §»ng Yªu §¸i",6,0,3},
{"T¹p Hãa","Ph­îng T­êng","M·ng B× Yªu §¸i",6,0,4},
{"T¹p Hãa","Ph­îng T­êng","Ng¹c B× Yªu §¸i",6,0,5},
{"T¹p Hãa","Ph­îng T­êng","Tinh §ång Yªu §¸i",6,1,1},
{"T¹p Hãa","Ph­îng T­êng","TÝch Yªu §¸i",6,1,2},
{"T¹p Hãa","Ph­îng T­êng","Hoµng §ång Yªu §¸i",6,1,3},
{"T¹p Hãa","Ph­îng T­êng","ThiÕt Yªu §¸i",6,1,4},
{"T¹p Hãa","Ph­îng T­êng","Tinh §ång Yªu §¸i",6,1,5},
{"T¹p Hãa","Thµnh §«","Thanh §ång Thñ Tr¹c",8,0,1},
{"T¹p Hãa","Thµnh §«","LuyÖn §ång Thñ Tr¹c",8,0,2},
{"T¹p Hãa","Thµnh §«","TÊn ThiÕt Hé UyÓn",8,0,3},
{"T¹p Hãa","Thµnh §«","Ng©n T¬ Tr¹c",8,0,4},
{"T¹p Hãa","Thµnh §«","Kim T¬ Tr¹c",8,0,5},
{"T¹p Hãa","Thµnh §«","Ng­u B× Hé UyÓn",8,1,1},
{"T¹p Hãa","Thµnh §«","Lang B× Hé UyÓn",8,1,2},
{"T¹p Hãa","Thµnh §«","¤ §»ng Hé UyÓn",8,1,3},
{"T¹p Hãa","Thµnh §«","M·ng B× Hé UyÓn",8,1,4},
{"T¹p Hãa","Thµnh §«","Ng¹c B× Hé UyÓn",8,1,5},
{"T¹p Hãa","T­¬ng D­¬ng","Th¶o Ngoa",5,0,1},
{"T¹p Hãa","T­¬ng D­¬ng","Bè Ngoa",5,0,2},
{"T¹p Hãa","T­¬ng D­¬ng","Thiªn TÇng Bè Ngoa",5,0,3},
{"T¹p Hãa","T­¬ng D­¬ng","C¸t Ngoa",5,0,4},
{"T¹p Hãa","T­¬ng D­¬ng","Ng­u B× Ngoa",5,1,1},
{"T¹p Hãa","T­¬ng D­¬ng","TËt Ngoa",5,1,2},
{"T¹p Hãa","T­¬ng D­¬ng","¤ B× Ngoa",5,1,3},
{"T¹p Hãa","T­¬ng D­¬ng","§»ng Méng Ngoa",5,1,4},
{"T¹p Hãa","T­¬ng D­¬ng","Tó Ngoa",5,2,1},
{"T¹p Hãa","T­¬ng D­¬ng","L¨ng T¬ Ngoa",5,2,2},
{"T¹p Hãa","BiÖn Kinh","Sa Di Phôc",2,0,1},
{"T¹p Hãa","BiÖn Kinh","¸o kho¸c cña §¹o sÜ ",2,1,1},
{"T¹p Hãa","BiÖn Kinh","Cæn Y",2,2,1},
{"T¹p Hãa","BiÖn Kinh","Th« Bè tr­êng bµo",2,3,1},
{"T¹p Hãa","BiÖn Kinh","Táa Tö Gi¸p",2,4,1},
{"T¹p Hãa","BiÖn Kinh","Lan Bè Y",2,5,1},
{"T¹p Hãa","BiÖn Kinh","¸o v¶i th« ",2,6,1},
{"T¹p Hãa","BiÖn Kinh","Sa Ni Phôc",2,7,1},
{"T¹p Hãa","BiÖn Kinh","N÷ Thøc §¹o Y",2,8,1},
{"T¹p Hãa","BiÖn Kinh","Thôc CÈm Y",2,9,1},
{"B¸n Ngùa","BiÖn Kinh","LiÖt Hoµng M· ",10,0,1},
{"B¸n Ngùa","BiÖn Kinh","LiÖt Hoµng M· ",10,0,2},
{"B¸n Ngùa","BiÖn Kinh","Hoµng M· ",10,0,3},
{"B¸n Ngùa","BiÖn Kinh","Hoµng M· ",10,0,4},
{"B¸n Ngùa","BiÖn Kinh","Hoµng Phiªu",10,0,5},
{"B¸n Ngùa","T­¬ng D­¬ng","LiÖt B¹ch M· ",10,2,1},
{"B¸n Ngùa","T­¬ng D­¬ng","LiÖt B¹ch M· ",10,2,2},
{"B¸n Ngùa","T­¬ng D­¬ng","B¹ch M· ",10,2,3},
{"B¸n Ngùa","T­¬ng D­¬ng","B¹ch M· ",10,2,4},
{"B¸n Ngùa","T­¬ng D­¬ng","Ngäc Hoa Th«ng",10,2,5},
{"B¸n Ngùa","Thµnh §«","LiÖt H¾c M· ",10,3,1},
{"B¸n Ngùa","Thµnh §«","LiÖt H¾c M· ",10,3,2},
{"B¸n Ngùa","Thµnh §«","H¾c M· ",10,3,3},
{"B¸n Ngùa","Thµnh §«","H¾c M· ",10,3,4},
{"B¸n Ngùa","Thµnh §«","H¾c Kú ",10,3,5},
{"B¸n Ngùa","Ph­îng T­êng","LiÖt Thanh M· ",10,1,1},
{"B¸n Ngùa","Ph­îng T­êng","LiÖt Thanh M· ",10,1,2},
{"B¸n Ngùa","Ph­îng T­êng","Thanh Th«ng",10,1,3},
{"B¸n Ngùa","Ph­îng T­êng","Thanh Th«ng",10,1,4},
{"B¸n Ngùa","Ph­îng T­êng","Tõ Lùu",10,1,5},
{"T¹p Hãa","Ba L¨ng HuyÖn","Sa Di Phôc",2,0,1},
{"T¹p Hãa","Ba L¨ng HuyÖn","¸o Kho¸c ®¹o sÜ ",2,1,1},
{"T¹p Hãa","Ba L¨ng HuyÖn","Cæn Y",2,2,1},
{"T¹p Hãa","Ba L¨ng HuyÖn","Th« Bè Tr­êng Bµo",2,3,1},
{"T¹p Hãa","Ba L¨ng HuyÖn","Lan Bè Y",2,5,1},

}

function giaonhiemvu()
if GetTask(85) == 3 then
OpenCheckItemBox("Hßm KiÓm Tra Item","H·y ®Æt vµo ®©y "..Mua_Shop[GetTask(88)][3].." [CÊp "..Mua_Shop[GetTask(88)][6].."] ®· mua ®­îc","ok")
elseif GetTask(85) == 4 then
OpenCheckItemBox("Hßm KiÓm Tra Item","H·y ®Æt vµo ®©y "..TrangSuc_Ten[GetTask(88)][1].." ®· t×m ®­îc","ok")
elseif GetTask(85) == 5 then
OpenCheckItemBox("Hßm KiÓm Tra Item","H·y ®Æt vµo ®©y 1 trang bÞ cã "..Option[GetTask(88)][1].." tõ "..Option[GetTask(88)][3].." ®Õn "..Option[GetTask(88)][4].." ®· t×m ®­îc","ok")
elseif GetTask(85) == 6 then
OpenCheckItemBox("Hßm KiÓm Tra Item","H·y ®Æt vµo ®©y 1 trang bÞ "..Item_Option[GetTask(88)][1].." cã "..Item_Option2[GetTask(86)][1].." ®· t×m ®­îc","ok")
end
end


function ok()
idx = GetIdxItemBox ()
if (idx == -1) then
Msg2Player("Trong r­¬ng cã nhiÒu h¬n 1 vËt phÈm ")
elseif (idx == 0) then
Msg2Player("Trong r­¬ng kh«ng cã vËt phÈm nµo ")
elseif (idx == -2) then
Msg2Player("VËt phÈm ®Æt  vµo kh«ng ph¶i lµ trang bÞ ")
elseif (idx == -3) then
Msg2Player("Trang bÞ ®Æt vµo ®· bÞ khãa b¶o hiÓm ")
else
if GetTask(85) == 3 then
	if GetDetailTypeItem(idx) == Mua_Shop[GetTask(88)][4] and GetParticularItem(idx) == Mua_Shop[GetTask(88)][5] and GetLevelItem(idx) == Mua_Shop[GetTask(88)][6] then
	DelEquipIdx(idx)
	if GetIdxItemBox() == 0 then
		nl = GetTask(84)
		SetTask(84,GetTask(84) + 1)
		if GetTask(84) == nl+1 then
			nl2 = GetTask(83)
			SetTask(83,GetTask(83)+1)
			if GetTask(83) == nl2+1 then
				hoanthanh()
				Talk(0,"")
			else
				Talk(1,"","Hack ha em")
			end
		else 
			Talk(1,"","Hack ha em")
		end
	else 
		Talk(1,"","Hack ha em")
	end
	else 
	Talk(1,"","Trang bÞ ®Æt vµo kh«ng ph¶i lµ <color=yellow>"..Mua_Shop[GetTask(88)][3].." [CÊp "..Mua_Shop[GetTask(88)][6].."]<color> ")
	end
elseif GetTask(85) == 4 then
	if GetDetailTypeItem(idx) == TrangSuc_Ten[GetTask(88)][2] and GetParticularItem(idx) == TrangSuc_Ten[GetTask(88)][3] and GetLevelItem(idx) == TrangSuc_Ten[GetTask(88)][4] and GetSeriItem(idx) == TrangSuc_Ten[GetTask(88)][5] then
	DelEquipIdx(idx)
	if GetIdxItemBox() == 0 then
		nl = GetTask(84)
		SetTask(84,GetTask(84) + 1)
		if GetTask(84) == nl+1 then
			nl2 = GetTask(83)
			SetTask(83,GetTask(83)+1)
			if GetTask(83) == nl2+1 then
				hoanthanh()
				Talk(0,"")
			else
				Talk(1,"","Hack ha em")
			end
		else 
			Talk(1,"","Hack ha em")
		end
	else 
		Talk(1,"","Hack ha em")
	end
	else 
	Talk(1,"","Trang bÞ ®Æt vµo kh«ng ph¶i lµ <color=yellow>"..TrangSuc_Ten[GetTask(88)][1].."<color> ")
	end
elseif GetTask(85) == 5 then
	if CheckMagicItem(idx,Option[GetTask(88)][2],Option[GetTask(88)][3],Option[GetTask(88)][4]) == 1 then
	DelEquipIdx(idx)
	if GetIdxItemBox() == 0 then
		nl = GetTask(84)
		SetTask(84,GetTask(84) + 1)
		if GetTask(84) == nl+1 then
			nl2 = GetTask(83)
			SetTask(83,GetTask(83)+1)
			if GetTask(83) == nl2+1 then
				hoanthanh()
				Talk(0,"")
			else
				Talk(1,"","Hack ha em")
			end
		else 
			Talk(1,"","Hack ha em")
		end
	else 
		Talk(1,"","Hack ha em")
	end
	else 
	Talk(1,"","Trang bÞ ®Æt vµo kh«ng cã <color=yellow>"..Option[GetTask(88)][1].."<color> tõ <color=red>"..Option[GetTask(88)][3].."<color> ®Õn <color=red>"..Option[GetTask(88)][4].."")
	end
elseif GetTask(85) == 6 then
	if CheckMagicItem(idx,Item_Option2[GetTask(86)][2],1,200) == 1 and GetDetailTypeItem(idx) == Item_Option[GetTask(88)][2] and GetParticularItem(idx) == Item_Option[GetTask(88)][3] and GetLevelItem(idx) == Item_Option[GetTask(88)][4] then
	DelEquipIdx(idx)
	if GetIdxItemBox() == 0 then
		nl = GetTask(84)
		SetTask(84,GetTask(84) + 1)
		if GetTask(84) == nl+1 then
			nl2 = GetTask(83)
			SetTask(83,GetTask(83)+1)
			if GetTask(83) == nl2+1 then
				hoanthanh()
				Talk(0,"")
			else
				Talk(1,"","Hack ha em")
			end
		else 
			Talk(1,"","Hack ha em")
		end
	else 
		Talk(1,"","Hack ha em")
	end
	else 
	Talk(1,"","Trang bÞ ®Æt vµo kh«ng ph¶i lµ <color=yellow>"..Item_Option[GetTask(88)][1].."<color> cã <color=red>"..Item_Option2[GetTask(86)][1].."")
	end
end
end
end

-- NHIEM VU THAN BI DO CHI
function soluongdochi()
lv = GetLevel()
if lv < 30 then
return 3
elseif lv >= 30 and lv < 60 then
return 6
elseif lv >= 60 and lv < 80 then
return 9
elseif lv >= 80 and lv < 120 then
return 12
else
return 15
end
end

function soluongmatchi()
lv = GetLevel()
if lv < 80 then
return 1
elseif lv >= 80 and lv < 120 then
return random(1,2)
else
return random(1,3)
end
end

function mapdochi()
lv = GetLevel()
if lv < 90 then
return floor(lv/10)+1
else
return random(10,13)
end
end

DoChi_Map = {"Ba L¨ng HuyÖn","Hoa S¬n","Phôc Ng­u S¬n","TuyÕt B¸o §éng","D­îc V­¬ng §éng","TÇn L¨ng","Xi V­u §éng","L©m Du Quan","Ch©n Nói Tr­êng B¹ch","Tr­êng B¹ch S¬n Nam","Tr­êng B¹ch S¬n B¾c","M¹c Cao QuËt","M¹n B¾c Th¶o Nguyªn"}
Exp_Map = {37,92,202,285,487,562,637,825,1200,1500,1500,1500,1500}
Mang_Exp2 = {37,92,202,285,487,562,637,825,1200,1500,1800}
Mang_Gold2 = {32,60,124,180,245,360,420,528,631,745,900}

function huy()
if GetTask(90) == 0 then
	Say("<color=green>D· TÈu: <color>: HiÖn t¹i b¹n kh«ng cã c¬ héi nµo ®Ó hñy bá nhiÖm vô, b¹n chØ cã thÓ lµm l¹i tõ ®Çu th«i ! ",3,
	"§óng, ta kh«ng muèn lµm nhiÖm vô quû qu¸i nµy ®©u /huynv1",
	"Ta muèn sö dông 100 m¶nh S¬n Hµ X· T¾c ®Ó hñy bá nhiÖm vô lÇn nµy /huynv2",
	"Uhm! §Ó ta suy nghÜ l¹i ®· /no")
else
	Say("<color=green>D· TÈu: <color>: HiÖn t¹i b¹n vÉn cßn <color=yellow>"..GetTask(90).."<color> c¬ héi hñy bá nhiÖm vô, sè ®iÓm tÝch lòy vÉn ®­îc gi÷ nguyªn. ",2,
	"§óng, ta kh«ng muèn lµm nhiÖm vô quû qu¸i nµy ®©u /huynv3",
	"Ta sÏ cè g¾ng lµm tiÕp nhiÖm vô nµy /no")
end
end

function huynv1()
SetTask(84,0)
SetTask(86,0)
SetTask(87,0)
SetTask(85,0)
SetTask(88,0)
SetTask(83,0)
SetTask(106,0)
SetTask(82,GetTask(82)+1)
Msg2Player("B¹n ®· hñy nhiÖm vô thµnh c«ng, sè lÇn hoµn thµnh nhiÖm vô liªn tiÕp hiÖn t¹i lµ 0")
SetTask(2,GetTask(2) + 1)
Msg2Player("B¹n ®· hñy "..GetTask(2).." liªn tôc. NÕu b¹n hñy 3 lÇn liªn tôc, sÏ kh«ng thÓ lµm d· tÈu sau 1 giê n÷a !")
if GetTask(2) >= 3 then
time = gio * 60 + phut + 60
SetTask(3,time)
Msg2Player("B¹n ®· hñy nhiÖm vô liªn tôc 3 lÇn, vui lßng quay l¹i ®©y sau 1 giê n÷a !")
end
Talk(0,"")
end

function huynv2()
nl = GetTask(89)
if GetTask(89) >= 1000 then
	SetTask(89,GetTask(89)-1000)
	if GetTask(89) == nl-1000 then
		SetTask(84,0)
		SetTask(86,0)
		SetTask(87,0)
		SetTask(85,0)
		SetTask(88,0)
		SetTask(82,GetTask(82)+1)

		Msg2Player("B¹n ®· sö dông 100 m·nh b¶n ®å S¬n Hµ X· T¾c vµ hñy nhiÖm vô thµnh c«ng !")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","<color=green>D· TÈu: <color>: Ng­¬i kh«ng mang  ®ñ 100 tÊm b¶n ®å S¬n hµ X· t¾c, h·y ®i kiÕm ®ñ råi ta sÏ cho ng­¬i hñy bá nhiÖm vô nµy ")
end
end

function huynv3()
nl = GetTask(90)
if GetTask(90) >0 then
	SetTask(90,GetTask(90)-1)
	if GetTask(90) == nl-1 then
		SetTask(84,0)
		SetTask(86,0)
		SetTask(87,0)
		SetTask(85,0)
		SetTask(88,0)
		SetTask(82,GetTask(82)+1)
		Msg2Player("B¹n ®· sö dông c¬ héi hñy bá nhiÖm vô cña D· TÈu vµ hñy nhiÖm vô thµnh c«ng !")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Hack ha em")
end
end




function no()
end

