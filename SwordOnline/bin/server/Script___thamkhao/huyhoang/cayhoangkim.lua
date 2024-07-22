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
	SetTask(479, 60*18)
	SetTaskTemp(2,idx)
	Msg2Player("Thêi gian thu ho¹ch c©y cßn l¹i: <color=yellow>"..floor(GetTask(479) / 18).." gi©y !")
	return
end

if GetTaskTemp(2) == idx and GetTask(479) == 0 then
	DelNpc(idx)
		AddEventItem(630)
		Msg2SubWorld("Chóc mõng "..GetName().." ®· thu ho¹ch thµnh c«ng 1 <color=yellow>Qu¶ Hoµng Kim §¹i")

else
	Msg2Player("Thêi gian thu ho¹ch c©y cßn l¹i: <color=yellow>"..floor(GetTask(479) / 18).." gi©y !")
end
end