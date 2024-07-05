
function main(idx)
if GetItemCount(144) >= 1 then
n = GetItemCount(142)
if GetItemCount(142) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(142) == (n-1) then	
	DelItem(144)
	vp = random(1,30)
	if vp == 1 or vp == 10 then
	AddEventItem(random(28,31))
	Msg2Player("B¹n nhËn ®­îc 1 vËt phÈm quý")
	elseif vp == 5 then
	AddEventItem(random(0,1))
	Msg2Player("B¹n nhËn ®­îc 1 vËt phÈm quý hiÕm")
	elseif vp > 10 and vp <= 15 then
	AddEventItem(2)
	Msg2Player("B¹n nhËn ®­îc 1 ThiÕt La H¸n")
	elseif vp > 15 and vp <= 25 then
	AddEventItem(random(75,102))
	Msg2Player("B¹n nhËn ®­îc 1 bÝ kÝp 90")
	elseif vp == 30 then
	AddEventItem(14)
	Msg2Player("B¹n nhËn ®­îc 1 S­ §å LÖnh")
	Msg2SubWorld("Chóc mõng "..GetName().." Më lÔ bao v­ît ¶i nhËn ®­îc 1 S­ ®å lÖnh")
	else
	AddEventItem(random(4,5))
	Msg2Player("B¹n nhËn ®­îc 1 viªn HuyÒn tinh")
	end
Talk(0,"")
else
Talk(1,"","Hack Ha Em")
end
end
else
Talk(1,"","B¹n kh«ng cã ch×a kho¸ b¹c")
end
end

