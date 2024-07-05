function main()
if GetTask(157) == 16 then
	Talk(1,"","<color=green>V©n Nhi: <color>: Ta cÇn t×m b¶o vËt Kim PhËt. H·y T×m Th¸i C«ng C«ng ...")
	Msg2Player("NhiÖm Vu: T×m Th¸i C«ng C«ng ë Ph­îng T­êng ")
	SetTask(157,17)
elseif GetTask(157) == 17 then
	Talk(1,"","<color=green>V©n Nhi: <color> NhiÖm vô ch­a hoµn thµnh ®Õn ®©y lµm gi ?")
elseif GetTask(157) == 19 then
	SetTask(157,20)
	Talk(1,"","<color=green>V©n Nhi: <color> C¸m ¬n §¹i HiÖp, t×m Ng¹o V©n T«ng ®i, «ng ta b¶o ta nh¾n l¹i nh­ vËy ")
	Msg2Player("NhiÖm Vu: t×m Ng¹o V©n T«ng ®Ó nhËn nhiÖm vô ")
elseif GetTask(157) == 20 then
	Talk(1,"","<color=green>V©n Nhi: <color> NhiÖm vô hoµn thµnh råi, ®i nhanh ®i ")
else
Talk(1,"","<color=green>V©n Nhi: <color> Ta sinh ra ®· kh«ng cã cha mÑ, ng­êi t×m ta lµm g× ?")
end
end