function main(idx)

	if CheckFreeBoxItem(0,10,5,1) == 0 then
		Talk(1,"","Hµnh trang kh«ng cßn chç trèng vui lßng kiÓm tra l¹i !")
	return
	end

n = GetItemCount(306)
if GetItemCount(306) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(306) == (n-1) then
	
		loai = random(1,9)
		LevelItem = random(1,10)
		LevelOption = random(8,10)
		nParam = -1
		nDetail = -1
		nguhanh = random(0,4)
		if loai == 1 then
			nDetail = 0
			nParam = 0
		elseif loai == 2 then
			nDetail = 0
			nParam = 1
		elseif loai == 3 then
			nDetail = 0
			nParam = 2
		elseif loai == 4 then
			nDetail = 0
			nParam = 3
		elseif loai == 5 then
			nDetail = 0
			nParam = 4
		elseif loai == 6 then
			nDetail = 0
			nParam = 5
		elseif loai == 7 then
			nDetail = 1
			nParam = 0
		elseif loai == 8 then
			nDetail = 1
			nParam = 1
		elseif loai == 9 then
			nDetail = 1
			nParam = 2
		end	
			
		if nParam ~= -1 and nDetail ~= -1 then
			idxitem = AddItem(0,nDetail,nParam,LevelItem,nguhanh,0,LevelOption)
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