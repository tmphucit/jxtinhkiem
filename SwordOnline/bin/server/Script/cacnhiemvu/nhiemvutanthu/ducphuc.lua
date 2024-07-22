function main()
if GetTask(495) == 4 then
	SetTask(495,5)
	Talk(1,"","H·y ®Õn <color=yellow>B¹ch V©n §éng 232/205<color> tiªu diÖt 10 con S¸t Ph¸ Lang")
	Msg2Player("<color=green>[NhiÖm Vô T©n Thñ]<color=red> NhËn nhiÖm vô qua B¹ch V©n §éng 232/205 tiªu diÖt 10 con S¸t Ph¸ Lang")
elseif GetTask(495) == 5 then
	if GetTask(494) >= 10 then
		SetTask(494,0)
		SetTask(495, 6)
		Talk(1,"","C¸m ¬n nhµ ng­¬i ®· gióp ta, quay vÒ gÆp C¬ Di §ãa ®Ó phôc mÖnh")
		Msg2Player("<color=green>[NhiÖm Vô T©n Thñ]<color=red> Quay vÒ gÆp C¬ Di §ãa ®Ò phôc mÖnh !")
	else
		Talk(1,"","Ng­¬i h·y ®Õn B¹ch V©n §éng 232/205 tiªu diÖt gióp ta 10 con S¸t Ph¸ Lang. Sè l­îng hoµn thµnh: "..GetTask(494).." / 10")
	end
elseif GetTask(495) == 6 then
	Talk(1,"","Ng­¬i h·y mau quay vÒ gÆp C¬ Di §ãa ®Ó phôc mÖnh !")
else	
	Talk(1,"","Ng­¬i biÕt t¹i sao ta tªn lµ §øc Phóc kh«ng?")
end
end