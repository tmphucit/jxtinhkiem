Include("\\script\\lib\\thuvien.lua")
Include("\\script\\event\\danhsachguithu.lua")

ThongBaoXepHang = 0

function main()
Talk(1,"","Sù kiÖn ®· kÕt thóc !")
end
function main_()
gio = tonumber(date("%H"))
if ThongBaoXepHang ~= gio and getn(DS_THU) >= 5 then
	SapXepHangDuaTop()
	Msg2SubWorld("<color=green>Danh sach Top Sù KiÖn T©m Th­ Ng­êi LÝnh: ")
	for k=1,5 do
		if k <= getn(DS_THU) then
			Msg2SubWorld("- H¹ng "..k..": "..DS_THU[k][1].." - "..DS_THU[k][2].." c¸i")
		end
	end
	ThongBaoXepHang = gio
	savebang()
end

SayNew("§· l©u l¾m råi, kÓ tõ ngµy con ta nhËp ngò, kh«ng biÕt b©y giê nã thÕ nµo råi...Êm th©n giµ yÕu nµy giê ®©y s¾p kh«ng lµm ®­îc g× n÷a råi... VÞ tr¸ng sÜ cã thÓ gióp ®ì ta kh«ng?",3,
"Ta cã bøc th­ tõ xa cña con bµ göi vÒ ®©y. /guithu",
"Bµ cÇn ta gióp g× kh¸c kh«ng? /giupba",
"LÇn sau ta sÏ mang th­ vÒ cho bµ /no")

end


tam_duatop = {"",0}
function SapXepHangDuaTop()
for i=1,getn(DS_THU) do
	for j=1,getn(DS_THU) do
		if DS_THU[i][2] > DS_THU[j][2] then
			tam_duatop = DS_THU[i]
			DS_THU[i] = DS_THU[j]
			DS_THU[j] = tam_duatop
		end
	end
end

end

function giupba()
ngay = tonumber(date("%d"))

tinhtoan = GetTask(911) - mod(GetTask(911),1000)
if tinhtoan ~= ngay*1000 then
	SetTask(911, ngay * 1000)
	SetTask(912,0)
end

nhiemvu = mod(GetTask(911),1000)
if nhiemvu == 0 then
		if GetItemCount(130) > 0 and GetItemCount(131) > 0 and GetItemCount(132) > 0 and GetItemCount(133) > 0 and GetItemCount(134) > 0 then
			DelItem(130)
			DelItem(131)
			DelItem(132)
			DelItem(133)
			DelItem(134)
			SetTask(911, GetTask(911) + 1)
			Msg2Player("Hoµn thµnh nhiÖm vô 1 !")
			Msg2Player("NhiÖm vô 2: §Õn B¹ch V©n §éng tiªu diÖt 100 Sãi §á ")
			Talk(1,"","C¸m ¬n tr¸ng sÜ ®· gióp ta, h·y ®Õn B¹ch V©n §éng tiªu diÖt 100 con sãi mang thñ cÊp vÒ cho ta !")
		else
			Talk(1,"","NhiÖm vô 1: Mang 5 S¸t Thñ LÖnh kh¸c ngò hµnh ®Õn cho ta !")
		end
elseif nhiemvu == 1 then
		if GetTask(912) >= 100 then
			SetTask(912,0)
			SetTask(911, GetTask(911) + 1)
			Msg2Player("Hoµn thµnh nhiÖm vô 2 !")
			Msg2Player("NhiÖm vô 3: Mang cho MÑ Giµ 1 chiÕc nhÉn ")
		else
			Talk(1,"","NhiÖm vô 2: §Õn B¹ch V©n §éng ®¸nh b¹i 100 con sãi !")
		end
elseif nhiemvu == 2 then
			OpenCheckItemBox("Hßm KiÓm Tra Item","H·y ®Æt vµo ®©y 1 chiÕc nhÉn","ok")
elseif nhiemvu == 3 then
		if GetTask(162) >= GetTask(912) then			
				SetTask(911, GetTask(911) + 1)
				SetTask(912, GetTask(100) + 20)
			Msg2Player("Hoµn thµnh nhiÖm vô 4 !")
			Msg2Player("NhiÖm vô 5: N©ng 20 ®iÓm danh väng ")
		else
			Talk(1,"","Sè ®iÓm phóc duyªn yªu cÇu kh«ng ®ñ: "..GetTask(162).." / "..GetTask(912).."")
		end
elseif nhiemvu == 4 then
	if CheckFreeBoxItem(0,10,5,5) == 0 then
		Talk(1,"","Hµnh trang ph¶i ®Ó trèng 2 x 3 « míi cã thÓ mua vËt phÈm !")
		return
	end
		if GetTask(100) >= GetTask(912) then			
			SetTask(911, GetTask(911) + 1)
			SetTask(912, 0)
			Msg2Player("Hoµn thµnh nhiÖm vô 5 !")
			AddEventItem(657) 
			for i=1,5 do 
				AddEventItem(662) 
			end
			Msg2Player("B¹n nhËn ®­îc: 5 Hång Bao, 5 L¸ Th­ Göi MÑ !")
		else
			Talk(1,"","Sè ®iÓm danh väng yªu cÇu kh«ng ®ñ: "..GetTask(100).." / "..GetTask(912).."")
		end
else
	Talk(1,"","Ng­¬i ®· hoµn thµnh ®ñ nhiÖm vô trong ngµy, ngµy mai quay l¹i ®©y nhÐ !") 
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
	if GetDetailTypeItem(idx) == 3 then
		DelEquipIdx(idx)
		if GetIdxItemBox() == 0 then
			SetTask(911, GetTask(911) + 1)
			SetTask(912, GetTask(162) + 50)
			Msg2Player("Hoµn thµnh nhiÖm vô 3 !")
			Msg2Player("NhiÖm vô 4: N©ng 50 ®iÓm phóc duyªn ")
			Talk(0,"")
		else
			Talk(1,"","Hack ha em")
		end
	else
		Talk(1,"","Trang bÞ ®Æt vµo kh«ng ph¶i nhÉn !")
	end
end
end

function guithu()
ngay = tonumber(date("%d"))
if GetItemCount(657) == 0 then
Talk(1,"","Ng­¬i l¹i ®i lõa bµ giµ nµy µ, lµm g× cã l¸ th­ nµo?")
return
end

tinhtoan = GetTask(909) - mod(GetTask(909),1000)
if tinhtoan ~= ngay*1000 then
	SetTask(909, ngay * 1000)
end

sl = GetItemCount(657)

DelItem(657)
if GetItemCount(657) == sl - 1 then
	if mod(GetTask(909),1000) < 5 then
		SetTask(909, GetTask(909) + 1)
		AddEventItem(662)
		Msg2Player("Giao th­ thµnh c«ng, nhËn ®­îc 1 Hång Bao !")
		Msg2Player("Giêi h¹n nhËn Hång Bao trong ngµy: "..mod(GetTask(909),1000).." / 5 ")
	end	
	SetTask(910, GetTask(910) + 1)
	Msg2Player("Tæng sè th­ ®· giao trong sù kiÖn: "..GetTask(910).." lÇn")
	
	vt = checkds()
	if vt == 0 then
			DS_THU[getn(DS_THU)+1] = {GetName(), GetTask(910)}
	else
			DS_THU[vt][2] = GetTask(910)
	end
	xh = checkxh()
	
	Msg2Player("B¹n ®ang ®øng vÞ trÝ thø: "..xh.." trong danh s¸ch !")
	
else
	Talk(1,"","hack ha em")
end
end

function checkxh()
vt = 1
for i=1,getn(DS_THU) do
	if GetTask(910) < DS_THU[i][2] then
		vt = vt + 1
	end
end
return vt
end
function checkds()
for i=1,getn(DS_THU) do
	if GetName() == DS_THU[i][1] then
		return i
	end
end
return 0
end

function savebang()
BANG = TaoBang(DS_THU,"DS_THU")		
LuuBang("script/event/danhsachguithu.lua",BANG)
end

function no()
end