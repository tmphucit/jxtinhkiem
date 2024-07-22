function main()
idmagic = random(449,452)
DoSkillMan(idmagic,1)
if idmagic == 449 then
Msg2Player("B¹n nhËn ®­îc Tam Thanh Chi Khİ khiÕn cho ®èi ph­¬ng xung quanh ®Òu bŞ cho¸ng ")
elseif idmagic == 450 then
Msg2Player("B¹n nhËn ®­îc Tam Thanh Chi Khİ khiÕn cho ®èi ph­¬ng xung quanh ®Òu bŞ ®ãng b¨ng")
elseif idmagic == 451 then
Msg2Player("B¹n nhËn ®­îc Tam Thanh Chi Khİ khiÕn cho ®èi ph­¬ng xung quanh ®Òu bŞ tróng ®éc")
elseif idmagic == 452 then
Msg2Player("B¹n nhËn ®­îc Tam Thanh Chi Khİ khiÕn cho ®èi ph­¬ng xung quanh ®Òu bŞ gi¶m tèc ®é")
end
addbaovat()
end

diembaovat = 50
function addbaovat()
w,x,y = GetWorldPos()
if GetGlbMissionV(60) == 2000 then
if w == 37 then
	SetTask(25,GetTask(25)+1)
	SetTask(26,GetTask(26)+diembaovat)
	SetTask(15,GetTask(15)+diembaovat)
	SetTask(31,GetTask(31)+diembaovat)
	if GetTask(12) == 1 then
		SetGlbMissionV(81,GetGlbMissionV(81) + diembaovat)
	elseif GetTask(12) == 2 then
		SetGlbMissionV(82,GetGlbMissionV(82) + diembaovat)
	end
	Msg2Player("B¹n nhËn ®­îc "..diembaovat.." ®iÓm tİch lòy ")
	UpdateTopTKNew()
end
end
end