
function main(idx)
n = GetItemCount(150)
if GetItemCount(150) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(150) == (n-1) then
	vp = random(1,80)
	if vp == 1 then
	AddEventItem(random(28,31))
	Msg2Player("B¹n nhËn ®­îc 1 vËt phÈm quý")
	Msg2SubWorld("Chóc mõng "..GetName().." Më lÔ bao sù kiÖn nhËn ®­îc 1 VËt PhÈm Quý ")
	elseif vp == 5 then
	AddEventItem(random(0,1))
	Msg2Player("B¹n nhËn ®­îc 1 vËt phÈm quý hiÕm")
	Msg2SubWorld("Chóc mõng "..GetName().." Më lÔ bao sù kiÖn nhËn ®­îc 1 VËt PhÈm Quý hiÕm ")
	elseif vp == 10 then
	AddEventItem(2)
	Msg2Player("B¹n nhËn ®­îc 1 ThiÕt La H¸n")
	Msg2SubWorld("Chóc mõng "..GetName().." Më lÔ bao sù kiÖn nhËn ®­îc 1 ThiÕt La H¸n ")
	elseif vp == 20 then
	AddItem(0,11,0,random(1,25),0,0,0)
	Msg2Player("B¹n nhËn ®­îc 1 MÆt n¹")
	Msg2SubWorld("Chóc mõng "..GetName().." Më lÔ bao sù kiÖn nhËn ®­îc 1 MÆt N¹ ")
	else
		sx2 = random(1,7)
		sx3 = random(1,30)
		if sx2 == 2 then
			AddEventItem(random(113,114))
			Msg2Player("B¹n nhËn ®­îc 1 vËt phÈm quý ")
		elseif sx2 == 3 then
			AddEventItem(random(75,102))
			Msg2Player("B¹n nhËn ®­îc 1 viªn Thñy tinh")
		elseif sx2 == 4 then 
		AddEventItem(random(28,31))
		end	
		if sx3 == 5 then 
			AddEventItem(255)
			Msg2SubWorld("§¹i hiÖp "..GetName().." Võa nhËn ®­îc 1 M·nh Vò KhÝ Hoµng Kim")
			elseif sx3 > 1 and sx3 < 5 then
			AddEventItem(254)
			Msg2SubWorld("§¹i hiÖp "..GetName().." Võa nhËn ®­îc 1 M·nh Trang BÞ Hoµng Kim")
			else 
		end
	end
	Talk(0,"")
	else
		Talk(1,"","Hack Ha Em")
	end
end
end
