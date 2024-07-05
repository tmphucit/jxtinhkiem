function main()
if GetTask(103) == 23 then
	SetTask(103,24)
	Talk(1,"","Ng­¬i ®· ®Õn trÔn 1 b­íc, §¹i S­ Trô Tr× ®i <color=yellow>TÇn L¨ng<color> vÉn ch­a vÒ ",
	"Ng­¬i h·y ®Õn ®ã t×m gióp ta nhĞ !")
	Msg2Player("§i TÇn L¨ng vµ biÕt ®­îc n¬i ®©y cã mét tªn ph¶n t¨ng hoµnh hµnh b¸ ®¹o tªn lµ Thµnh Kh«n 199/219. Cã thÓ Trô Tr× ®ang gÆp nguy hiÓm")
elseif GetTask(103) == 25 then
	SetTask(103,26)
	Talk(2,"","C¶m ¬n ng­¬i ®· ®­a Trô Tr× vÒ an toµn, nãi víi Ch­ëng M«n ta sÏ lµm viÖc mµ ng­êi giao phã ",
	"Quay vÒ gÆp Ch­ëng M«n ®Ó hoµn thµnh nhiÖm vô !")
	 Msg2Player("Quay vÒ gÆp Ch­ëng M«n ®Ó hoµn thµnh nhiÖm vô !")
else
	Talk(1,"","A di ®µ phËt, bÇn t¨ng chØ ë ®©y ®Ó tu hµnh, kh«ng muèn bŞ thÕ gian lµm phiÒn !")
end
end