function main()
if GetTask(157) == 4 then
SayNew("<color=green>M¹c SÇu: <color> Nghe giang hå ®ån r»ng ë ngoµi thµnh cã 1 tªn gi¶ m¹o ta ®i hoµnh hµnh kh¾p n¬i. §¹i hiÖp cã thÓ gióp ta cho nã mét bµi häc ®­îc kh«ng ?",2,
"Ta s½n s¸ng tiªu diÖt nã /nhannv",
"HiÖn t¹i ta ch­a cã r·nh /no")
elseif GetTask(157) == 5 then
Talk(1,"","<color=green>M¹c SÇu: <color> Ta ®· nãi lµ nã ë BiÖn Kinh 232/219 råi mµ. H·y ®i nhanh ®i !")
elseif GetTask(157) == 6 then
Talk(1,"","<color=green>M¹c SÇu <color>: §Õn Ph­îng T­êng t×m Ng¹o V©n T«ng sÏ cã Ých ®Êy !")
Msg2Player("<color=green>[NhiÖm Vô Hoµng Kim] <color=red>§Õn Ph­îng T­êng 198/206 gÆp Ng¹o V©n T«ng ®Ó nhËn nhiÖm vô míi !")
else
Talk(1,"","<color=green>M¹c SÇu: <color> Ta kh«ng cã lßng tham nh­ bao ng­êi kh¸c ")
end
end


function nhannv()
SetTask(157,5)
Msg2Player("<color=green>[NhiÖm Vô Hoµng Kim] <color=red>Tiªu diÖt Lý M¹c SÇu gi¶ ë BiÖn Kinh 232/219")
Talk(1,"","<color=green>M¹c SÇu: <color> Lý M¹c SÇu gi¶ ®ang ë BiÖn Kinh 232/219. H·y gióp ta nhÐ !")
end
function no()
end
