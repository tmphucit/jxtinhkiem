function main(idx)
	if CheckFreeBoxItem(0,10,5,1) == 0 then
		Talk(1,"","Hµnh trang kh«ng cßn chç trèng vui lßng kiÓm tra l¹i !")
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
			Msg2SubWorld("<color=green>"..GetName().." më r­¬ng Tèng Kim nhËn ®­îc: "..GetNameItemBox(idxitem).." [CÊp "..LevelItem.."] - HÖ "..CheckHe(nguhanh).."")	
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
return "Méc"
elseif num == 2 then
return "Thñy"
elseif num == 3 then
return "Háa"
else
return "Thæ "
end
end