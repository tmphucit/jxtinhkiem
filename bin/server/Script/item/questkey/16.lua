
function main(idx)
n = GetItemCount(16)
if GetItemCount(16) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(16) == (n-1) then
		vatpham()
		Talk(0,"")
	else
		Talk(1,"","Hack Ha Em")
	end
end
end

function vatpham()
sx = random(1,100)
if sx == 5 or sx == 10 then
	AddEventItem(0)
	Msg2Player("B�n nh�n ���c 1 V� L�m M�t T�ch ")
elseif sx == 15 or sx == 20 then
	AddEventItem(1)
	Msg2Player("B�n nh�n ���c 1 T�y T�y Kinh ")
elseif sx > 20 and sx < 30  then
	sl = random(5,10)
	for i=1,sl do AddEventItem(2) end
	Msg2Player("B�n nh�n ���c "..sl.." Thi�t La H�n ")
elseif sx >= 30 and sx < 35 then
	AddEventItem(47)
	Msg2Player("B�n nh�n ���c 1 Huy�n Tinh 4 ")
elseif sx >= 35 and sx < 40 then
	AddEventItem(46)
	Msg2Player("B�n nh�n ���c 1 Huy�n Tinh 3 ")
elseif sx == 40 then
	AddEventItem(14)
	Msg2Player("B�n nh�n ���c 1 S� �� L�nh ")
elseif sx == 60 then
	AddEventItem(19)
	Msg2Player("B�n nh�n ���c 1 B� Kip 120 ")
elseif sx > 60 and sx < 75 then
	sl = random(1,5)
	for i=1,sl do AddEventItem(117) end
	Msg2Player("B�n nh�n ���c "..sl.." Ti�n Th�o L� ")
elseif sx >= 75 and sx < 90 then
	sl = random(1,10)
	for i=1,sl do AddEventItem(118) end
	Msg2Player("B�n nh�n ���c "..sl.." N� Nhi H�ng ")
elseif sx == 90 then
	AddEventItem(119)
	Msg2Player("B�n nh�n ���c 1 Ti�n Th�o L� 3 Gi�")
elseif sx == 95 then
	AddItem(0,10,random(1,5),0,0,0)
	Msg2Player("B�n nh�n ���c 1 Th� C��i 8x ")
elseif sx == 50 then
	hoangkim()
else
	sl = random(1,20)
	for i=1,sl do Earn(10000) end
	Msg2Player("B�n nh�n ���c "..sl.." v�n l��ng !")
		
end
end

function hoangkim()
item = random(1,10)
if item == 1 then
AddItem(0,3,3,1,0,0,0)
Msg2SubWorld("Ch�c m�ng ["..GetName().."] m� Th�n B� ��i H�ng Bao may m�n nh�n ���c [An Bang C�c Hoa Th�ch Ch� Ho�n]")
elseif item == 2 then
AddItem(0,3,4,1,0,0,0)
Msg2SubWorld("Ch�c m�ng ["..GetName().."] m� Th�n B� ��i H�ng Bao may m�n nh�n ���c [An Bang K� Huy�t Th�ch Gi�i Ch�]")
elseif item == 3 then
AddItem(0,3,5,1,0,0,0)
Msg2SubWorld("Ch�c m�ng ["..GetName().."] m� Th�n B� ��i H�ng Bao may m�n nh�n ���c [Nhu T�nh Ph�ng Nghi Gi�i Ch�]")
elseif item == 4 then
AddItem(0,3,6,1,0,0,0)
Msg2SubWorld("Ch�c m�ng ["..GetName().."] m� Th�n B� ��i H�ng Bao may m�n nh�n ���c [Hi�p C�t �an T�m Gi�i]")
elseif item == 4 then
AddItem(0,9,3,1,0,0,0)
Msg2SubWorld("Ch�c m�ng ["..GetName().."] m� Th�n B� ��i H�ng Bao may m�n nh�n ���c [An Bang �i�n Ho�ng Th�ch Ng�c B�i]")
elseif item == 5 then
AddItem(0,9,4,1,0,0,0)
Msg2SubWorld("Ch�c m�ng ["..GetName().."] m� Th�n B� ��i H�ng Bao may m�n nh�n ���c [Hi�p C�t T�nh � K�t]")
elseif item == 6 then
AddItem(0,9,5,1,0,0,0)
Msg2SubWorld("Ch�c m�ng ["..GetName().."] m� Th�n B� ��i H�ng Bao may m�n nh�n ���c [Nhu T�nh Tu� T�m Ng�c B�i]")
elseif item == 7 then
AddItem(0,9,5,1,0,0,0)
Msg2SubWorld("Ch�c m�ng ["..GetName().."] m� Th�n B� ��i H�ng Bao may m�n nh�n ���c [Nhu T�nh Tu� T�m Ng�c B�i]")
elseif item == 8 then
AddItem(0,7,15,1,0,0,0)
Msg2SubWorld("Ch�c m�ng ["..GetName().."] m� Th�n B� ��i H�ng Bao may m�n nh�n ���c [��nh Qu�c � Sa Ph�t Qu�n]")
elseif item == 9 then
AddItem(0,8,3,1,0,0,0)
Msg2SubWorld("Ch�c m�ng ["..GetName().."] m� Th�n B� ��i H�ng Bao may m�n nh�n ���c [��nh Qu�c T� ��ng H� Uy�n]")
elseif item == 10 then
AddItem(0,5,5,1,0,0,0)
Msg2SubWorld("Ch�c m�ng ["..GetName().."] m� Th�n B� ��i H�ng Bao may m�n nh�n ���c [��nh Qu�c X�ch Quy�n Nhuy�n Ngoa]")
end
end