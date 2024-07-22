function main()
if GetTask(493) == 3 then
	SetTask(493,4)
	Talk(1,"","§Õn <color=yellow>Vò L¨ng S¬n 179/166<color> h¸i cho ta 20 C©y T©m Th¶o")
	Msg2Player("<color=green>[NhiÖm Vô T©n Thñ]<color=red> NhËn nhiÖm vô ®Õn Vò L¨ng S¬n 179/166 h¸i 20 C©y T©m Th¶o")
elseif GetTask(493) == 4 then
	if GetItemCount(636) >= 20 then
		for p=1,20 do DelItem(636) end
		SetTask(493,5)
		Talk(1,"","C¸m ¬n ng­¬i ®· gióp ta viÖc nµy, quay vÒ gËp Tam T­¬ng ®i nhĞ ")
		Msg2Player("<color=green>[NhiÖm Vô T©n Thñ]<color=red> Quay vÒ gÆp Tam N­¬ng ®Ó phôc mÖnh")
	else
		Talk(1,"","Ng­¬i kh«ng mang ®ñ cho ta 20 c©y T©m Th¶o kh«ng thÓ hoµn thµnh nhiÖm vô ")
	end
else
	Talk(1,"","T×m D­îc Th¶o vµ chÕ thµnh thuèc lµ nhiÖm vô cña ta. Ta lµ ng­êi t¹o ra nh÷ng mãn hµng cho D­îc §iÕm b¸n")
end
end