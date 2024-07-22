

function main(idx)
n = GetItemCount(2)
if GetLevel() <= 120 then
if GetItemCount(2) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(2) == (n-1) then
kn = GetLevelExp()
a = random(1,3)
kncx = a*kn/100
AddOwnExp(kncx)
Msg2Player("B¹n sö dông ThiÕt La H¸n nhËn ®­îc "..kncx.." kinh nghiÖm !"); 
Talk(0,"")

	else
		Talk(1,"","Hack Ha Em")
	end
end
else
Talk(1,"","ThiÕt La H¸n chØ sö dông cho §¼ng cÊp d­íi 120")
end
end
