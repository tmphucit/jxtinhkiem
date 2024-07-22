function main(idx)
w,x,y = GetWorldPos()

if CheckFreeBoxItem(4,22,1,1) == 0 then
Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng, vui lßng kiÓm tra l¹i !")
return
end

if GetCurCamp() == 0 or GetCamp() == 0 then
Talk(1,"","Ch÷ tr¾ng kh«ng ®­îc nhÆt nhÐ b¹n")
return
end

if GetTaskTemp(2) ~= idx then
	SetTask(479, 15*18)
	SetTaskTemp(2,idx)
	Msg2Player("Thêi gian thu ho¹ch c©y cßn l¹i: <color=yellow>"..floor(GetTask(479) / 18).." gi©y !")
	return
end

if GetTaskTemp(2) == idx and GetTask(479) == 0 then
	DelNpc(idx)
	if w == 2 or w == 9 then
		AddEventItem(22)
		Msg2Player("B¹n ®· thu ho¹ch thµnh c«ng 1 Qu¶ Huy Hoµng")
	elseif w == 109 then
		AddEventItem(630)
		Msg2Player("B¹n ®· thu ho¹ch thµnh c«ng 1 Qu¶ Hoµng Kim")
	end
else
	Msg2Player("Thêi gian thu ho¹ch c©y cßn l¹i: <color=yellow>"..floor(GetTask(479) / 18).." gi©y !")
end
end