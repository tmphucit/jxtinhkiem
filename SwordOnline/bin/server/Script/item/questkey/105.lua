function main(idx)
n = GetItemCount(105)
w,x,y = GetWorldPos()

if w == 43 then
Talk(1,"","VËt phÈm kh«ng cho sö dông trong b¶n ®å Liªn §Êu !")
return
end
if GetPKState() == 0  or (w == 24 and GetFightState() ==0) then
DelItemIdx(idx);
	if GetItemCount(105) == (n-1) then
		for i=1,20 do
			AddItem(1,1,0,5,0,0,0)
		end
		Msg2Player("B¹n nhËn ®­îc 20 b×nh Thñ ¤ Hoµn ThÇn §an")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","VËt phÈm chØ sö dông ®­îc trong tr¹ng th¸i luyÖn c«ng !")
end
end
