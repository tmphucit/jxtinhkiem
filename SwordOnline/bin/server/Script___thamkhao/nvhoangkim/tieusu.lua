function main()
if GetTask(157) == 22 then
	if GetItemCount(130) >= 1 and GetItemCount(131) >= 1 and GetItemCount(132) >= 1 and GetItemCount(133) >= 1 and GetItemCount(134) >= 1 then
		SetTask(157,23)
		DelItem(130)	
		DelItem(131)
		DelItem(132)
		DelItem(133)
		DelItem(134)
		Msg2Player("NhiÖm Vô: Quay vÒ gÆp Ng¹o V©n T«ng ")
		Talk(1,"","<color=green>Tiªu S­ <color>: Ng­¬i ®· lµ 1 s¸t thñ, ®Õn gÆp Ng¹o V©n T«ng ®Ó phôc mÖnh ")
	else
	Talk(1,"","<color=green>Tiªu S­ <color>: H·y mang 5 tÊm S¸t Thñ LÖnh ngò hµnh ®Õn cho ta ")
	end

else
Talk(1,"","<color=green>Tiªu S­ <color> Ta chØ lµ 1 chøc nhá trong tiªu côc nµy th«i !")
end
end
