
function main(idx)
w,x,y = GetWorldPos()
ngay = tonumber(date("%d"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))
--if w == 53 and GetFightState() == 0 then
--NewWorld(53,200*8,200*16)
--end
if w == 17 and GetFightState() == 0 then
	if GetTaskTemp(1) < 10 then
		SetTaskTemp(1, GetTaskTemp(1) + 1)
		Msg2Player("Nh�n Th� ��a Ph� 10 l�n �� v� trung t�m. L�n th�: <color=yellow>"..GetTaskTemp(1).." ")
	else
		NewWorld(17,1594,3200)
		SetTaskTemp(1,0)
	end
end
if w == 15 and GetFightState() == 0 then
	if GetTaskTemp(1) < 10 then
		SetTaskTemp(1, GetTaskTemp(1) + 1)
		Msg2Player("Nh�n Th� ��a Ph� 10 l�n �� v� trung t�m. L�n th�: <color=yellow>"..GetTaskTemp(1).." ")
	else
		NewWorld(15,197*8,202*16)
		SetTaskTemp(1,0)
	end
end

if w == 53 and GetFightState() == 0 then
	if GetTaskTemp(1) < 10 then
		SetTaskTemp(1, GetTaskTemp(1) + 1)
		Msg2Player("Nh�n Th� ��a Ph� 10 l�n �� v� trung t�m. L�n th�: <color=yellow>"..GetTaskTemp(1).." ")
	else
		NewWorld(53,1588,3230)
		SetTaskTemp(1,0)
	end
end

if w == 9 and GetFightState() == 0 then
	if GetTaskTemp(1) < 10 then
		SetTaskTemp(1, GetTaskTemp(1) + 1)
		Msg2Player("Nh�n Th� ��a Ph� 10 l�n �� v� trung t�m. L�n th�: <color=yellow>"..GetTaskTemp(1).." ")
	else
		NewWorld(9,1729,3079)
		SetTaskTemp(1,0)
	end
end
if w == 60 and GetFightState() == 0 then
	if GetTaskTemp(1) < 10 then
		SetTaskTemp(1, GetTaskTemp(1) + 1)
		Msg2Player("Nh�n Th� ��a Ph� 10 l�n �� v� trung t�m. L�n th�: <color=yellow>"..GetTaskTemp(1).." ")
	else
		NewWorld(53,1588,3230)
		SetTaskTemp(1,0)
	end
end

if GetTaskTemp(2) > 0 then
SetTaskTemp(2,0)
Msg2Player("Th�i gian ��m ng��c nh�t qu� k�t th�c !")
end
if w >= 116 and w <= 134 then
Msg2Player("Kh�ng th� s� d�ng Th� ��a Ph� trong L�nh ��a Bang H�i !")
return
end

if w == 87 then
SetFightState(0)
NewWorld(116,1721,3317)
Msg2Player("B�n ���c ��a v� Khu V�c Bang H�i")
return
end

if w == 42 or w == 43 or w == 34 or w == 35 or w == 60 or w == 37 or w == 46 or w == 47 or w == 48 or w == 258 or w == 49 or w == 26 or w == 27 or w == 28 or w == 29 or w == 33 or w == 20 or w == 106 then
Msg2Player("B�n kh�ng th� s� d�ng Th� ��a Ph� � ��y")
return
end

if w == 5 or w == 59 or w == 24 then
Msg2Player("B�n kh�ng th� s� d�ng Th� ��a Ph� � ��y")
return
end

if GetFightState() == 1 then
			SetTaskTemp(1,0)
			UseTownPortal(0)
end		
end;

