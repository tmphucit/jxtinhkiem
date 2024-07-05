function main()
if GetTask(103) == 32 then
Say("<color=green>¡n Mµy: <color> §©u ph¶i c¸i g× muèn còng cã ®©u, cø tiÒn ®i tr­íc rïi tİnh tiÕp nhĞ ",2,
"Giao cho h¾n 5 v¹n l­îng lÊy Tİn VËt /chotien",
"Tho¸t /no")
else
Say("<color=green>¡n Mµy: <color>§¹i hiÖp xin bè thİ cho kÎ ¨n xin kh«ng n¬i n­¬ng tùa nµy chót xİu ®Ó sèng qua ngµy..",2,
"Cho ¨n mµy 5 v¹n l­îng /chotien",
"Tho¸t /no")
end
end
function no()
Msg2Player("§¹i hiÖp bá ®i thËt sao ? H·y th­¬ng xãt cho kÎ hÌn män nµy")
end
function chotien()
tien = GetCash()
if GetCash() >= 50000 then
	Pay(50000)
	if GetCash() == (tien-50000) then
		if GetTask(157) == 8 then
			SetTask(156,1)
			Msg2Player("NhiÖm Vô: Quay vÒ gÆp Ng¹o V©n T«ng ")
			Talk(1,"","<color=green>¡n Mµy <color>: NhiÖm vô hoµn thµnh ! Quay vÒ gÆp Ng¹o V©n T«ng ...")
		elseif GetTask(103) == 32 then
			SetTask(103,33)
			Talk(1,"","<color=green>¡n Mµy <color>: CÇm lÊy Tİn VËt M«n Ph¸i cña ng­¬i ®i, ta gi÷ nã ch¼ng ®­îc lîi İch g× !")
			Msg2Player("NhiÖm vô hoµn thµnh, quay vÒ Ch­ëng M«n ®Ó phôc mÖnh !")
			
		else
		Talk(1,"","C¸m ¬n §¹i hiÖp rÊt nhiÒu !!")
		end

	else
	Talk(1,"","hack he em")
	end
else
Talk(1,"","<color=green>¡n Mµy: <color> §¹i hiÖp kh«ng mang ®ñ <color=red>5<color> v¹n l­îng !")
end
end