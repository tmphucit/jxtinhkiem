function main()
w,x,y = GetWorldPos()
if w == 17 then
	SayNew("§¹i hiÖp muèn ®Õn Vi S¬n §¶o ­? §¶o chñ c¨n dÆn ta, phµm nh÷ng ai muèn ®Õn Vi S¬n §¶o ph¶i cã mang theo tÝn vËt LÖnh Bµi Vi S¬n §¶o. Ng­¬i cã mang theo kh«ng?",1,
	-- "Ta cã mang theo tÝn vËt, h·y ®­a ta lªn Vi S¬n §¶o /move_visondao",
	"Ta quªn mang theo lÖnh bµi /no")
else
	SayNew("Ng­¬i muèn ta gióp g×?",2,
	"Ta muèn rêi khái §¶o §µo Hoa/move_balanghuyen",
	"KÕt thóc ®èi tho¹i/no")
end
end

function no()
end

function move_visondao()
if GetCurCamp() == 0 then
Talk(1,"","B¹n ch­a gia nhËp ph¸i, kh«ng thÓ vµo Vi S¬n §¶o ")
return
end
if GetItemCount(658) == 0 then
Talk(1,"","Ng­¬i kh«ng mang theo LÖnh Bµi Vi S¬n §¶o, kh«ng thÓ lªn !")
return
end

DelItem(658)
SetPKState(1)
BlockPKState(1)
SetTempRevPos(24,1395*32,2783*32)
SetRevPos(58)
Msg2Player("§· di chuyÓn ®Õn b¶n ®å Vi S¬n §¶o !")
Msg2SubWorld("§¹i hiÖp [<color=green>"..GetName().."<color>] ®· vµo Vi S¬n §¶o !")
--Msg2Player("<color=yellow>Tho¸t game t¹i Vi S¬n §¶o trong thêi gian 17h00 - 17h59 sÏ gi÷ nguyªn vÞ trÝ. Cßn l¹i sÏ ®­îc ®­a vÒ Ba Lang HuyÖn")
SetDeathScript("\\script\\hoatdong\\visondao\\playerdie.lua");

SetFightState(0)
NewWorld(24,1395,2783)

end
function move_balanghuyen()
NewWorld(53, 1802,3148)
SetFightState(0)
Msg2Player("Ngåi yªn, chóng ta ®i Ba L¨ng HuyÖn ...")
end