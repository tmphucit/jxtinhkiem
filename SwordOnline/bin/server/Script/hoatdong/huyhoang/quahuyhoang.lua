function main(idx)
w,x,y = GetWorldPos()

if CheckFreeBoxItem(4,22,1,1) == 0 then
Talk(1,"","H�nh trang kh�ng �� ch� tr�ng, vui l�ng ki�m tra l�i !")
return
end

if GetCurCamp() == 0 or GetCamp() == 0 then
Talk(1,"","Ch� tr�ng kh�ng ���c nh�t nh� b�n")
return
end

if GetTaskTemp(2) ~= idx then
	SetTask(479, 15*18)
	SetTaskTemp(2,idx)
	Msg2Player("Th�i gian thu ho�ch c�y c�n l�i: <color=yellow>"..floor(GetTask(479) / 18).." gi�y !")
	return
end

if GetTaskTemp(2) == idx and GetTask(479) == 0 then
	DelNpc(idx)
	if w == 2 or w == 9 then
		AddEventItem(22)
		Msg2Player("B�n �� thu ho�ch th�nh c�ng 1 Qu� Huy Ho�ng")
	elseif w == 109 then
		AddEventItem(630)
		Msg2Player("B�n �� thu ho�ch th�nh c�ng 1 Qu� Ho�ng Kim")
	end
else
	Msg2Player("Th�i gian thu ho�ch c�y c�n l�i: <color=yellow>"..floor(GetTask(479) / 18).." gi�y !")
end
end