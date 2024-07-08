Include("\\script\\hoatdong\\loidaihonchien\\npcbaodanh.lua")

function main()
SayNew("<color=green>Hoµng D­îc S­ <color>: Ng­êi ta gäi ta lµ §«ng Tµ, ng­¬i t×m ta cã viÖc g×?",2,
--"NhiÖm vô Ch¸o L¹p B¸t /chaolapbat",
"Sù kiÖn L«i §µi Hçn ChiÕn /ThamGiaLoiDai",
"Tho¸t./no")
end

function chaolapbat()
if GetTask(528) == 0 then
	SetTask(528,1)
	Talk(1,"","Ng­¬i h·y ®Õn phÝa ®«ng cña ®¶o, ë ®ã cã rÊt nhiÒu heo rõng. Tiªu diÖt vµ mang <color==yellow>1 MiÕng ThÞt Heo<color> vÒ cho ta.")
	Msg2Player("NhËn nhiÖm vô: <color=yellow>T×m 1 ThÞt Heo")
elseif GetTask(528) == 1 then
	if GetItemCount(663) > 0 then
		SetTask(528,2)
		for k=1,GetItemCount2(663) do
			DelAllItem(663)
		end
		idxitem = AddEventItem(663)
		SetBindItem(idxitem,1)
		Talk(1,"","Kh¸ l¾m! Ng­¬i h·y mang chç thÞt heo nµy ®Õn cho con g¸i ta, trªn ®­êng ®i h·y ghÐ ngang khe suèi phÝa ®«ng nam h¸i mét Ýt lôc ®©u, h·y mau lªn ®­êng, trêi s¾p tèi råi")
		Msg2Player("NhËn nhiÖm vô: <color=yellow>T×m 1 §Ëu Xanh")
	else
		Talk(1,"","NhiÖm vô ch­a hoµn thµnh. H·y quay l¹i khu rõng phÝa ®«ng ®Ó t×m ThÞt Heo mang vÒ cho ta")
	end
elseif GetTask(528) == 2 then
	Talk(1,"","Ng­¬i cßn ®øng ®ã lµm g×, hay mau ®i t×m c©y lôc ®Ëu ®i !")
end
end

function loidaihonchien()
Talk(1,"","Dang cap nhat")
end

function no()
end