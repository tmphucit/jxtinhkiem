
Include("\\datascript\\banghoi\\mapbanghoi.lua")

function main(idx)
w,x,y = GetWorldPos()
ngay = tonumber(date("%d"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))

if GetTongName() == "" then
Talk(1,"","B�n kh�ng c� bang h�i !")
return
end
checksl = checksoluongbang()
if checksl == 0 then
Talk(1,"","Bang h�i c�a b�n ch�a thi�t l�p L�nh ��a Bang H�i, kh�ng th� v�o !")
return
end

if w >= 116 and w <= 134 then
Msg2Player("Kh�ng th� s� d�ng Th� ��a Ph� trong L�nh ��a Bang H�i !")
return
end

if w == 34 or w == 35 or w == 36 or w == 42 or w == 43 or w == 60 or w == 61 or w == 33 or w == 13 or w == 47 or w == 48 or w == 49 then
Msg2Player("B�n kh�ng th� s� d�ng Th� ��a Ph� � ��y")
return
end
if GetTaskTemp(149) == 1 then
Msg2Player("B�n kh�ng th� s� d�ng Th� ��a Ph� � ��y")
return
elseif GetTask(143) == 1 and GetTask(4) > 0 then
Talk(1,"","B�n �ang trong tr�ng th�i t�m giam. Kh�ng th� r�i kh�i ��y ! ")
return
end

if GetFightState() == 0 then
if (w ~= 33 and w ~= 20 and w ~= 26 and w ~= 27 and w ~= 28 and w ~= 29 and w ~= 45 and w ~= 61) then
	Msg2WorldById("<color=yellow>"..GetName().." �� di chuy�n v�o L�nh ��a Bang H�i <color=green>"..GetTongName().." <color> ",115+checksl)
	SetFightState(0)
	SetLogoutRV(0)
	SetPunish(1)

	NewWorld(115+checksl,1721,3317)
elseif w == 15 or w == 9 or w == 17 or w == 18 or w == 20 then
	Msg2WorldById("<color=yellow>"..GetName().." �� di chuy�n v�o L�nh ��a Bang H�i <color=green>"..GetTongName().." <color> ",115+checksl)
	SetFightState(0)
	SetLogoutRV(0)
	SetPunish(1)

	NewWorld(115+checksl,1721,3317)
else
	Msg2Player("Tr�ng th�i kh�ng th� s� d�ng th� ��a ph� ")
	SetTaskTemp(1,0)
end
else
	if (w == 26) or (w == 27) or (w == 45) or (w == 33) or (w == 28) or (w == 29)  or (w == 20) or (w == 61) then
		Msg2Player("B�n kh�ng th� s� d�ng Th� ��a Ph� � ��y")
	else	
		Msg2WorldById("<color=yellow>"..GetName().." �� di chuy�n v�o L�nh ��a Bang H�i <color=green>"..GetTongName().." <color> ",115+checksl)
		SetFightState(0)
		SetLogoutRV(0)
		SetPunish(1)

		NewWorld(115+checksl,1721,3317)
	end
end
end;

function checksoluongbang()
check = 0
for i=1,getn(MAP_BANG_HOI) do
	if GetTongName() == MAP_BANG_HOI[i][1] then
		check = i
		break			
	end
end
return check
end