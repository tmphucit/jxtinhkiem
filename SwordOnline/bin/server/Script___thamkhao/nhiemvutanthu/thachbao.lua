function main()
if GetTask(493) == 1 then
	if GetItemCount(637) >= 1 then
		DelItem(637)
		SetTask(493,2)
		Talk(1,"","Göi lêi c¸m ¬n cña ta ®Õn Tam N­¬ng nhĞ. LÇn sau cã thiÕu tiÒn thİ b¸o ta cho m­în tiÕp")
		Msg2Player("<color=green>[NhiÖm Vô T©n Thñ]<color=red> Quay vÒ gÆp Tam N­¬ng ®Ó phôc mÖnh")
	else
		Talk(1,"","Ng­¬i ®Õn ®©y tay kh«ng µ? Hay ng­¬i xµi hÕt tiÒn cña ta råi")
	end
else
	Talk(1,"","Ta ®©y lµ ng­êi tèt, chuyªn gióp nh÷ng ng­êi nghÌo khæ. Nh­ng nî tiÒn ta th× b¾t buéc tr¶ nÕu kh«ng th× .....")
end
end