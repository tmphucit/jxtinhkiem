function main(idx)
n = GetItemCount(413)
w,x,y= GetWorldPos()
if GetPKState() == 0 or w == 24 then
DelItemIdx(idx);
	if GetItemCount(413) == (n-1) then
		for i=1,20 do
			AddItem(1,10,0,3,0,0,0)
		end
		Msg2Player("B¹n nhËn ®­îc 20 b×nh Håi Thiªn T¸i T¹o §¬n")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","VËt phÈm chØ sö dông ®­îc trong tr¹ng th¸i luyÖn c«ng !")
end
end