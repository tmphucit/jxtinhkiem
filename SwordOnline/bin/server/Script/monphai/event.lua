Include("\\script\\admin\\monphai.lua")
function ghepchu(num)
if GetFaction() == "" then
	Talk(1,"","B�n ch�a gia nh�p m�n ph�i, kh�ng th� s� d�ng ch�c n�ng n�y !")
	return
end

if mp() ~= num then
	Talk(1,"","Ng��i kh�ng thu�c M�n Ph�i c�a ta, h�y t�m s� ph� ng��i �i !")
return
end

if GetTask(134) >= gioihan() then
Msg2Player("S� l��ng Ch� T�n S� Tr�ng ��o �� ��t gi�i h�n, kh�ng th� s� d�ng th�m ")
return
end

nl1 = GetItemCount(65)
nl2 = GetItemCount(66)
nl3 = GetItemCount(67)
nl4 = GetItemCount(68)
if GetItemCount(65) >= 1 and GetItemCount(66) >= 1 and GetItemCount(67) >= 1 and GetItemCount(68) >= 1 then
	DelItem(65)
	DelItem(66)
	DelItem(67)
	DelItem(68)
	if GetItemCount(65) == nl1 - 1 and GetItemCount(66) == nl2 - 1 and GetItemCount(67) == nl3 - 1 and GetItemCount(68) == nl4 - 1 then
		SetTask(134,GetTask(134)+1)
		Msg2Player("B�n �� n�p th�nh c�ng b� ch� T�n S� Tr�ng ��o. ")
		for i=1,1000 do AddOwnExp(1000) end
		Msg2Player("B�n nh�n ���c 1.000.000 kinh nghi�m !")
			vatphamcui()
			xacsuat = random(1,10)
			if xacsuat == 5 then
			vatpham()
			end
		
			hk = random(1,200)
			if hk == 100  and GetTask(132) > 0 then
			hoangkim()
			end

	else
		Talk(1,"","Hack he em")
	end
else
	Talk(1,"","Ng��i kh�ng mang �� b� ch� <color=yellow>T�n S� Tr�ng ��o ")
end


end


function vatphamcui()
sx3 = random(1,100)
if sx3 == 50 then
	AddEventItem(114)
	Msg2Player("B�n nh�n ���c 1 b�nh N� Nhi H�ng nh� ")
end
sx2 = random(1,100)
if (sx2 == 50) then
	AddEventItem(113)
	Msg2Player("B�n nh�n ���c 1 b�nh Ti�n Th�o L� nh� ")
end
end

function vatpham()
xx = random(1,200)
if xx == 40 then
	AddItem(0,10,5,random(1,5),0,0,0)
	Msg2Player("B�n nh�n ���c 1 Th� C��i 8x ")
	Msg2SubWorld("Ch�c m�ng ["..GetName().."] s� d�ng T�n S� Tr�ng ��o may m�n nh�n ���c 1 Th� C��i 80 ")
elseif xx == 80 then
	AddEventItem(0)
	Msg2Player("B�n nh�n ���c 1 V� L�m M�t T�ch ")	
	Msg2SubWorld("Ch�c m�ng ["..GetName().."] s� d�ng T�n S� Tr�ng ��o may m�n nh�n ���c 1 cu�n V� L�m M�t T�ch ")
elseif xx == 120 then
	AddEventItem(1)
	Msg2Player("B�n nh�n ���c 1 T�y T�y Kinh ")
	Msg2SubWorld("Ch�c m�ng ["..GetName().."] s� d�ng T�n S� Tr�ng ��o may m�n nh�n ���c 1 T�y T�y Kinh ")
elseif xx == 150 then
	AddEventItem(31)
	Msg2Player("B�n nh�n ���c 1 Tinh H�ng B�o Th�ch ")
	Msg2SubWorld("Ch�c m�ng ["..GetName().."] s� d�ng T�n S� Tr�ng ��o may m�n nh�n ���c 1 Tinh H�ng B�o Th�ch ")
elseif xx == 200 then
	AddEventItem(random(28,30))
	Msg2Player("B�n nh�n ���c 1 Th�y Tinh ")
	Msg2SubWorld("Ch�c m�ng ["..GetName().."] s� d�ng T�n S� Tr�ng ��o may m�n nh�n ���c 1 Th�y Tinh ")
end
end

function hoangkim()
item = random(1,50)
if item == 1 then
AddItem(0,3,6,1,0,0,0)
Msg2SubWorld("Ch�c m�ng ["..GetName().."] s� d�ng T�n S� Tr�ng ��o nh�n ���c [Hi�p C�t �an T�m Gi�i]")
elseif item == 2 then
AddItem(0,3,5,1,0,0,0)
Msg2SubWorld("Ch�c m�ng ["..GetName().."] s� d�ng T�n S� Tr�ng ��o nh�n ���c [Nhu T�nh Ph�ng Nghi Gi�i Ch�]")
elseif item == 3 then
AddItem(0,9,4,1,0,0,0)
Msg2SubWorld("Ch�c m�ng ["..GetName().."] s� d�ng T�n S� Tr�ng ��o nh�n ���c [Hi�p C�t T�nh � K�t]")
elseif item == 4 then
AddItem(0,9,5,1,0,0,0)
Msg2SubWorld("Ch�c m�ng ["..GetName().."] s� d�ng T�n S� Tr�ng ��o nh�n ���c [Nhu T�nh Tu� T�m Ng�c B�i]")
elseif item == 5 then
AddItem(0,9,5,1,0,0,0)
Msg2SubWorld("Ch�c m�ng ["..GetName().."] s� d�ng T�n S� Tr�ng ��o nh�n ���c [Nhu T�nh Tu� T�m Ng�c B�i]")
elseif item == 6 then
AddItem(0,8,3,1,0,0,0)
Msg2SubWorld("Ch�c m�ng ["..GetName().."] s� d�ng T�n S� Tr�ng ��o nh�n ���c [��nh Qu�c T� ��ng H� Uy�n]")
elseif item == 7 then
AddItem(0,5,5,1,0,0,0)
Msg2SubWorld("Ch�c m�ng ["..GetName().."] s� d�ng T�n S� Tr�ng ��o nh�n ���c [��nh Qu�c X�ch Quy�n Nhuy�n Ngoa]")
else
	rnd = random(1,9)
	if rnd == 1 then
	AddItem(0,6,2,1,0,0,0)
	elseif rnd == 2 then
	AddItem(0,5,4,1,0,0,0)
	elseif rnd == 3 then
	AddItem(0,9,2,1,0,0,0)
	elseif rnd == 4 then
	AddItem(0,7,14,1,0,0,0)
	elseif rnd == 5 then
	AddItem(0,2,29,1,0,0,0)
	elseif rnd == 6 then
	AddItem(0,8,2,1,0,0,0)
	elseif rnd == 7 then
	AddItem(0,4,2,1,0,0,0)
	elseif rnd == 8 then
	AddItem(0,3,1,1,0,0,0)
	else 
	AddItem(0,3,2,1,0,0,0)
	end
	Msg2SubWorld("Ch�c m�ng ["..GetName().."] s� d�ng T�n S� Tr�ng ��o may m�n nh�n ���c trang b� Kim Phong")
end
end

function gioihan()
return GetTask(132)*25 + 25
end