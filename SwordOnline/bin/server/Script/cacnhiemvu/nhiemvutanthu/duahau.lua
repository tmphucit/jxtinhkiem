function main()
if GetTask(495) == 1 then
	SetTask(495,2)
	Talk(1,"","HiÖn t¹i KÒn KÒn ®ang ph¸ ho¹i v­ên D­a HÊu cña ta. Ng­¬i h·y gióp ta tiªu diÖt chóng")
	Msg2Player("<color=green>[NhiÖm Vô T©n Thñ]<color=red> Tiªu diÖt 15 con KÒn KÒn ë Thanh Thµnh S¬n")
elseif GetTask(495) == 2 then
	if GetTask(494) >= 15 then
		idxitem = AddEventItem(634)
		SetBindItem(idxitem , 1)
		SetTask(495, 3)
		SetTask(494,0)
		Talk(1,"","C¸m ¬n ng­¬i ®· gióp ta ®uæi ®¸m KÒn KÒn nµy ®i. T¨ng ng­¬i <color=yellow>1 Qu¶ H­a HÊu")
		Msg2Player("<color=green>[NhiÖm Vô T©n Thñ]<color=red> Mang d­a hÊu vÒ gÆp C¬ Di §ãa")
	else
		Talk(1,"","Ng­¬i ch­a tiªu diÖt ®ñ 15 con KÒn KÒn th× quay l¹i gÆp ta ®Ó lµm g×? ")
	end
else
	Talk(1,"","Ta lµ kÎ b¸n d­a c« ®éc nhÊt thÕ gian, nhµ ta còng ë gÇn ®©y, ng­¬i cã ng­¬i tíi ch¬i kh«ng?")
end	
end