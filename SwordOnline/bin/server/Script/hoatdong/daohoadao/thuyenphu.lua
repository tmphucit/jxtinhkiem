function main()
w,x,y = GetWorldPos()
if w == 53 then

	SayNew("T­¬ng truyÒn §µo Hoa §¶o lµ mét n¬i thiªn khÝ héi tô, ngò hµnh hßa hîp, th©m s©u khã l­êng, ®i dÔ khã vÒ. Ng­¬i hµ tÊt ph¶i ®Õn ®ã, h·y mau mau quay vÒ ®i !",2,
	"Nam tö h¸n ®¹i tr­îng phu cã g× ph¶i sî, h·y ®­a ta ®Õn ®ã /move_daohoadao",
	"§a t¹ ®¹i ca ®· c¶nh b¸o /no")
else
	SayNew("Ng­¬i muèn ta gióp g×?",2,
	"Ta muèn rêi khái §¶o §µo Hoa/move_balanghuyen",
	"KÕt thóc ®èi tho¹i/no")
end
end

function no()
end

function move_daohoadao()
if GetCurCamp() == 0 then
Talk(1,"","B¹n ch­a gia nhËp ph¸i, kh«ng thÓ vµo §µo Hoa §¶o ")
return
end
NewWorld(239, 1524,3240)
SetFightState(0)
Msg2Player("Ngåi yªn, chóng ta ®i §¶o §µo Hoa ...")
end
function move_balanghuyen()
NewWorld(53, 1802,3148)
SetFightState(0)
Msg2Player("Ngåi yªn, chóng ta ®i Ba L¨ng HuyÖn ...")
end