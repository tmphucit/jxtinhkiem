function main()
if GetTask(157) == 4 then
Say("<color=green>M¹c SÇu: <color> Nghe giang hå ®ån r»ng ë ngoµi thµnh cã 1 tªn gi¶ m¹o ta ®i hoµnh hµnh kh¾p n¬i. §¹i hiÖp cã thÓ gióp ta cho nã mét bµi häc ®­îc kh«ng ?",2,
"Ta s½n s¸ng tiªu diÖt nã /nhannv",
"HiÖn t¹i ta ch­a cã r·nh /no")
elseif GetTask(157) == 5 then
Talk(1,"","<color=green>M¹c SÇu: <color> Ta ®· nãi lµ nã ë Thµnh §« 412/303 råi mµ. H·y ®i nhanh ®i !")
elseif GetTask(157) == 6 then
Talk(1,"","<color=green>M¹c SÇu <color>: §Õn Ph­îng T­êng t×m Ng¹o V©n T«ng sÏ cã Ých ®Êy !")
else
Talk(1,"","<color=green>M¹c SÇu: <color> Ta kh«ng cã lßng tham nh­ bao ng­êi kh¸c ")
end
end


function nhannv()
SetTask(157,5)
Msg2Player("NhiÖm Vô: Tiªu diÖt Lý M¹c SÇu gi¶ ë Thµnh §« 412/303")
Talk(1,"","<color=green>M¹c SÇu: <color> Lý M¹c SÇu gi¶ ®ang ë Thµnh §« 412/303. H·y gióp ta nhÐ !")
end
function no()
end
