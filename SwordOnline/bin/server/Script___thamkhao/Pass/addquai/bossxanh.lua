function OnDeath()
end

function OnDrop()
end
function OnDeath_()
w,x,y = GetWorldPos()
ngay = tonumber(date("%d"))

	if ngay ~= GetTask(355) then
		SetTask(355, ngay)
		for k=357,361 do SetTask(k, 0) end
	end
	nvbang =  4
	if GetTaskTemp(36) == nvbang then
		SetTask(356+nvbang, GetTask(356+nvbang) + 1)
		Msg2Player("<color=yellow>Nhi�m v� bang h�i t�ch l�y: "..GetTask(356+nvbang).." �i�m")
	end

sx = RandomNew(1,1500)
if sx == 50 then
	vt = random(1,6)	
	if GetTask(100) > 500 then
		sx2 = RandomNew(1,60)
		if sx2 == 20 then
			vt = random(7,getn(Mang_Item))
		end
	elseif GetTask(100) > 100 then
		sx2 = RandomNew(1,60)
		if sx2 == 20 then
			vt = random(7,11)	
		end
	end
	AddEventItem(Mang_Item[vt][3])
	Msg2SubWorld("��i hi�p "..GetName().." tr�n con ���ng tu luy�n t�i <color=green>"..CheckDiaDiem(w).." <color=red>may m�n t�m ���c <color=yellow>"..Mang_Item[vt][2].." ")		
end
end

function CheckDiaDiem(w)
if w == 53 then
return "Ba L�ng Huy�n"
elseif w == 70 then
return "V� L�ng S�n"
elseif w == 74 then
return "Mi�u L�nh"
elseif w == 54 then
return "Nam Nh�c Tr�n"
elseif w == 15 then
return "T��ng D��ng"
elseif w == 9 then
return "Bi�n Kinh"
elseif w == 17 then
return "Ph��ng T��ng"
elseif w == 3 then
return "Chu Ti�n Tr�n"
elseif w == 8 then
return "Ph�c Ng�u S�n ��ng"
elseif w == 91 then
return "K� Qu�n ��ng"
elseif w == 41 then
return " Ph�c Ng�u S�n T�y"
elseif w == 50 then
return "Thi�n T�m ��ng"
elseif w == 78 then
return "T��ng D��ng M�t ��o"
elseif w == 21 then
return "M�n B�c Th�o Nguy�n"
elseif w == 102 then
return "L�m Du Quan"
elseif w == 104 then
return "Ch�n N�i Tr��ng B�ch"
elseif w == 105 then
return "Tr��ng B�ch S�n"
elseif w == 38 then
return "Thi�t Th�p T�ng 1"
elseif w == 39 then
return "Thi�t Th�p T�ng 2"
elseif w == 92 then
return "Th�c C��ng S�n"
elseif w == 56 then
return "N�i Th�t ��ng"
elseif w == 57 then
return "Th�t S�t ��ng"
elseif w == 13 then
return "Ki�m C�c T�y B�c"
elseif w == 14 then
return "Kim Quang ��ng"
elseif w == 62 then
return "T�a V�n ��ng"
elseif w == 63 then
return "Kinh Ho�ng ��ng"
elseif w == 64 then
return "D��ng Trung ��ng"
elseif w == 65 then
return "C� D��ng ��ng"
elseif w == 79 then
return "M�c Cao Qu�t"
elseif w == 66 then
return "Giang T�n Th�n"
elseif w == 46 then
return "Phong L�ng ��"
elseif w == 67 then
return "Thanh Th�nh S�n"
elseif w == 68 then
return "B�ch V�n ��ng"
elseif w == 73 then
return "Ph�c L�u ��ng"
elseif w == 76 then
return "��o Hoa Nguy�n"
elseif w == 2 then
return "Hoa S�n"

elseif w == 93 then
return "Ti�n C�c ��ng [9x]"
elseif w == 94 then
return "C�n Vi�n ��ng [9x]"
elseif w == 100 then
return "Tuy�t B�o ��ng [9x]"
elseif w == 99 then
return "D��c V��ng ��ng [9x]"
elseif w == 109 then
return "Sa M�c S�n ��ng 1 [PK]"
elseif w == 110 then
return "Sa M�c S�n ��ng 2 [PK]"
elseif w == 111 then
return "Sa M�c S�n ��ng 3 [PK]"

else
return "Ch�a ��t T�n"
end
end

Mang_Item = {
{0,"Ti�n Th�o L� 30 ph�t", 113},
{0,"N� Nhi H�ng 30 ph�t", 114},
{0,"N� Nhi H�ng 30 ph�t", 114},
{0,"Ti�n Th�o L� 1 gi� ", 117},
{0,"N� Nhi H�ng 1 gi� ", 118}, -- 20
{0,"N� Nhi H�ng 1 gi� ", 118}, -- 20
{0,"X� L�i Kim ��n", 59},
{0,"Phi Phong ", 251}, -- 30
{0,"Lam Th�y Tinh", 28},
{0,"T� Th�y Tinh", 29},
{0,"L�c Th�y Tinh", 30},
{0,"V� L�m M�t T�ch", 0},
{0,"T�y T�y Kinh", 1}, 
}