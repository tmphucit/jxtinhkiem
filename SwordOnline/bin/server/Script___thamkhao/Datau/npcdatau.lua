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
Include("\\script\\datau\\diadochi\\head_datau.lua")





function main()
ngay = tonumber(date("%d"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
time = gio * 60 + phut
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
	SetTask(908, 0) -- Reset Task Su Kien
	SetTask(945, 0) -- Reset Task Su Kien
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

if GetTask(84) == 0 then -- Chua nhan nv
soluong = 20 - GetTask(82)
SayNew("<color=green>D· TÈu: <color>: VÞ C«ng tö ®· hoµn thµnh <color=yellow>"..GetTask(82).."<color> nhiÖm vô, nhiÖm vô nµy ngµy h«m nay cã thÓ thùc hiÖn l¹i <color=yellow>"..soluong.."<color> lÇn n÷a, ng­¬i cã muèn lµm n÷a kh«ng  ",3,
"Ta muèn nhËn nhiÖm vô tiÕp theo /nhannv2", 
"PhÇn th­ëng mèc /nhanptmoc",
"§Ó ta nghÜ ng¬i mét l¸t ®·! Ta bËn råi /no")
elseif GetTask(84) == 1 or GetTask(84) == 2 or GetTask(84) == 3 or GetTask(84) == 4 then -- Da nhan nv chua hoan thanh
	if GetTask(85) == 1 then -- Tim do chi
		SayNew("<color=green>D· TÈu: <color>: §©y lµ nhiÖm vô thø "..GetTask(82).."/20, Ng­¬i h·y ®Õn <color=yellow>"..DoChi_Map[GetTask(88)][2].." t×m gióp ta "..GetTask(86).." tÊm ThÇn BÝ §å ChÝ ",3,
		"Ta ®· hoµn thµnh nhiÖm vô lÇn nµy /hoanthanh",
		"Ta muèn hñy bá nhiÖm vô kh«ng lµm n÷a /huy",
		"Ta ®ang bËn, hÑn gÆp ng­êi sau /no")
	elseif GetTask(85) == 2 then -- tim mat chi
		SayNew("<color=green>D· TÈu: <color>: §©y lµ nhiÖm vô thø "..GetTask(82).."/20, Ng­¬i h·y ®Õn <color=yellow>"..DoChi_Map[GetTask(88)][2].." t×m gióp ta "..GetTask(86).." tÊm MËt ChÝ ",3,
		"Ta ®· hoµn thµnh nhiÖm vô lÇn nµy /hoanthanh",
		"Ta muèn hñy bá nhiÖm vô kh«ng lµm n÷a /huy",
		"Ta ®ang bËn, hÑn gÆp ng­êi sau /no")
	elseif GetTask(85) == 3 then -- Mua Item Shop
		SayNew("<color=green>D· TÈu: <color>: §©y lµ nhiÖm vô thø "..GetTask(82).."/20\nNg­¬i h·y ®Õn <color=yellow>"..Mua_Shop[GetTask(88)][1].." - "..Mua_Shop[GetTask(88)][2].." gióp ta mua "..Mua_Shop[GetTask(88)][3].." [CÊp "..Mua_Shop[GetTask(88)][6].."] ",3,
		"§îi xi, ta sÏ ®i mua gióp ng­êi /no",
		"Ta ®Õn giao vËt phÈm nhiÖm vô /hoanthanh",
		"Ta muèn hñy bá nhiÖm vô kh«ng lµm n÷a /huy")
	elseif GetTask(85) == 4 then -- Tim Trang Suc : Ten + He
		SayNew("<color=green>D· TÈu: <color>: §©y lµ nhiÖm vô thø "..GetTask(82).."/20\nH·y t×m cho ta 1 <color=yellow>"..TrangSuc_Ten[GetTask(88)][1].."",3,
		"§îi xi, ta sÏ ®i mua gióp ng­êi /no",
		"Ta ®Õn giao vËt phÈm nhiÖm vô /hoanthanh",
		"Ta muèn hñy bá nhiÖm vô kh«ng lµm n÷a /huy")
	elseif GetTask(85) == 5 then -- Tim Option
		SayNew("<color=green>D· TÈu: <color>: §©y lµ nhiÖm vô thø "..GetTask(82).."/20\nH·y t×m cho ta 1 trang bÞ cã <color=yellow>"..Option[GetTask(88)][1].." tõ "..Option[GetTask(88)][3].." ®Õn "..Option[GetTask(88)][4].." ",3,
		"§îi xi, ta sÏ ®i mua gióp ng­êi /no",
		"Ta ®Õn giao vËt phÈm nhiÖm vô /hoanthanh",
		"Ta muèn hñy bá nhiÖm vô kh«ng lµm n÷a /huy")
	elseif GetTask(85) == 6 then -- Tim Trang suc _ Option
		SayNew("<color=green>D· TÈu: <color>: §©y lµ nhiÖm vô thø "..GetTask(82).."/20\nH·y t×m cho ta 1 trang bÞ <color=yellow>"..Item_Option[GetTask(88)][1].." cã "..Item_Option2[GetTask(86)][1].."",3,
		"§îi xi, ta sÏ ®i mua gióp ng­êi /no",
		"Ta ®Õn giao vËt phÈm nhiÖm vô /hoanthanh",
		"Ta muèn hñy bá nhiÖm vô kh«ng lµm n÷a /huy")
	elseif GetTask(85) == 7 then -- TrÞ danh väng, phóc duyªn, tèng kim
		SayNew("<color=green>D· TÈu: <color>: §©y lµ nhiÖm vô thø "..GetTask(82).."/20, §· liªn tiÕp hoµn thµnh <color=red>"..GetTask(83).."<color> nhiÖm vô.\nNg­¬i h·y ®i n©ng <color=yellow>"..Tri_Diem[GetTask(88)][1].." thªm "..Tri_Diem[GetTask(88)][3].." ®iÓm ",3,
		"Ta ®· hoµn thµnh nhiÖm vô lÇn nµy /hoanthanh",
		"Ta muèn hñy bá nhiÖm vô kh«ng lµm n÷a /huy",
		"Ta ®ang bËn, hÑn gÆp ng­êi sau /no")
	elseif GetTask(85) == 8 then -- TrÞ PK
		SayNew("<color=green>D· TÈu: <color>: §©y lµ nhiÖm vô thø "..GetTask(82).."/20, §· liªn tiÕp hoµn thµnh <color=red>"..GetTask(83).."<color> nhiÖm vô.\nNg­¬i h·y ®i n©ng <color=yellow>trÞ PK lªn "..GetTask(88).."  ®iÓm ",3,
		"Ta ®· hoµn thµnh nhiÖm vô lÇn nµy /hoanthanh",
		"Ta muèn hñy bá nhiÖm vô kh«ng lµm n÷a /huy",
		"Ta ®ang bËn, hÑn gÆp ng­êi sau /no")
	elseif GetTask(85) == 9 then -- TrÞ Kinh NghiÖm
		SayNew("<color=green>D· TÈu: <color>: §©y lµ nhiÖm vô thø "..GetTask(82).."/20, §· liªn tiÕp hoµn thµnh <color=red>"..GetTask(83).."<color> nhiÖm vô.\nNg­¬i h·y ®i n©ng <color=yellow>TrÞ Kinh NghiÖm lªn "..GetTask(88).."  ®iÓm ",3,
		"Ta ®· hoµn thµnh nhiÖm vô lÇn nµy /hoanthanh",
		"Ta muèn hñy bá nhiÖm vô kh«ng lµm n÷a /huy",
		"Ta ®ang bËn, hÑn gÆp ng­êi sau /no")
	end
end
end

function sudungtinvat()

end

function nhanptmoc()
if GetTask(83) >= MANG_MOC[GetTask(106)+1][1] then
	SayNew("<color=green>D· TÈu: <color>: B¹n ®· hoµn thµnh <color=red>"..GetTask(83).."<color> nhiÖm vô D· TÈu. Vui lßng nhËn phÇn th­ëng ®¹t mèc <color=yellow>"..MANG_MOC[GetTask(106)+1][1].."<color> cña m×nh ",2,
	"Ta ®Õn ®Ó nhËn phÇn th­ëng /nhanphanthuong",
	"Ta muèn xem danh s¸ch c¸c mèc phÇn th­ëng/xemdsmoc")
else
	SayNew("<color=green>D· TÈu: <color>: B¹n ®· hoµn thµnh <color=red>"..GetTask(83).."<color> nhiÖm vô D· TÈu. PhÇn th­ëng nhËn ®­îc khi ®¹t mèc <color=yellow>"..MANG_MOC[GetTask(106)+1][1].."<color> nhiÖm vô hoµn thµnh liªn tiÕp ",2,
	--"NhËn phÇn th­ëng hoµn thµnh 20 nhiÖm vô mçi ngµy/nhanphanthuongngay",
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
	sx = RandomNew(1,2)
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
Talk(1,"","§Ó trèng hµnh trang 2 x 3 « ®Ó nhËn phÇn th­ëng , nÕu kh«ng sÏ bÞ mÊt !")
return
end

sl = GetTask(106)
if GetTask(83) >= MANG_MOC[sl+1][1] then
	SetTask(106,GetTask(106)+1)
	if GetTask(106) == sl+1 then
		phanthuongmoc(GetTask(106))
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B¹n ch­a ®¹t mèc tiÕp theo: "..MANG_MOC[sl+1][1].." nhiÖm vô")
end
end

MANG_MOC = {
{100,1},
{200,2},
{300,3},
{400,4},
{500,5},
{700,6},
{1000,7},
{1500,8},
{2000,9},
{3000,10},
{4000,11},
{6000,12},
{8000,13},
}

function phanthuongmoc(vt)
if  MANG_MOC[vt][2] == 1 then
				idxitem = AddEventItem(117)
				Msg2SubWorld(""..GetName().." ®¹t mèc "..MANG_MOC[vt][1].." nhiÖm vô d· tÈu liªn tiÕp nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif  MANG_MOC[vt][2] == 2 then
				idxitem = AddEventItem(119)
				Msg2SubWorld(""..GetName().." ®¹t mèc "..MANG_MOC[vt][1].." nhiÖm vô d· tÈu liªn tiÕp nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif  MANG_MOC[vt][2] == 3 then
				idxitem = AddEventItem(120)
				Msg2SubWorld(""..GetName().." ®¹t mèc "..MANG_MOC[vt][1].." nhiÖm vô d· tÈu liªn tiÕp nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif  MANG_MOC[vt][2] == 4 then
				idxitem = AddEventItem(120)
				idxitem2 = AddEventItem(116)
				Msg2SubWorld(""..GetName().." ®¹t mèc "..MANG_MOC[vt][1].." nhiÖm vô d· tÈu liªn tiÕp nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem)..", "..GetNameItemBox(idxitem2).."")
elseif  MANG_MOC[vt][2] == 5 then
				idxitem = AddEventItem(1)
				Msg2SubWorld(""..GetName().." ®¹t mèc "..MANG_MOC[vt][1].." nhiÖm vô d· tÈu liªn tiÕp nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif  MANG_MOC[vt][2] == 6 then
				idxitem = AddEventItem(0)
				Msg2SubWorld(""..GetName().." ®¹t mèc "..MANG_MOC[vt][1].." nhiÖm vô d· tÈu liªn tiÕp nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")				
elseif  MANG_MOC[vt][2] == 7 then
				idxitem = AddEventItem(random(698,699))
				Msg2SubWorld(""..GetName().." ®¹t mèc "..MANG_MOC[vt][1].." nhiÖm vô d· tÈu liªn tiÕp nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")				
elseif  MANG_MOC[vt][2] == 8 then
				idxitem = AddEventItem(random(698,699))
				Msg2SubWorld(""..GetName().." ®¹t mèc "..MANG_MOC[vt][1].." nhiÖm vô d· tÈu liªn tiÕp nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")		
elseif  MANG_MOC[vt][2] == 9 then
				idxitem = AddEventItem(694)
				Msg2SubWorld(""..GetName().." ®¹t mèc "..MANG_MOC[vt][1].." nhiÖm vô d· tÈu liªn tiÕp nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")		
elseif  MANG_MOC[vt][2] == 10 then
				idxitem = AddEventItem(692)
				Msg2SubWorld(""..GetName().." ®¹t mèc "..MANG_MOC[vt][1].." nhiÖm vô d· tÈu liªn tiÕp nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")		
elseif  MANG_MOC[vt][2] == 11 then
				idxitem = AddEventItem(691)
				Msg2SubWorld(""..GetName().." ®¹t mèc "..MANG_MOC[vt][1].." nhiÖm vô d· tÈu liªn tiÕp nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")			
elseif  MANG_MOC[vt][2] == 12 then
				idxitem = AddItem(0,10,8,1,0,0,0)
				Msg2SubWorld(""..GetName().." ®¹t mèc "..MANG_MOC[vt][1].." nhiÖm vô d· tÈu liªn tiÕp nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")		
elseif  MANG_MOC[vt][2] == 13 then
			
					
end
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/LogNhanPhanThuongMoc.txt", "a");
if LoginLog then
write(LoginLog,"[1] "..GetAccount().." - "..GetName().." - "..MANG_MOC[vt][1].."  - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function xemdsmoc()
SayNew("<color=green>D· TÈu: <color>: Chän mèc nhËn phÇn th­ëng: ",9,
"§¹t mèc 100 nhiÖm vô /moc1",
"§¹t mèc 200 nhiÖm vô /moc1",
"§¹t mèc 300 nhiÖm vô /moc1",
"§¹t mèc 400 nhiÖm vô /moc1",
"§¹t mèc 500 nhiÖm vô /moc1",
"§¹t mèc 700 nhiÖm vô /moc1",
"§¹t mèc 1000 nhiÖm vô /moc1",
"TiÕp theo /xemdsmoc1",
"Tho¸t./no")
end
function xemdsmoc1()
SayNew("<color=green>D· TÈu: <color>: Chän mèc nhËn phÇn th­ëng: ",8,
"§¹t mèc 1500 nhiÖm vô /moc2",
"§¹t mèc 2000 nhiÖm vô /moc2",
"§¹t mèc 3000 nhiÖm vô /moc2",
"§¹t mèc 4000 nhiÖm vô /moc2",
"§¹t mèc 6000 nhiÖm vô /moc2",
"§¹t mèc 8000 nhiÖm vô /moc2",
"Quay l¹i /xemdsmoc",
"Tho¸t./no")
end

function moc1(nsel)
i = nsel+1
if i == 1 then
	Talk(1,"","§¹t mèc 100 nhiÖm vô nhËn ®­îc: <color=yellow>1 Tiªn Th¶o Lé 1 Giê ")
elseif i == 2 then
	Talk(1,"","§¹t mèc 200 nhiÖm vô nhËn ®­îc: <color=yellow>1 Tiªn Th¶o Lé 3 Giê ")
elseif i == 3 then
	Talk(1,"","§¹t mèc 300 nhiÖm vô nhËn ®­îc: <color=yellow>1 Tiªn Th¶o Lé 6 Giê ")
elseif i == 4 then
	Talk(1,"","§¹t mèc 400 nhiÖm vô nhËn ®­îc: <color=yellow>1 Tiªn Th¶o Lé 6 Giê + Nh­ Nhi Hång 6 Giê ")
elseif i == 5 then
	Talk(1,"","§¹t mèc 500 nhiÖm vô nhËn ®­îc: <color=yellow>1 Cuèn TÈy Tñy Kinh")
elseif i == 6 then
	Talk(1,"","§¹t mèc 700 nhiÖm vô nhËn ®­îc: <color=yellow>1 Cuèn Vâ L©m MËt TÞch")
elseif i == 7 then
	Talk(1,"","§¹t mèc 1000 nhiÖm vô nhËn ®­îc: <color=yellow>1 R­¬ng HiÖp Cèt / Nhu T×nh")
end
end
function moc2(nsel)
i = nsel+1
if i == 1 then
	Talk(1,"","§¹t mèc 1500 nhiÖm vô nhËn ®­îc: <color=yellow>1 R­¬ng HiÖp Cèt / Nhu T×nh")
elseif i == 2 then
	Talk(1,"","§¹t mèc 2000 nhiÖm vô nhËn ®­îc: <color=yellow>1 R­¬ng Thiªn Hoµng")
elseif i == 3 then
	Talk(1,"","§¹t mèc 3000 nhiÖm vô nhËn ®­îc: <color=yellow>1 R­¬ng §Þnh Quèc")
elseif i == 4 then
	Talk(1,"","§¹t mèc 4000 nhiÖm vô nhËn ®­îc: <color=yellow>1 R­¬ng An Bang")
elseif i == 5 then
	Talk(1,"","§¹t mèc 6000 nhiÖm vô nhËn ®­îc: <color=yellow>1 Phi V©n ThÇn M· ")
elseif i == 6 then
	Talk(1,"","§¹t mèc 700 nhiÖm vô nhËn ®­îc: <color=yellow>1 R­¬ng Hoµng Kim M«n Ph¸i")
end
end

function hoanthanh()
if GetTask(945) < 10 then
	if GetItemCount(656) > 0 and GetTask(82) + 1 ~= GetTaskTemp(1) then
	DelItem(656)
	SetTask(84,2)
	SetTaskTemp(1, GetTask(82) + 1)
	SetTask(83,GetTask(83)+1)
	SetTask(945, GetTask(945) + 1)
	Msg2Player("B¹n ®· sö dông 1 TÝn VËt - Sa §Ò D· TÈu ®Ó hoµn thµnh nhiÖm vô !")
	Msg2Player("Giíi h¹n sö dông trong ngµy: <color=green>"..GetTask(945).." / 10.")
	end
end

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
			SayNew("<color=green>D· TÈu: <color>: Ng­êi chØ t×m ®­îc "..GetTask(87).." / "..GetTask(86).." tÊm mµ muèn hoµn thµnh nhiÖm vô µ, h·y ®i t×m nhanh lªn !",1,
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
			SayNew("<color=green>D· TÈu: <color>: Ng­êi chØ n©ng <color=yellow>"..Tri_Diem[GetTask(88)][1].."<color> ®­îc <color=red>"..sl.." / "..Tri_Diem[GetTask(88)][3].."<color> ®iÓm, cè g¾ng lªn !",1,
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
			SayNew("<color=green>D· TÈu: <color>: Ng­êi chØ n©ng <color=yellow>TrÞ PK<color> ®­îc <color=red>"..sl.." / "..GetTask(88).."<color> ®iÓm, cè g¾ng lªn !",1,
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
				SayNew("<color=green>D· TÈu: <color>: Ng­êi chØ n©ng <color=yellow>TrÞ Kinh NghiÖm<color> ®­îc <color=red>"..sl.." / "..GetTask(88).."<color> ®iÓm, cè g¾ng lªn !",1,
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
					SayNew("<color=green>D· TÈu: <color>: Ng­êi chØ n©ng <color=yellow>TrÞ Kinh NghiÖm<color> ®­îc <color=red>"..sl2.." / "..GetTask(88).."<color> ®iÓm, cè g¾ng lªn !",1,
					"V©ng ta sÏ ®i ngay /no")
				end		
			else
				sl1 = GetTask(88) - GetTask(86)
				sl2 = GetLevelExp() - sl1
				sl3 = GetExp() - sl2
				SayNew("<color=green>D· TÈu: <color>: Ng­êi chØ n©ng <color=yellow>TrÞ Kinh NghiÖm<color> ®­îc <color=red>"..sl3.." / "..GetTask(88).."<color> ®iÓm, cè g¾ng lªn !",1,
				"V©ng ta sÏ ®i ngay /no")
			end
		end
	end
elseif GetTask(84) == 2 then -- Da hoan thanh nhung chua nhan thuong
	SetTask(91, Win_Item_DuocPham())
	SetTask(92, Win_Gold() * 5)
	SetTask(93, Win_Exp())
	--SetTask(307, 1)
	SetTask(308, RandomNew(1,5))
	nl = GetTask(84)
	SetTask(84,GetTask(84)+1)
	if (GetTask(84) == nl+1) then
				hoanthanh()
	else
		Talk(1,"","Hack ha em")
	end
elseif GetTask(84) == 3 then -- Da xac nhan phan thuong chi viec chon
	if GetTask(91) > 0 and GetTask(91) <= getn(Mang_Win_Item) then
			SayNew("<color=green>D· TÈu<color>: Vui lßng chän phÇn th­ëng: ",4,
			"- "..Mang_Win_Item[GetTask(91)][2].." /phanthuongnew",
			"- "..GetTask(92).." l­îng/phanthuongnew",
			"- "..GetTask(93).." kinh nghiÖm/phanthuongnew",
			"- C¬ héi hñy bá nhiÖm vô/phanthuongnew")
	--	OpenSlectBoxCheck(GetTask(91),GetTask(92),GetTask(93),"phanthuong")
	else
		Talk(1,"","Hack ha em")
	end
	
end
end

function Win_Item_DuocPham()
-- xxx
nhom1 = RandomNew(1,9)
nhom2 = RandomNew(1,9)
nhom3 = RandomNew(1,15)
nhom4 = RandomNew(1,15)
nhom5 = RandomNew(1,22)
nhom6 = RandomNew(1,30)
nhom7 = RandomNew(1,46)

loainv = GetTask(85)
if GetLevel() < 10 then
	return nhom1
elseif GetLevel() >= 10 and GetLevel() < 80 then
	sx = RandomNew(1,100)
	if sx < 70 then
		return nhom1
	else
		return nhom2
	end
else
	if loainv == 1 then
			sx = RandomNew(1,1000)
			if sx < 700 then
				return nhom1
			elseif sx >= 700 and sx < 950 then
				return nhom2
			elseif sx >= 950 and sx < 980 then
				return nhom3
			elseif sx >= 980 and sx < 993 then
				return nhom4
			elseif sx >= 993 and sx < 998 then
				return nhom5
			elseif sx >= 998 and sx < 1000 then
				return nhom6
			else
				return nhom7
			end
	elseif loainv == 3 then
			sx = RandomNew(1,1000)
			if sx < 900 then
				return nhom1
			elseif sx >= 900 and sx < 950 then
				return nhom2
			elseif sx >= 950 and sx < 990 then
				return nhom3
			elseif sx >= 990 and sx < 998 then
				return nhom4
			else
				return nhom5
			end
	elseif loainv == 2 then
		sx = RandomNew(1,1000)
			if sx < 500 then
				return nhom1
			elseif sx >= 500 and sx < 800 then
				return nhom2
			elseif sx >= 800 and sx < 850 then
				return nhom3
			elseif sx >= 850 and sx < 900 then
				return nhom4
			elseif sx >= 950 and sx < 980 then
				return nhom5
			elseif sx >= 980 and sx < 1000 then
				return nhom6
			else
				return nhom7
			end
	elseif loainv == 4 or loainv == 6 then
					sx = RandomNew(1,1000)
			if sx < 500 then
				return nhom1
			elseif sx >= 500 and sx < 800 then
				return nhom2
			elseif sx >= 800 and sx < 850 then
				return nhom3
			elseif sx >= 850 and sx < 950 then
				return nhom4
			elseif sx >= 950 and sx < 980 then
				return nhom5
			elseif sx >= 980 and sx < 1000 then
				return nhom6
			else
				return nhom7
			end
	elseif loainv == 5 then
			sx = RandomNew(1,1000)
			if sx < 800 then
				return nhom1
			elseif sx >= 800 and sx < 900 then
				return nhom2
			elseif sx >= 900 and sx < 980 then
				return nhom3
			elseif sx >= 980 and sx < 995 then
				return nhom4
			elseif sx >= 995 and sx < 1000 then
				return nhom5
			else
				return nhom6
			end
	else
		return 1
	end	
end
end

function Win_Gold_New()
nhom1 = RandomNew(500,1000)
nhom2 = RandomNew(5000,10000)
nhom3 = RandomNew(10000,20000)
nhom4 = RandomNew(20000,30000)
nhom5 = RandomNew(30000,40000)
nhom6 = RandomNew(50000,100000)
nhom7 = RandomNew(100000,300000)

loainv = GetTask(85)
if GetLevel() < 10 then
	return nhom1
elseif GetLevel() >= 10 and GetLevel() < 30 then
	sx = RandomNew(1,100)
	if sx < 70 then
		return nhom1
	else
		return nhom2
	end
else
	if loainv == 1 then
			sx = RandomNew(1,1000)
			if sx < 700 then
				return nhom1
			elseif sx >= 700 and sx < 800 then
				return nhom2
			elseif sx >= 800 and sx < 850 then
				return nhom3
			elseif sx >= 850 and sx < 900 then
				return nhom4
			elseif sx >= 900 and sx < 980 then
				return nhom5
			elseif sx >= 980 and sx < 1000 then
				return nhom6
			else
				return nhom7
			end
	elseif loainv == 3 then
			sx = RandomNew(1,1000)
			if sx < 700 then
				return nhom1
			elseif sx >= 700 and sx < 800 then
				return nhom2
			elseif sx >= 800 and sx < 900 then
				return nhom3
			elseif sx >= 900 and sx < 990 then
				return nhom4
			else
				return nhom5
			end
	elseif loainv == 2 then
		sx = RandomNew(1,1000)
			if sx < 200 then
				return nhom1
			elseif sx >= 200 and sx < 400 then
				return nhom2
			elseif sx >= 400 and sx < 600 then
				return nhom3
			elseif sx >= 600 and sx < 750 then
				return nhom4
			elseif sx >= 750 and sx < 950 then
				return nhom5
			elseif sx >= 950 and sx < 990 then
				return nhom6
			else
				return nhom7
			end
	elseif loainv == 4 or loainv == 6 then
					sx = RandomNew(1,1000)
			if sx < 200 then
				return nhom1
			elseif sx >= 200 and sx < 400 then
				return nhom2
			elseif sx >= 400 and sx < 700 then
				return nhom3
			elseif sx >= 700 and sx < 900 then
				return nhom4
			elseif sx >= 900 and sx < 990 then
				return nhom5
			elseif sx >= 990 and sx < 998 then
				return nhom6
			else
				return nhom7
			end
	elseif loainv == 5 then
			sx = RandomNew(1,1000)
			if sx < 600 then
				return nhom1
			elseif sx >= 600 and sx < 800 then
				return nhom2
			elseif sx >= 80 and sx < 900 then
				return nhom3
			elseif sx >= 900 and sx < 970 then
				return nhom4
			elseif sx >= 970 and sx < 998 then
				return nhom5
			else
				return nhom6
			end
	else
		return 1
	end	
end
end




function Win_Exp_New()
loainv = GetTask(85)
nExp3 = 1500000

	if loainv == 1 then
		nExp = nExp3
	elseif loainv == 3 then
		nExp = nExp3 / 3
	elseif loainv == 2 then
		nExp = nExp3 * 2
	elseif loainv == 4 or loainv == 6 then
		nExp = nExp3 * 3/2
	elseif loainv == 5 then
		nExp = nExp3 * 2/ 3
	else
		nExp = nExp3
	end	
	
nExp = nExp * RandomNew(80,120) / 100	

return nExp
end



function phanthuongnew(nsel)
	i = nsel + 1
	nl = GetTask(84)
	SetTask(84,GetTask(84)-3)
	if GetTask(84) == nl-3 then
		if i == 1 then
				giatri = Mang_Win_Item[GetTask(91)][1]
				if giatri == 0 then
					AddEventItem(Mang_Win_Item[GetTask(91)][3])
				else
					for t=1,giatri do AddItem(Mang_Win_Item[GetTask(91)][3],Mang_Win_Item[GetTask(91)][4],Mang_Win_Item[GetTask(91)][5],Mang_Win_Item[GetTask(91)][6],0,0,0) end
				end
				if GetTask(91) > 30 then
					Msg2SubWorld("§¹i hiÖp "..GetName().." hoµn thµnh NhiÖm Vô D· TÈu nhËn ®­îc <color=yellow>"..Mang_Win_Item[GetTask(91)][2].."")
				else
					Msg2Player("B¹n nhËn ®­îc <color=yellow>"..Mang_Win_Item[GetTask(91)][2].."")
				end
		elseif i == 2 then
				cash = GetCash()
				Earn(GetTask(92))
				Msg2Player("B¹n nhËn ®­îc <color=yellow>"..GetTask(92).." l­îng")
				if  GetTask(92) >= 300000 then
					Msg2SubWorld("<color=pink>Chóc mõng "..GetName().." hoµn thµnh nhiÖm vô D· TÈu nhËn ®­îc "..GetTask(92).." l­îng")
				elseif  GetTask(92) >= 200000 then
					Msg2SubWorld("<color=green>Chóc mõng "..GetName().." hoµn thµnh nhiÖm vô D· TÈu nhËn ®­îc "..GetTask(92).." l­îng")
				elseif  GetTask(92) >= 120000 then
					Msg2SubWorld("<color=yellow>Chóc mõng "..GetName().." hoµn thµnh nhiÖm vô D· TÈu nhËn ®­îc "..GetTask(92).." l­îng")
				elseif GetTask(92) >= 80000 then
					Msg2SubWorld("<color=blue>Chóc mõng "..GetName().." hoµn thµnh nhiÖm vô D· TÈu nhËn ®­îc "..GetTask(92).." l­îng")
				end
				SetTask(92,0)
		elseif i == 3 then
				m = floor(GetTask(93) / 5)
				for i=1,5 do AddOwnExp(m) end
				Msg2Player("B¹n nhËn ®­îc <color=yellow>"..GetTask(93).." kinh nghiÖm")
				SetTask(93,0)		
		elseif i == 4 then
				SetTask(90,GetTask(90)+1)	
				Msg2Player("B¹n nhËn ®­îc 1 lÇn c¬ héi hñy bá nhiÖm vô  !")
		end
		SetTask(86,0)
		SetTask(87,0)
		SetTask(85,0)
		SetTask(88,0)
		SetTask(82,GetTask(82)+1)
		SetTask(2,0)
		SetTask(3,0)
		-- Event
		ngay = tonumber(date("%d"))
		gio = tonumber(date("%H"))



			SetTask(908, GetTask(908) + 1)
			--Msg2Player("§iÒu kiÖn sù kiÖn Nhµ Gi¸oViÖt Nam: <color=yellow>"..GetTask(908).." / 20")	
			if GetTask(908) == 20 then
				thang = tonumber(date("%m"))
				ngay = tonumber(date("%d"))
				if thang == 11 or (ngay == 1 and thang == 12) then
				--AddEventItem(908)
				--Msg2Player("B¹n nhËn ®­îc <color=yellow>1 Th­ Göi ThÇy §å ")
				end
				
			end

		-- End
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end	
end

mangthang = {31,28,31,30,31,30,31,31,30,31,30,31}
function AddLaThu1Ngay()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))

		ngay = ngay + 1
		if ngay > mangthang[thang] then
			ngay = ngay - mangthang[thang]
			thang = thang + 1
		end
		itemidx = AddEventItem(657)
		SetHSD(itemidx, 2021 , thang, ngay, gio )
		Msg2Player("B¹n nhËn ®­îc 1 L¸ Th­ Göi MÑ ")
end

function phanthuong(nid)
AddEventItem(44)
Msg2Player("B¹n nhËn ®­îc <color=green>HuyÒn Tinh 1")

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
				xs2 = RandomNew(1,3)
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
item = RandomNew(1,230)
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
	rnd = RandomNew(1,9)
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
if GetLevel() >= 90 then
return 10
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
diemexp = 5 * tinh_exp_soluong() * Mang_Exp2[tinh_exp_dc()]
if GetTask(85) == 1 then
	if GetTask(88) < 1 or GetTask(88) > getn(DoChi_Map) then
	SetTask(88,11)
	end
	diem2 = 10 * tinh_exp_soluong() * Mang_Exp2[tinh_exp_dc()]
elseif GetTask(85) == 2 then
	if GetTask(88) < 1 or GetTask(88) > getn(DoChi_Map) then
	SetTask(88,11)
	end
	diem2 = 40 * tinh_exp_soluong() * Mang_Exp2[tinh_exp_dc()]
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
	if GetTask(88) == 1000000 then
		diem2 = diemexp * 1 / 3
	elseif GetTask(88) == 2000000 then
		diem2 = diemexp / 2
	elseif GetTask(88) == 3000000 then
		diem2 = diemexp * 2 / 3
	elseif GetTask(88) == 4000000 then
		diem2 = diemexp * 3 / 3
	else
		diem2 = diemexp * 4 / 3
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
	diem2 = 100000
end
diem3 = 0
diem4 = 0
diem2 = floor(diem2)
diem3 = diem2 - (diem2 * 20 / 100) 
diem4 = diem2 + (diem2 * 20 / 100) 

diemnhanduoc = floor(RandomNew(diem3,diem4))
diemnhanduoc = diemnhanduoc * 30

return diemnhanduoc
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
	if GetTask(88) == 1000000 then
		diem2 = diemexp * 1 / 3
	elseif GetTask(88) == 2000000 then
		diem2 = diemexp / 2
	elseif GetTask(88) == 3000000 then
		diem2 = diemexp * 2 / 3
	elseif GetTask(88) == 4000000 then
		diem2 = diemexp * 3 / 3
	else
		diem2 = diemexp * 4 / 3
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
diem2 = floor(RandomNew(diem3,diem4))
return diem2
end

function Win_Item()
xs = RandomNew(1,100)	
if xs <= 75 then
	xs3 = RandomNew(1,3)
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
	xs2 = RandomNew(1,100)
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
	xs3 = RandomNew(1,30) 
	if xs3 == 1 then
		AddEventItem(RandomNew(28,30))
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




function tinhxacsuat()
if GetLevel() < 80 then
	sx = RandomNew(1,100)
	if sx < 40 then
		return 1
	elseif sx >= 40 and sx < 50 then
		return 3
	elseif sx >= 50 and sx < 65 then
		return 6 -- Tim Option
	elseif sx >= 65 and sx < 85 then
		return 4
	elseif sx >= 85 and sx < 95 then
		return 5
	else
		return 2
	end	
elseif GetLevel() >= 80 and GetLevel() < 90 then
	sx = RandomNew(1,100)
	if sx < 40 then
		return 1
	elseif sx >= 40 and sx < 50 then
		return 3
	elseif sx >= 50 and sx < 65 then
		return 6 -- Tim Option
	elseif sx >= 65 and sx < 85 then
		return 4
	elseif sx >= 85 and sx < 95 then
		return 5
	else
		return 2
	end
else
	return RandomNew(1,7)
end
end


function nhannv2()
ngay = tonumber(date("%d"))
nl = GetTask(84)
SetTask(84,GetTask(84)+1)
if GetTask(84) == (nl+1) then
	loainv = tinhxacsuat()
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
		SetTask(88,RandomNew(1,getn(Mua_Shop)))
	elseif (loainv == 4) then	
		if GetLevel() < 30 then
			SetTask(88,RandomNew(1,75))
		else
			SetTask(88,RandomNew(1,getn(TrangSuc_Ten)))
		end	
	elseif (loainv == 5) then
		SetTask(88,RandomNew(1,getn(Option)))
	elseif (loainv == 6) then
		SetTask(88,RandomNew(1,getn(Item_Option)))
		SetTask(86,RandomNew(1,getn(Item_Option2)))	
	elseif (loainv == 7) then
		SetTask(88,RandomNew(1,getn(Tri_Diem)))
		SetTask(86,GetTask(Tri_Diem[GetTask(88)][2])+Tri_Diem[GetTask(88)][3])
		SetTask(87,GetTask(Tri_Diem[GetTask(88)][2]))
	elseif (loainv == 8) then
		SetTask(88,1)
		
		SetTask(86,GetPK()+GetTask(88))
		SetTask(87,GetPK())
	elseif (loainv == 9) then
		kn = GetLevelExp()
		SetTask(88,Mang_KN[RandomNew(1,getn(Mang_KN))])

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
elseif lv < 60 then
return 6
elseif lv < 80 then
return 9
elseif lv < 120 then
return 12
else
return 15
end
end

function soluongmatchi()
lv = GetLevel()
if lv < 40 then
return 1
elseif lv >= 40 and lv < 90 then
return RandomNew(1,2)
else
return RandomNew(1,3)
end
end

function mapdochi()

if GetLevel() < 10 then
return RandomNew(1,3)
elseif GetLevel() < 20 then
return RandomNew(4,6)
elseif GetLevel() < 30 then
return RandomNew(7,9)
elseif GetLevel() < 40 then
return RandomNew(10,12)
elseif GetLevel() < 50 then
return RandomNew(13,15)
elseif GetLevel() < 60 then
return RandomNew(16,20)
elseif GetLevel() < 70 then
return RandomNew(21,25)
elseif GetLevel() < 80 then
return RandomNew(26,29)
elseif GetLevel() < 90 then
return RandomNew(30,35)
else
return RandomNew(36,getn(DoChi_Map))
end
end

function huy()
if GetTask(90) == 0 then
	SayNew("<color=green>D· TÈu: <color>: HiÖn t¹i b¹n kh«ng cã c¬ héi nµo ®Ó hñy bá nhiÖm vô, b¹n chØ cã thÓ lµm l¹i tõ ®Çu th«i ! ",3,
	"§óng, ta kh«ng muèn lµm nhiÖm vô quû qu¸i nµy ®©u /huynv1",
	"Ta muèn sö dông 100 m¶nh S¬n Hµ X· T¾c ®Ó hñy bá nhiÖm vô lÇn nµy /huynv2",
	"Uhm! §Ó ta suy nghÜ l¹i ®· /no")
else
	SayNew("<color=green>D· TÈu: <color>: HiÖn t¹i b¹n vÉn cßn <color=yellow>"..GetTask(90).."<color> c¬ héi hñy bá nhiÖm vô, sè ®iÓm tÝch lòy vÉn ®­îc gi÷ nguyªn. ",2,
	"§óng, ta kh«ng muèn lµm nhiÖm vô quû qu¸i nµy ®©u /huynv3",
	"Ta sÏ cè g¾ng lµm tiÕp nhiÖm vô nµy /no")
end
end


function huynv1()
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/HuyNhiemVuDaTau.txt", "a");
if LoginLog then
write(LoginLog,"[1] "..GetAccount().." - "..GetName().." - "..GetTask(83).."  - Time: "..thoigian.."\n");
end
closefile(LoginLog)

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

