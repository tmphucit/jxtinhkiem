function main(slect)
if (slect == 3) then
	check31 = GetIdxPGItem(3,1)
	check32 = GetIdxPGItem(3,2)
	if (check31 <= 0) then
		Msg2Player("Bπn ch≠a Æ∆t trang bﬁ xanh ho∆c træng vµo !")	
		return
	end
	if (check32 <= 0) then
		Msg2Player("Bπn ch≠a Æ∆t huy“n tinh kho∏ng thπch vµo !")	
		return
	end
if (check31 > 0 and check32 > 0) then
	if (GetGenreItem(check31) == 0 and GetItemType(check31) == 0) then
			if (GetDetailTypeItem(check31) == 3 or GetDetailTypeItem(check31) == 4 or GetDetailTypeItem(check31) == 9) then
			Msg2Player("Trang bﬁ Æ∆t vµo kh´ng Æ≠Óc lµ trang s¯c!")
			return
			end
			sodong = checkSoDong(GetDetailTypeItem(check32),GetDetailTypeItem(check31))
			a = GetDetailTypeItem(check31)
			b = GetParticularItem(check31)
			c = GetLevelItem(check31)
			d = GetSeriItem(check31)
			if CheckFreeBoxItem(0,a,b,c) == 0 then
			Msg2Player("Hµnh trang kh´ng ÆÒ kho∂ng trËng !")
			return
			end
			if GetCash() <= 50000 then
			Msg2Player("Bπn kh´ng mang ÆÒ 5 vπn l≠Óng !")
			return
			end
			Pay(50000)
			DelItemIdx(check32)
			DelEquipIdx(check31)
			if GetIdxPGItem(3,1) == 0 and GetIdxPGItem(3,2) == 0 then 
				if a >= 2 then
				if (sodong == 1) then
					AddItemPink(0,a,b+xanh_to_tim(a),c,d,0,0,0,0,0,0,0,1,207,0,0,0,0,0,0,0,0,0,0,0,0)
				elseif (sodong == 2) then
					AddItemPink(0,a,b+xanh_to_tim(a),c,d,0,0,0,0,0,0,0,1,207,1,207,0,0,0,0,0,0,0,0,0,0)
				elseif (sodong == 3) then
					AddItemPink(0,a,b+xanh_to_tim(a),c,d,0,0,0,0,0,0,0,1,207,1,207,1,207,0,0,0,0,0,0,0,0)
				elseif (sodong == 4) then
					AddItemPink(0,a,b+xanh_to_tim(a),c,d,0,0,0,0,0,0,0,1,207,1,207,1,207,1,207,0,0,0,0,0,0)
				elseif (sodong == 5) then
					AddItemPink(0,a,b+xanh_to_tim(a),c,d,0,0,0,0,0,0,0,1,207,1,207,1,207,1,207,1,207,0,0,0,0)
				elseif (sodong == 6) then
					AddItemPink(0,a,b+xanh_to_tim(a),c,d,0,0,0,0,0,0,0,1,207,1,207,1,207,1,207,1,207,1,207,0,0)
				end
				else
				if a == 0 then
					loaivk = 200
				elseif a == 1 then
					loaivk = 60
				end
				
				if sodong == 1 then
					AddItemPink(0,a,b,c+loaivk,d,0,0,0,0,0,0,0,1,207,0,0,0,0,0,0,0,0,0,0,0,0)
				elseif sodong == 2 then
					AddItemPink(0,a,b,c+loaivk,d,0,0,0,0,0,0,0,1,207,1,207,0,0,0,0,0,0,0,0,0,0)
				elseif sodong == 3 then
					AddItemPink(0,a,b,c+loaivk,d,0,0,0,0,0,0,0,1,207,1,207,1,207,0,0,0,0,0,0,0,0)
				elseif sodong == 4 then
					AddItemPink(0,a,b,c+loaivk,d,0,0,0,0,0,0,0,1,207,1,207,1,207,1,207,0,0,0,0,0,0)
				elseif sodong == 5 then
					AddItemPink(0,a,b,c+loaivk,d,0,0,0,0,0,0,0,1,207,1,207,1,207,1,207,1,207,0,0,0,0)
				elseif sodong == 6 then
					AddItemPink(0,a,b,c+loaivk,d,0,0,0,0,0,0,0,1,207,1,207,1,207,1,207,1,207,1,207,0,0)
				end		
				end
				Msg2Player("Ch’ tπo thµnh c´ng Trang bﬁ Huy“n tinh c¨ b∂n ")
				Talk(0,"")
			else
				Talk(1,"","Hack ha em")
			end
	else
		Msg2Player("Trang bﬁ Æ∆t vµo kh´ng ph∂i lµ trang bﬁ xanh ho∆c træng")
	end
else
	Msg2Player("Nguy™n li÷u b· vµo kh´ng th›ch hÓp ")
end

elseif (slect == 2) then
	check21 = GetIdxPGItem(2,1) -- trang bi
	check22 = GetIdxPGItem(2,2) -- ht
	check23 = GetIdxPGItem(2,3) -- khoang thach
	check24 = GetIdxPGItem(2,4) 
	check25 = GetIdxPGItem(2,5)
	check26 = GetIdxPGItem(2,6)
	check27 = GetIdxPGItem(2,7)
	check28 = GetIdxPGItem(2,8)
	check29 = GetIdxPGItem(2,9)
	check210 = GetIdxPGItem(2,10)
	check211 = GetIdxPGItem(2,11)
	
	if check21 <= 0 or check22 <= 0 or check23 <= 0 then
	Msg2Player("Nguy™n li÷u y™u c«u ch≠a Æ∆t vµo ÆÒ !!")
	return
	end
	
	if check_loaiitem(check21,check22,check23,check24,check25,check26,check27,check28,check29,check210,check211,0) ~= 0 then
	Msg2Player("Nguy™n li÷u b· vµo kh´ng th›ch hÓp ")
	return
	end

	if GetDetailTypeItem(check23) == 168 or GetDetailTypeItem(check23) == 170 or GetDetailTypeItem(check23) == 172 then
		if GetSeriItem(check21) ~= GetSeriItem(check23) then
			Msg2Player("ThuÈc t›nh ngÚ hµnh cÒa trang bﬁ vµ kho∏ng thπch kh´ng ÆÂng nh t !")
			return
		end 
	end
	

	a = GetDetailTypeItem(check23)
	vitri = a-166
	
	if GetEquipMagicId(check21,vitri) == 0 then
	Msg2Player("Trang bﬁ Æ∆t vµo kh´ng c„ Option dﬂng th¯ "..vitri.." ")
	return
	end

	b = GetSeriItem(check23)
	c = GetEquipMagicId(check21,vitri)
	d = Level_Rut_Dong(check21,check22,check23,check24,check25,check26,check27,check28,check29,check210,check211)
	
	
	reqitem = check_reqitem(c)
	if CheckFreeBoxItem(4,a,1,1) == 0 then
	Msg2Player("Hµnh trang kh´ng ÆÒ kho∂ng trËng !")
	return
	end
	if GetCash() <= 200000 then
	Msg2Player("Bπn kh´ng mang ÆÒ 20 vπn l≠Óng !")
	return
	end
	Pay(200000)
	DelEquipIdx(check21)
	DelItemIdx(check22)
	DelItemIdx(check23)
	DelItemIdx(check24)
	DelItemIdx(check25)
	DelItemIdx(check26)
	DelItemIdx(check27)
	DelItemIdx(check28)
	DelItemIdx(check29)
	DelItemIdx(check210)
	DelItemIdx(check211)
	
	if GetIdxPGItem(2,1) == 0 and GetIdxPGItem(2,2) == 0 and GetIdxPGItem(2,3) == 0 and GetIdxPGItem(2,4) == 0 and GetIdxPGItem(2,5) == 0 and GetIdxPGItem(2,6) == 0 and GetIdxPGItem(2,7) == 0 and GetIdxPGItem(2,8) == 0 and GetIdxPGItem(2,9) == 0 and GetIdxPGItem(2,10) == 0 and GetIdxPGItem(2,11) == 0 then
		AddEventItemMagic(a,b,c,d,reqitem)
		Msg2Player("Bπn nhÀn Æ≠Óc 1 Kho∏ng thπch ma ph∏p")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end

elseif (slect == 1) then
	check11 = GetIdxPGItem(1,1)	
	check12 = GetIdxPGItem(1,2)
	check13 = GetIdxPGItem(1,3)

	if check11 <= 0 or check12 <= 0 or check13 <= 0 then
	Msg2Player("Bπn kh´ng b· ÆÒ 3 vi™n Huy“n Tinh!")
	return
	end

	if GetGenreItem(check11) == 4 and GetGenreItem(check12) == 4 and GetGenreItem(check13) == 4 then
		if GetDetailTypeItem(check11) == GetDetailTypeItem(check12) and GetDetailTypeItem(check11) == GetDetailTypeItem(check13) then
			id_questkey = GetDetailTypeItem(check11)
			vitri = checkHT(id_questkey)
			if (id_questkey == 53) then
			Msg2Player("Huy“n tinh 10 bπn Æ∆t vµo Æ∑ Æπt c p ÆÈ tËi Æa!")
			return
			end
			if CheckFreeBoxItem(4,id_questkey,1,1) == 0 then
			Msg2Player("Hµnh trang kh´ng ÆÒ kho∂ng trËng !")
			return
			end
			
			if (GetCash() < MangHT[vitri][4]) then
			Msg2Player("Bπn kh´ng mang ÆÒ "..MangHT[vitri][4].." l≠Óng Æ” n©ng c p Huy“n Tinh ")
			return	
			end
			Pay(MangHT[vitri][4])
			xs = random(1,110)
			if (xs <= MangHT[vitri][3]) then
				DelItemIdx(check11)
				DelItemIdx(check12)	
				DelItemIdx(check13)
				if GetIdxPGItem(1,1) == 0 and GetIdxPGItem(1,2) == 0 and GetIdxPGItem(1,3) == 0 then
					AddEventItem(MangHT[vitri+1][2])
					Msg2Player("N©ng c p thµnh c´ng, bπn nhÀn Æ≠Óc 1 vi™n "..MangHT[vitri+1][1].." ")
					Talk(0,"")
				else
				Talk(1,"","Hack ha em ")
				end
			else
				DelItemIdx(check13)
				Msg2Player("N©ng c p huy“n tinh th t bπi, bπn bﬁ m t 1 vi™n huy“n tinh !")
			end			
		else
			Msg2Player("Huy“n tinh kho∏ng thπch Æ∆t vµo kh´ng cÔng c p ÆÈ !")
		end
	else
		Talk(1,"","Hack ha em ")
	end
elseif (slect == 4) then
	check41 = GetIdxPGItem(4,1)
	check42 = GetIdxPGItem(4,2)
	check43 = GetIdxPGItem(4,3)
	check44 = GetIdxPGItem(4,4)
	check45 = GetIdxPGItem(4,5)
	check46 = GetIdxPGItem(4,6)
	check47 = GetIdxPGItem(4,7)	
	check48 = GetIdxPGItem(4,8)
	check49 = GetIdxPGItem(4,9)
	check410 = GetIdxPGItem(4,10)
	check411 = GetIdxPGItem(4,11)
	
	
	if (check41 <= 0 or check43 <= 0 or check42 <= 0) then
	Msg2Player("Nguy™n li÷u y™u c«u Æ∆t vµo kh´ng ÆÒ ")
	return
	end
	
	if check_loaiitem(check41,check42,check43,check44,check45,check46,check47,check48,check49,check410,check411,2) ~= 0 then
	Msg2Player("Nguy™n li÷u b· vµo kh´ng th›ch hÓp ")
	return
	end

	a = GetDetailTypeItem(check41)
	b = GetParticularItem(check41)		
	c = GetLevelItem(check41)
	d = GetSeriItem(check41)

	sodong = GetDetailTypeItem(check43)-166
	if (sodong > check_sodong(check41)) then
	Msg2Player("Option dﬂng "..sodong.." kh´ng tÂn tπi tr™n trang bﬁ t›m Æ∆t vµo ")
	return
	end
	
	dongep = check_dong207(check41)
	if (dongep ~= sodong) then
	Msg2Player("Kho∏ng thπch ma ph∏p Æ∆t vµo kh´ng phÔ hÓp. Hi÷n tπi chÿ Æ≠Óc kh∂m vµo dﬂng "..dongep.."")
	return
	end
	
	if (check_opttrung(check41,check_sodong(check41),GetIdMagicEventItem(check43)) == 1) then
	Msg2Player("Option tr™n Kho∏ng thπch ma ph∏p Æ∑ c„ tr™n Trang bﬁ Huy“n tinh Æ∆t vµo !")
	return
	end 

	if (GetRequirementMagicEventItem(check43) == 1) then
		if (a >= 2) then
		Msg2Player("Option nµy chÿ c„ th” kh∂m nπm vµo VÚ Kh› !")	
		return
		end
	elseif (GetRequirementMagicEventItem(check43) == 2) then
		if (a ~= 2) then
		Msg2Player("Option nµy chÿ c„ th” kh∂m nπm vµo ∏o !")	
		return
		end
	elseif (GetRequirementMagicEventItem(check43) == 3) then
		if (a ~= 5) then
		Msg2Player("Option nµy chÿ c„ th” kh∂m nπm vµo Giµy!")
		return
		end
	end	

	if GetDetailTypeItem(check43) == 168 or GetDetailTypeItem(check43) == 170 or GetDetailTypeItem(check43) == 172 then
		if GetSeriItem(check41) ~= GetSeriItem(check43) then
			Msg2Player("NgÚ hµnh cÒa kho∏ng thπch vµ trang bﬁ kh´ng ÆÂng nh t !")
			return
		end 
	end

	if CheckFreeBoxItem(0,a,b,c) == 0 then
		Msg2Player("Hµnh trang kh´ng ÆÒ kho∂ng trËng !")
		return
	end
		
	if GetCash() <= 100000 then
	Msg2Player("Bπn kh´ng mang ÆÒ 10 vπn l≠Óng !")
	return
	end

	Level43 = Level_KhamNam(check41,check42,check43,check44,check45,check46,check47,check48,check49,check410,check411)


	lucky1 = GetEquipMagicLucky(check41,1)
	lucky2 = GetEquipMagicLucky(check41,2)
	lucky3 = GetEquipMagicLucky(check41,3)
	lucky4 = GetEquipMagicLucky(check41,4)
	lucky5 = GetEquipMagicLucky(check41,5)
	lucky6 = GetEquipMagicLucky(check41,6)
	lucky = MayMan_KhamNam(check41,check42,check43,check44,check45,check46,check47,check48,check49,check410,check411)

	Id43 = GetIdMagicEventItem(check43)
	Level411 = GetEquipMagicLevel(check41,1)
	Id411 = GetEquipMagicId(check41,1)
	Level412 = GetEquipMagicLevel(check41,2)
	Id412 = GetEquipMagicId(check41,2)
	Level413 = GetEquipMagicLevel(check41,3)
	Id413 = GetEquipMagicId(check41,3)
	Level414 = GetEquipMagicLevel(check41,4) 
	Id414 = GetEquipMagicId(check41,4)
	Level415 = GetEquipMagicLevel(check41,5)
	Id415 = GetEquipMagicId(check41,5)
	Level416 = GetEquipMagicLevel(check41,6)
	Id416 = GetEquipMagicId(check41,6)
	random41 = GetEquipMagicRandomSeed(check41)

	Pay(100000)
	DelEquipIdx(check41)
	DelItemIdx(check42)
	DelItemIdx(check43)
	DelItemIdx(check44)
	DelItemIdx(check45)
	DelItemIdx(check46)
	DelItemIdx(check47)
	DelItemIdx(check48)
	DelItemIdx(check49)
	DelItemIdx(check410)
	DelItemIdx(check411)

	if GetIdxPGItem(4,1) == 0 and GetIdxPGItem(4,2) == 0 and GetIdxPGItem(4,3) == 0 and GetIdxPGItem(4,4) == 0 and GetIdxPGItem(4,5) == 0 and GetIdxPGItem(4,6) == 0 and GetIdxPGItem(4,7) == 0 and GetIdxPGItem(4,8) == 0 and GetIdxPGItem(4,9) == 0 and GetIdxPGItem(4,10) == 0 and GetIdxPGItem(4,11) == 0 then
		if (dongep == 1) then
			htidx = AddItemPink(0,a,b,c,d,0,lucky,lucky2,lucky3,lucky4,lucky5,lucky6,Level43,Id43,Level412,Id412,Level413,Id413,Level414,Id414,Level415,Id415,Level416,Id416,0,0)
		elseif (dongep == 2) then
			htidx = AddItemPink(0,a,b,c,d,0,lucky1,lucky,lucky3,lucky4,lucky5,lucky6,Level411,Id411,Level43,Id43,Level413,Id413,Level414,Id414,Level415,Id415,Level416,Id416,1,random41)
		elseif (dongep == 3) then
			htidx = AddItemPink(0,a,b,c,d,0,lucky1,lucky2,lucky,lucky4,lucky5,lucky6,Level411,Id411,Level412,Id412,Level43,Id43,Level414,Id414,Level415,Id415,Level416,Id416,1,random41)
		elseif (dongep == 4) then
			htidx = AddItemPink(0,a,b,c,d,0,lucky1,lucky2,lucky3,lucky,lucky5,lucky6,Level411,Id411,Level412,Id412,Level413,Id413,Level43,Id43,Level415,Id415,Level416,Id416,1,random41)
		elseif (dongep == 5) then
			htidx = AddItemPink(0,a,b,c,d,0,lucky1,lucky2,lucky3,lucky4,lucky,lucky6,Level411,Id411,Level412,Id412,Level413,Id413,Level414,Id414,Level43,Id43,Level416,Id416,1,random41)
		elseif (dongep == 6) then
			htidx = AddItemPink(0,a,b,c,d,0,lucky1,lucky2,lucky3,lucky4,lucky5,lucky,Level411,Id411,Level412,Id412,Level413,Id413,Level414,Id414,Level415,Id415,Level43,Id43,1,random41)
		end	
		Msg2SubWorld("ChÛc mıng ["..GetName().."] Æ∑ kh∂m thµnh c´ng <color=pink>"..GetNameItemBox(htidx).." dﬂng "..dongep.."")	
		Msg2Player("Kh∂m nπm thµnh c´ng Option vµo Trang bﬁ Huy“n tinh")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end

else
Msg2Player("Chua code")
end
end

function check_loaiitem(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,loai)
Point = 0
if GetGenreItem(a1) ~= 0 then
	if loai == 0 then
		if GetItemType(a1) ~= 0 then
			Point = Point + 1
		end
	elseif loai == 2 then
		if GetItemType(a1) ~= 2 then
			Point = Point + 1
		end
	end
end

if GetGenreItem(a2) ~= 4 or GetDetailTypeItem(a2) < 44 or GetDetailTypeItem(a2) > 53 then
Point = Point + 1
end
if GetGenreItem(a3) ~= 4 or GetDetailTypeItem(a3) < 167 or GetDetailTypeItem(a3) > 172 then
Point = Point + 1
end
if a4 <= 0 or GetGenreItem(a4) == 4 or GetDetailTypeItem(a4) == 28 or GetDetailTypeItem(a4) == 29 or GetDetailTypeItem(a4) == 30 or GetDetailTypeItem(a4) == 173 or GetDetailTypeItem(a4) == 174 or GetDetailTypeItem(a4) == 175 then
Point = Point
else 
Point = Point + 1
end
if a5 <= 0 or GetGenreItem(a5) == 4 or GetDetailTypeItem(a5) == 28 or GetDetailTypeItem(a5) == 29 or GetDetailTypeItem(a5) == 30 or GetDetailTypeItem(a5) == 173 or GetDetailTypeItem(a5) == 174 or GetDetailTypeItem(a5) == 175 then
Point = Point
else 
Point = Point + 1
end
if a6 <= 0 or GetGenreItem(a6) == 4 or GetDetailTypeItem(a6) == 28 or GetDetailTypeItem(a6) == 29 or GetDetailTypeItem(a6) == 30 or GetDetailTypeItem(a6) == 173 or GetDetailTypeItem(a6) == 174 or GetDetailTypeItem(a6) == 175 then
Point = Point
else 
Point = Point + 1
end
if a7 <= 0 or GetGenreItem(a7) == 4 or GetDetailTypeItem(a7) == 28 or GetDetailTypeItem(a7) == 29 or GetDetailTypeItem(a7) == 30 or GetDetailTypeItem(a7) == 173 or GetDetailTypeItem(a7) == 174 or GetDetailTypeItem(a7) == 175 then
Point = Point
else 
Point = Point + 1
end
if a8 <= 0 or GetGenreItem(a8) == 4 or GetDetailTypeItem(a8) == 28 or GetDetailTypeItem(a8) == 29 or GetDetailTypeItem(a8) == 30 or GetDetailTypeItem(a8) == 173 or GetDetailTypeItem(a8) == 174 or GetDetailTypeItem(a8) == 175 then
Point = Point
else 
Point = Point + 1
end
if a9 <= 0 or GetGenreItem(a9) == 4 or GetDetailTypeItem(a9) == 28 or GetDetailTypeItem(a9) == 29 or GetDetailTypeItem(a9) == 30 or GetDetailTypeItem(a9) == 173 or GetDetailTypeItem(a9) == 174 or GetDetailTypeItem(a9) == 175 then
Point = Point
else 
Point = Point + 1
end
if a10 <= 0 or GetGenreItem(a10) == 4 or GetDetailTypeItem(a10) == 28 or GetDetailTypeItem(a10) == 29 or GetDetailTypeItem(a10) == 30 or GetDetailTypeItem(a10) == 173 or GetDetailTypeItem(a10) == 174 or GetDetailTypeItem(a10) == 175 then
Point = Point
else 
Point = Point + 1
end
if a11 <= 0 or GetGenreItem(a11) == 4 or GetDetailTypeItem(a11) == 28 or GetDetailTypeItem(a11) == 29 or GetDetailTypeItem(a11) == 30 or GetDetailTypeItem(a11) == 173 or GetDetailTypeItem(a11) == 174 or GetDetailTypeItem(a11) == 175 then
Point = Point
else 
Point = Point + 1
end

return Point
end

function MayMan_KhamNam(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11)
--Point = TinhPoint(0,1,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11)
--phamchat = floor(5 + 50 * (Point/36) - 2 * (mod(GetLevelItem(a1)-1,10) + 1 ))
phamchat = random(1,100)
--phamchat = 100
--Msg2SubWorld("May man: "..phamchat.." %")
return phamchat
end


function Level_KhamNam(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11)
captong = (loai_HT(a2) + GetLevelMagicEventItem(a3))/2
if (GetDetailTypeItem(a3)-166 == 1 or GetDetailTypeItem(a3)-166 == 2) then
lvlopt = captong * 10 / 7
Point = TinhPoint(0,1,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11)
elseif (GetDetailTypeItem(a3)-166 == 3 or GetDetailTypeItem(a3)-166 == 4) then
lvlopt = captong * 10 / 7
Point = TinhPoint(0,1,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11)
elseif (GetDetailTypeItem(a3)-166 == 5 or GetDetailTypeItem(a3)-166 == 6) then
lvlopt = captong * 10 / 8
Point = TinhPoint(1,1,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11)
end
--Msg2SubWorld(" "..GetName().." ")
lvl2 = (lvlopt - floor(lvlopt))*100
--Msg2SubWorld("lv2: "..lvl2.." ")
xs = random(1,100)
if xs < lvl2 then
phamchat = floor(lvlopt)+1
else
phamchat = floor(lvlopt)
end
--Msg2SubWorld("phamchat 1: "..phamchat.." ")

if phamchat > 10 then
phamchat = 10
elseif phamchat < 1 then
phamchat = 1
end
--Msg2SubWorld("phamchat 2: "..phamchat.." ")

if GetDetailTypeItem(a1) == 1 or GetDetailTypeItem(a1) == 0 then
macdinh = 80
elseif GetDetailTypeItem(a1) >= 2 then
macdinh = 100
end

if (GetDetailTypeItem(a3)-166 == 1) then
	thanhcong = macdinh
else
	sum = 0
	for i=1,(GetDetailTypeItem(a3)-166-1) do
		sum = sum + GetEquipMagicLevel(a1,i)
	end
	if macdinh == 100 then
	thanhcong = floor(macdinh - sum - 2 * (mod(GetLevelItem(a1)-1,10) + 1 ))
	else
	thanhcong = floor(macdinh - sum/2 - 2 * (mod(GetLevelItem(a1)-1,10) + 1 ))
	end
end

--Msg2SubWorld("Dong: "..(GetDetailTypeItem(a3)-166).." - Tinh Diem:  "..Point.." - XS Max: "..thanhcong.." ")
xacsuat = Point * thanhcong / 40 - (GetDetailTypeItem(a3)-167) * 8
--Msg2SubWorld("Xac suat thanh cong quyet dinh: "..xacsuat.." ")
xs2 = random(1,100)
if xs2 > xacsuat then	
	if check_optdb2(GetIdMagicEventItem(a3),phamchat) ~= 0 then
		phamchat = check_optdb2(GetIdMagicEventItem(a3),phamchat)
	else
		phamchat = phamchat - 1
	end
end

if check_optdb2(GetIdMagicEventItem(a3),phamchat) == 0 then
phamchat = phamchat  + 3
end

--Msg2Player("phamchat 3: "..phamchat.." ")

for i=1,getn(Mang_OPTDB) do
	if GetIdMagicEventItem(a3) == Mang_OPTDB[i][1] then
		if phamchat < Mang_OPTDB[i][2] then
			phamchat = Mang_OPTDB[i][2]
		elseif phamchat > Mang_OPTDB[i][getn(Mang_OPTDB[i])] then
			phamchat = Mang_OPTDB[i][getn(Mang_OPTDB[i])]
		end
	end
end
--Msg2SubWorld("phamchat 4: "..phamchat.." ")
if phamchat > 10 then
phamchat = 10
elseif phamchat < 1 then
phamchat = 1
end
--Msg2SubWorld("phamchat 5: "..phamchat.." ")
return phamchat
end


function check_optdb2(num,phamchat)
for i=1,getn(Mang_OPTDB) do
	if num == Mang_OPTDB[i][1] then
		if phamchat <= Mang_OPTDB[i][3] then
			return Mang_OPTDB[i][2]
		end
		if phamchat >= Mang_OPTDB[i][getn(Mang_OPTDB[i])] then
			return random(Mang_OPTDB[i][getn(Mang_OPTDB[i])-1],Mang_OPTDB[i][getn(Mang_OPTDB[i])]-1)
		end	
		for j=3,(getn(Mang_OPTDB[i])-1) do
			if getn(Mang_OPTDB[i])-1 == 3 and phamchat >= Mang_OPTDB[i][3] and phamchat < Mang_OPTDB[i][getn(Mang_OPTDB[i])] then
				return random(Mang_OPTDB[i][2],Mang_OPTDB[i][3]-1)			
			elseif phamchat >= Mang_OPTDB[i][j] and phamchat < Mang_OPTDB[i][j+1] then
				return random(Mang_OPTDB[i][j-1],Mang_OPTDB[i][j]-1)
			end
		end
	end
end
return 0
end

Mang_OPTDB = {
{111,2,4,6,8,10},
{115,2,5,9},
{113,3,6,9},
--{136,2,5,7,10},
--{137,2,5,7,10},
--{92,2,5,7,10},
--{88,1,3,5,6,8,10},
--{96,1,3,5,6,7},
--{104,2,4,6,8,10},
{101,2,4,6,8,10},
{105,2,4,6,8,10},
{102,2,4,6,8,10},
{103,1,4,7,8,10},
--{134,3,6,10},
{110,4,7,10},
{106,3,6,10},
{108,4,6,10}
}

function loai_HT(num)
return GetDetailTypeItem(num)-43
end

function Tinh_Diem_Rut(buoc,num1,loaidong1,thuytinh,phucduyen,sl_thuytinh,sl_pd)
if num1 == 0 then
return 0
end

num = GetDetailTypeItem(num1)
if pd > sl_pd  then
	if num == 173  then
		return 0
	elseif num == 174 then
		return 1
	elseif num == 175 then
		return 2
	end
elseif thuytinh > sl_thuytinh and num >= 28 and num <= 30 then
	if num == 29 then
		return 3
	elseif num == 28 or num == 30 then
		return 2
	end
end

if loaidong1 == 171 or loaidong1 == 169 or loaidong1 == 167 then
loaidong = 1
else
loaidong = 2
end

if num == 29 then
	if buoc == 1 then
		return 5
	else
		return 3
	end
elseif num == 174 then
return 2
elseif num == 173 then
return 1
elseif num == 175 then
return 4
elseif num == 28 then
	if loaidong == 1 and buoc == 0 then
	return 5
	else
	return 3
	end
elseif num == 30 then
	if loaidong == 2 and buoc == 0 then
	return 5
	else
	return 3
	end
end
end

function check_thuytinh(num1)
if num1 <= 0 then
return 0
end
num = GetDetailTypeItem(num1)
if num == 29 or num == 30 or num == 28 then
return 1
else
return 0
end
end

function check_pd(num1)
if num1 <= 0 then
return 0
end
num = GetDetailTypeItem(num1)
if num == 173 or num == 174 or num == 175 then
return 1
else
return 0
end
end



function TinhPoint(dong56,buoc,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11)
thuytinh = 0
pd = 0
thuytinh = thuytinh + check_thuytinh(a4)
pd = pd + check_pd(a4)
thuytinh = thuytinh + check_thuytinh(a5)
pd = pd + check_pd(a5)
thuytinh = thuytinh + check_thuytinh(a6)
pd = pd + check_pd(a6)
thuytinh = thuytinh + check_thuytinh(a7)
pd = pd + check_pd(a7)
thuytinh = thuytinh + check_thuytinh(a8)
pd = pd + check_pd(a8)
thuytinh = thuytinh + check_thuytinh(a9)
pd = pd + check_pd(a9)
thuytinh = thuytinh + check_thuytinh(a10)
pd = pd + check_pd(a10)
thuytinh = thuytinh + check_thuytinh(a11)
pd = pd + check_pd(a11)
Point = 0
if check_optdb(GetEquipMagicId(a1,GetDetailTypeItem(a3)-166)) == 1 or check_optdb(GetIdMagicEventItem(a3)) == 1 or dong56 == 1 then
Point = Point + Tinh_Diem_Rut(buoc,a4,GetDetailTypeItem(a3),thuytinh,pd,8,0)
Point = Point + Tinh_Diem_Rut(buoc,a5,GetDetailTypeItem(a3),thuytinh,pd,8,0)
Point = Point + Tinh_Diem_Rut(buoc,a6,GetDetailTypeItem(a3),thuytinh,pd,8,0)
Point = Point + Tinh_Diem_Rut(buoc,a7,GetDetailTypeItem(a3),thuytinh,pd,8,0)
Point = Point + Tinh_Diem_Rut(buoc,a8,GetDetailTypeItem(a3),thuytinh,pd,8,0)
Point = Point + Tinh_Diem_Rut(buoc,a9,GetDetailTypeItem(a3),thuytinh,pd,8,0)
Point = Point + Tinh_Diem_Rut(buoc,a10,GetDetailTypeItem(a3),thuytinh,pd,8,0)
Point = Point + Tinh_Diem_Rut(buoc,a11,GetDetailTypeItem(a3),thuytinh,pd,8,0)
else
Point = Point + Tinh_Diem_Rut(buoc,a4,GetDetailTypeItem(a3),thuytinh,pd,8,0)
Point = Point + Tinh_Diem_Rut(buoc,a5,GetDetailTypeItem(a3),thuytinh,pd,8,0)
Point = Point + Tinh_Diem_Rut(buoc,a6,GetDetailTypeItem(a3),thuytinh,pd,8,0)
Point = Point + Tinh_Diem_Rut(buoc,a7,GetDetailTypeItem(a3),thuytinh,pd,8,0)
Point = Point + Tinh_Diem_Rut(buoc,a8,GetDetailTypeItem(a3),thuytinh,pd,8,0)
Point = Point + Tinh_Diem_Rut(buoc,a9,GetDetailTypeItem(a3),thuytinh,pd,8,0)
Point = Point + Tinh_Diem_Rut(buoc,a10,GetDetailTypeItem(a3),thuytinh,pd,8,0)
Point = Point + Tinh_Diem_Rut(buoc,a11,GetDetailTypeItem(a3),thuytinh,pd,8,0)
end
return Point
end

function Level_Rut_Dong(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11)
phamchat = loai_HT(a2)
Point = TinhPoint(0,0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11)
if check_optdb(GetEquipMagicId(a1,GetDetailTypeItem(a3)-166)) == 1 then
xacsuat = Point / 38 * 75
else
xacsuat = Point / 36 * 75
end
xs2 = random(1,100)

if xs2 > xacsuat then
phamchat = phamchat - 1
end

level_opt = GetEquipMagicLevel(a1,GetDetailTypeItem(a3)-166)
if level_opt < 5 then
phamchat = phamchat - 1
end

if phamchat < 1 then
phamchat = 1
elseif phamchat > 10 then
phamchat = 10
end

return phamchat
end	

function check_opttrung(idx,num,magic)
if idx <= 0 then
return 0
end
for i=1,num do
	if (GetEquipMagicId(idx,i) == magic) then
		return 1
	end
end
return 0
end
function check_sodong(idx)
for i=1,6 do
	if (GetEquipMagicId(idx,i) == 0) then
		return i-1
	end
end
return 6
end


function check_dong207(idx)
for i=1,6 do
	if (GetEquipMagicId(idx,i) == 207) then
		return i
	end
end
return "Khong co"
end

function check_optdb(num)
if num == 137 or num == 136 or num == 115 or num == 116 or num == 121 or num == 122 or num == 123 or num == 124 or num == 125 or num == 126 or num == 142 or num == 143 or num == 140 or num == 141 or num == 144 or num == 113 or num == 104 then
return 1
else
return 0
end
end
function check_reqitem(num)
if num == 111 then  -- Toc do di chuyen - Giay
return 3
elseif num == 113 then -- thoi gian phuc hoi - Ao
return 2
elseif num == 166 or num == 137 or num == 136 or num == 115 or num == 116 or num == 121 or num == 122 or num == 123 or num == 124 or num == 125 or num == 126 or num == 142 or num == 143 or num == 140 or num == 141 or num == 144 then  
return 1
else
return 7
end
end



function checkSoDong(num,loai)
if (loai >= 2) then
	if num == 44 then
	return random(1,2)
	elseif num == 45 then
	return random(2,3)
	elseif num == 46 then
	return random(3,4)
	elseif num == 47 then
	return random(4,5)
	elseif num == 48 then
	return random(5,6)
	else
	return 6
	end
else
	if num == 44 then
	return 1
	elseif num == 45 then
	return random(1,2)
	elseif num == 46 then
	return random(2,3)
	elseif num == 47 then
	return random(3,4)
	elseif num == 48 then
	return random(4,5)
	elseif num == 49 then
	return random(5,6)
	else
	return 6
	end
end
end

function checkHT(num)
for i=1,getn(MangHT) do
	if (MangHT[i][2] == num) then
		return i
	end
end
end
MangHT = {
{"Huy“n Tinh 1",44,90,5000},
{"Huy“n Tinh 2",45,80,6000},
{"Huy“n Tinh 3",46,70,7000},
{"Huy“n Tinh 4",47,60,8000},
{"Huy“n Tinh 5",48,50,10000},
{"Huy“n Tinh 6",49,50,15000},
{"Huy“n Tinh 7",50,30,20000},
{"Huy“n Tinh 8",51,20,30000},
{"Huy“n Tinh 9",52,10,50000},
{"Huy“n Tinh 10",53,0,0}
}
function xanh_to_tim(num)
if num == 2 then
return 50
elseif num == 5 then
return 20
elseif num == 6 then
return 24
elseif num == 8 then
return 20
elseif num == 7 then
return 27
end
end

