function main(idx)
	if CheckFreeBoxItem(0,10,5,1) == 0 then
		Talk(1,"","H�nh trang kh�ng c�n ch� tr�ng vui l�ng ki�m tra l�i !")
	return
	end

n = GetItemCount(305)
if GetItemCount(305) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(305) == (n-1) then
	
		loai = random(2,9)
		LevelItem = random(1,10)
		LevelOption = random(8,10)
		nParam = -1
		nguhanh = random(0,4)
		if loai == 4 or loai == 6 or loai == 8 or loai == 9 then
			nParam = random(0,1)
		elseif loai == 2 then
			nParam = random(0,27)
		elseif loai == 5 then
			nParam = random(0,3)
		elseif loai == 7 then
			nParam = random(0,13)
		elseif loai == 3 then
			nParam = 0
		end	
			
		if nParam ~= -1 then
			idxitem = AddItem(0,loai,nParam,LevelItem,nguhanh,0,LevelOption)
			Msg2SubWorld("<color=green>"..GetName().." m� r��ng T�ng Kim nh�n ���c: "..GetNameItemBox(idxitem).." [C�p "..LevelItem.."] - H� "..CheckHe(nguhanh).."")	
		end
	else
	Talk(1,"","Hack ha em")
	end
end
end

function CheckHe(num)
if num == 0 then
return "Kim"
elseif num == 1 then
return "M�c"
elseif num == 2 then
return "Th�y"
elseif num == 3 then
return "H�a"
else
return "Th� "
end
end