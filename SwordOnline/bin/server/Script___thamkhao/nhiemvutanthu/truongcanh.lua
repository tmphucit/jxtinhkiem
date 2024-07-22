function main()
if GetAccount() == "vantoi" then
SayNew("Chon tinh nang:",9,
"Reload dieukhien /reload",
"Reload hotrotanthu /reload",
"Reload lequan/reload",
"Reload xaphu/reload",
"Reload truongcanh/reload",
"Reload dangnhap /reload",
"Reload banngua /reload",
"Reload 622 /reload",
"Thoat./no")
else


if GetTask(493) == 3 then
	SetTask(493,4)
	Talk(1,"","§Õn <color=yellow>Vò L¨ng S¬n 179/166<color> h¸i cho ta 20 C©y T©m Th¶o")
	Msg2Player("<color=green>[NhiÖm Vô T©n Thñ]<color=red> NhËn nhiÖm vô ®Õn Vò L¨ng S¬n 179/166 h¸i 20 C©y T©m Th¶o")
elseif GetTask(493) == 4 then
	if GetItemCount(636) >= 20 then
		for p=1,20 do DelItem(636) end
		SetTask(493,5)
		Talk(1,"","C¸m ¬n ng­¬i ®· gióp ta viÖc nµy, quay vÒ gËp Tam T­¬ng ®i nhÐ ")
		Msg2Player("<color=green>[NhiÖm Vô T©n Thñ]<color=red> Quay vÒ gÆp Tam N­¬ng ®Ó phôc mÖnh")
	else
		Talk(1,"","Ng­¬i kh«ng mang ®ñ cho ta 20 c©y T©m Th¶o kh«ng thÓ hoµn thµnh nhiÖm vô ")
	end
else
	Talk(1,"","T×m D­îc Th¶o vµ chÕ thµnh thuèc lµ nhiÖm vô cña ta. Ta lµ ng­êi t¹o ra nh÷ng mãn hµng cho D­îc §iÕm b¸n")
end
end
end

function no()
end

function reload(nsel)
i = nsel + 1
if i == 1 then
ReLoadScript("\\script\\admin\\dieukhien.lua")
Msg2Player("Da reload dieu khien")
elseif i == 2 then
ReLoadScript("\\script\\hotrotanthu.lua")
Msg2Player("Da reload Ho tro tan thu")

elseif i == 3 then
ReLoadScript("\\script\\global\\lequan.lua")
Msg2Player("Da reload Le Quan")

elseif i == 4 then
ReLoadScript("\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua")
Msg2Player("Da reload xa phu")
elseif i == 5 then
ReLoadScript("\\script\\nhiemvutanthu\\truongcanh.lua")
Msg2Player("Da reload truong canh")
elseif i == 6 then
ReLoadScript("\\script\\admin\\dangnhap.lua")
Msg2Player("Da reload dangnhap")
elseif i == 7 then
ReLoadScript("\\script\\cacsukien\\help\\banngua.lua")
Msg2Player("Da reload banngua")

elseif i == 8 then
ReLoadScript("\\script\\item\\questkey\\176.lua")

Msg2Player("Da reload 176")
end
end