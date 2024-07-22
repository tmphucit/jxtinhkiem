function OnTimer()
w,x,y = GetWorldPos()
if w == 5 then

if GetTask(4) > 0 then
	SetTask(4,GetTask(4)-1)
	Msg2Player("Thêi gian ngåi tï cßn l¹i: "..GetTask(4).." phót ")
	if GetTask(4) == 0 then
		SetTask(4,1)
		StopTimer()
		Msg2Player("Qu¸ tr×nh hèi c¶i ®· kÕt thóc. B¹n cã thÓ ra khái nhµ lao vµ tiÕp tôc hµnh tÈu giang hå ")
	end
else
if GetTask(142) > 1 then
SetTask(142,GetTask(142)-1)
Msg2Player("Thêi gian ®Ó gi¶m PK cßn l¹i: "..GetTask(142).." phót")
elseif GetTask(142) == 1 then
			SetTask(142,60)
			SetPK(GetPK()-1)
			Msg2Player("B¹n ®· gi¶m ®­îc 1 ®iÓm PK")
			Msg2Player("§iÓm PK hiÖn t¹i cña b¹n lµ: "..GetPK().."")

if GetPK() == 0 then
StopTimer()
SetTask(142,0)
Msg2Player("Qu¸ tr×nh ®Çu thó cña b¹n ®· kÕt thóc. B¹n cã thÓ ra khái nhµ lao vµ tiÕp tôc hµnh tÈu giang hå")
end
end
end
else
	StopTimer()
	SetTask(142,0)
Msg2Player("B¹n ra khái Nhµ Tï, hÖ thèng PK tù ®éng hñy.")
end
end