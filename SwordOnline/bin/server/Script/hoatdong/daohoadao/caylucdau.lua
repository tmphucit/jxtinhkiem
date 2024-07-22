function main(idx)
if GetTask(528) == 2 and GetItemCount(662) == 0 then
	sx = random(1,100)
	if sx < 30 then
		idxitem = AddEventItem(662)
		SetBindItem(idxitem, 1)
		Msg2Player("B¹n nhËn ®­îc 1 C©y Lôc §Ëu")
	else
		Talk(1,"","Thu thËp thÊt b¹i, thö l¹i sau 60 gi©y hoÆc ®i t×m C©y Lôc §Ëu kh¸c !")
	end
	SetPropState(1)
end
end