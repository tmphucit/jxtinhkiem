function main()


if GetTask(493) == 6 then
	SetTask(493,7)
	idxitem = AddEventItem(638)
	SetBindItem(idxitem,1)
	Talk(1,"","Giê còng ®· tr­a råi, phu qu©n cña ta ®ang ®èn c©y ë trong rõng. HiÖn t¹i, con ta ®ang bŞ bÖnh ph¶i ë nhµ tr«ng con. Nhê vŞ ®¹i hiÖp nµy gióp ta mang c¬m ®Õn cho chång")
	Msg2Player("<color=green>[NhiÖm Vô T©n Thñ] Mang c¬m cho Tö L¨ng t¹i Miªu LÜnh 242/201")
elseif GetTask(493) == 7 then
	Msg2Player("<color=green>[NhiÖm Vô T©n Thñ] Mang c¬m cho Tö L¨ng t¹i Miªu LÜnh 242/201")
elseif GetTask(493) == 8 then
	SetTask(493,9)
	Talk(1,"","C¸m ¬n ®¹i hiÖp ®· gióp ®ì ta, h·y vÒ gÆp Tam N­¬ng ®Ó phôc mÖnh")
	Msg2Player("<color=green>[NhiÖm Vô T©n Thñ] Quay vÒ gÆp Tam N­¬ng. Hoµn thµnh nhiÖm vô ")
else
	if HaveMagic(210) ~= 1 then
	Talk(1,"","<color=yellow>Con g¸i Vâ S­ <color>:TiÓu n÷ hiÖn t¹i vÉn ch­a cã ı trung nh©n. §¹i hiÖp h·y cè g¾ng tu luyÖn, ngµy xuÊt s­ ta sÏ cïng ng­¬i ®i d¹o mét vßng quanh §éng §×nh Hå b»ng khinh c«ng cha ta ®· d¹y cho ng­êi.")
	else
	Talk(1,"","<color=yellow>Con g¸i Vâ S­ <color>: Ta thµnh thËt xin lçi vŞ ®¹i hiÖp, ng­¬i tu luyÖn qu¸ l©u, ta kh«ng thÓ chê ®îi ng­¬i m·i ®­îc. Ta ®· thµnh th©n råi nªn kh«ng thÓ cïng ng­êi ®i d¹o nh­ lêi ®· høa ®­îc")
	end
end

end