

function main(idx)
n = GetItemCount(249)

if GetItemCount(249) >= 1 then

DelItemIdx(idx);
if GetItemCount(249) == (n-1) then

		sxtt = random(1,100)
		if sxtt < 20 then
			sx2 = random(1,30)
			if sx2 == 1 then
				AddEventItem(0)
				Msg2SubWorld("Ch�c m�ng <color=yellow>"..GetName().." <color=red> m� C�ng Th�nh Chi�n L� Bao may m�n nh�n ���c 1 <color=green>V� L�m M�t T�ch ")
			elseif sx2 == 2 then
				AddEventItem(1)
				Msg2SubWorld("Ch�c m�ng <color=yellow>"..GetName().." <color=red> m� C�ng Th�nh Chi�n L� Bao may m�n nh�n ���c 1 <color=green>T�y T�y Kinh ")
			elseif sx2 == 3 then
				AddEventItem(28)
				Msg2SubWorld("Ch�c m�ng <color=yellow>"..GetName().." <color=red> m� C�ng Th�nh Chi�n L� Bao may m�n nh�n ���c 1 <color=green>Lam Th�y Tinh ")
			elseif sx2 == 4 then
				AddEventItem(29)
				Msg2SubWorld("Ch�c m�ng <color=yellow>"..GetName().." <color=red> m� C�ng Th�nh Chi�n L� Bao may m�n nh�n ���c 1 <color=green>T� Th�y Tinh ")
			elseif sx2 == 5 then
				AddEventItem(30)
				Msg2SubWorld("Ch�c m�ng <color=yellow>"..GetName().." <color=red> m� C�ng Th�nh Chi�n L� Bao may m�n nh�n ���c 1 <color=green>L�c Th�y Tinh ")
			elseif sx2 == 6 then
				AddEventItem(31)
				Msg2SubWorld("Ch�c m�ng <color=yellow>"..GetName().." <color=red> m� C�ng Th�nh Chi�n L� Bao may m�n nh�n ���c 1 <color=green>Tinh H�ng B�o Th�ch ")
			elseif sx2 == 7 or sx2 == 8 or sx2 == 9 or sx2 == 10 then
				AddEventItem(117)
				Msg2SubWorld("Ch�c m�ng <color=yellow>"..GetName().." <color=red> m� C�ng Th�nh Chi�n L� Bao may m�n nh�n ���c 1 <color=green>Ti�n Th�o L� 1 gi� ")
			elseif sx2 == 11 or sx2 == 12 or sx2 == 13 or sx2 == 14 then
				AddEventItem(117)
				Msg2SubWorld("Ch�c m�ng <color=yellow>"..GetName().." <color=red> m� C�ng Th�nh Chi�n L� Bao may m�n nh�n ���c 1 <color=green>N� Nhi H�ng 1 gi� ")
			elseif sx2 == 15 or sx2 == 16 then
				AddEventItem(119)
				Msg2SubWorld("Ch�c m�ng <color=yellow>"..GetName().." <color=red> m� C�ng Th�nh Chi�n L� Bao may m�n nh�n ���c 1 <color=green>Ti�n Th�o L� 3 gi� ")
			elseif sx2 == 17 or sx2 == 18 then
				AddEventItem(115)
				Msg2SubWorld("Ch�c m�ng <color=yellow>"..GetName().." <color=red> m� C�ng Th�nh Chi�n L� Bao may m�n nh�n ���c 1 <color=green>N� Nhi H�ng 3 gi� ")
			else
				AddEventItem(2)
				Msg2SubWorld("Ch�c m�ng <color=yellow>"..GetName().." <color=red> m� C�ng Th�nh Chi�n L� Bao may m�n nh�n ���c 1 <color=green>Thi�t La H�n ")	
			end
			else
				tien = random(1,30)
				for k=1,tien do AddOwnExp(1000000) end
				Msg2Player("B�n nh�n ���c ph�n th��ng ng�u nhi�n: <color=yellow>"..tien..".000.000 kinh nghi�m !")
			end	
		Talk(0,"")
else
	Talk(1,"","Hack Ha Em")
end
end

end
