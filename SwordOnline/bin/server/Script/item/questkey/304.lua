function main(idx)
n = GetItemCount(304)
if GetItemCount(304) >= 1 then
	DelItemIdx(idx);

AddOwnExp(2000000) ---2 tri�u EPX
Earn(200000)
 SetTask(99,GetTask(99) + 10)
 SetTask(101,GetTask(101) + 10)
Msg2Player("b�n nh�n ���c 20 v�n, 10 xu, 2 tri�u EXP. xin ch�c m�ng !")
	if GetItemCount(304) == (n-1) then
	xs = random(1,100)
	if xs < 90 then
		idxitem = AddEventItem(random(117,118))
		Msg2SubWorld("<color=green>"..GetName().." m� r��ng T�ng Kim nh�n ���c "..GetNameItemBox(idxitem).."")
	elseif xs >= 90 and xs < 95 then
		idxitem = AddEventItem(119)
		Msg2SubWorld("<color=green>"..GetName().." m� r��ng T�ng Kim nh�n ���c "..GetNameItemBox(idxitem).."")
	else
		idxitem = AddEventItem(115)
		Msg2SubWorld("<color=green>"..GetName().." m� r��ng T�ng Kim nh�n ���c "..GetNameItemBox(idxitem).."")
		end
			
	else
		Talk(1,"","Hack ha em")
	end
end
end
