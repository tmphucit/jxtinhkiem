function main()
SayNew("D­íi ¸nh mÆt trêi kh«ng cã nghÒ nµo cao quý h¬n nghÒ d¹y häc.\nNh©n sÜ ®Õn ®©y gÆp ta cã viÖc g×?",5,
"TÆng Bé Ch÷ NhÊt Tù Vi S­ /tangbochu",
"Mua vËt phÈm sù kiÖn /muavatpham",
"Gia h¹n sù kiÖn Nhµ Gi¸o ViÖt Nam /giahan", 
"NhËn th­ëng mèc sù kiÖn /nhanthuongmoc",
"Tho¸t./no")
end

function nhanthuongmoc()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 2 x 3 « míi cã thÓ sö dông lång ®Ìn!")
	return
end

if GetTask(971) == 0 then
	if GetTask(970) >= 2000000 then
			SetTask(971, GetTask(971) + 1)
			if GetTask(971) == 1 then
				
			idxname = AddEventItem(random(0,1))
			Msg2SubWorld("Chóc mõng "..GetName().." nhËn th­ëng Mèc 1 - Bé Ch÷ NhÊt Tù Vi S­ ®­îc: <color=yellow>"..GetNameItemBox(idxname).." ")
			inlog2("["..GetNameItemBox(idxname).."] "..GetAccount().." - "..GetName().."")
				
			end
	else
		Talk(1,"","Mèc 1 ®¹t ®­îc: "..GetTask(970).."000 / 2.000.000.000")
	end
elseif GetTask(971) == 1 then
	if GetTask(970) >= 4000000 then
			SetTask(971, GetTask(971) + 1)
			if GetTask(971) == 2 then
						
			idxname = AddEventItem(random(698,699))
			Msg2SubWorld("Chóc mõng "..GetName().." nhËn th­ëng Mèc 2 - Bé Ch÷ NhÊt Tù Vi S­ ®­îc: <color=yellow>"..GetNameItemBox(idxname).." ")
			inlog2("["..GetNameItemBox(idxname).."] "..GetAccount().." - "..GetName().."")
				
			end
	else
		Talk(1,"","Mèc 2 ®¹t ®­îc: "..GetTask(970).."000 / 4.000.000.000")
	end
elseif GetTask(971) == 2 then
		if GetTask(970) >= 6000000 then
			SetTask(971, GetTask(971) + 1)
			if GetTask(971) == 3 then
				
				ketqua = 12 * 30 * 24 + 15 * 24 
				SetTask(947, ketqua)
				sx = random(1,100)
				if sx < 35 then
					idxname = AddEventItem(698)
					Msg2SubWorld("Chóc mõng "..GetName().." nhËn th­ëng Mèc 3 - Bé Ch÷ NhÊt Tù Vi S­ ®­îc: <color=yellow>"..GetNameItemBox(idxname).." ")
					inlog2("["..GetNameItemBox(idxname).."] "..GetAccount().." - "..GetName().."")
				elseif sx < 70 then
					idxname = AddEventItem(699)
					Msg2SubWorld("Chóc mõng "..GetName().." nhËn th­ëng Mèc 3 - Bé Ch÷ NhÊt Tù Vi S­ ®­îc: <color=yellow>"..GetNameItemBox(idxname).." ")
					inlog2("["..GetNameItemBox(idxname).."] "..GetAccount().." - "..GetName().."")				
				elseif sx < 85 then
					idxname = AddEventItem(694)
					Msg2SubWorld("Chóc mõng "..GetName().." nhËn th­ëng Mèc 3 - Bé Ch÷ NhÊt Tù Vi S­ ®­îc: <color=yellow>"..GetNameItemBox(idxname).." ")
					inlog2("["..GetNameItemBox(idxname).."] "..GetAccount().." - "..GetName().."")					
				elseif sx < 95 then
					idxname = AddEventItem(692)
					Msg2SubWorld("Chóc mõng "..GetName().." nhËn th­ëng Mèc 3 - Bé Ch÷ NhÊt Tù Vi S­ ®­îc: <color=yellow>"..GetNameItemBox(idxname).." ")
					inlog2("["..GetNameItemBox(idxname).."] "..GetAccount().." - "..GetName().."")				
				else
					idxname = AddEventItem(691)
					Msg2SubWorld("Chóc mõng "..GetName().." nhËn th­ëng Mèc 3 - Bé Ch÷ NhÊt Tù Vi S­ ®­îc: <color=yellow>"..GetNameItemBox(idxname).." ")
					inlog2("["..GetNameItemBox(idxname).."] "..GetAccount().." - "..GetName().."")				
				end
					

			end
	else
		Talk(1,"","Mèc 3 ®¹t ®­îc: "..GetTask(970).."000 / 6.000.000.000")
	end



else
	Talk(1,"","B¹n ®· nhËn ®ñ tÊt c¶ phÇn th­ëng, kh«ng thÓ nhËn thªm")
end
end


function giahan()
SayNew("<color=green>ThÇy §å:<color> Gia h¹n sù kiÖn mÊt phÝ <color=yellow>100 TiÒn §ång<color>, ng­¬i thÊy sao?",2,
"Ta ch¾c ch¾n muèn gia h¹n sù kiÖn/giahan1",
"Tho¸t./no")
end

function muavatpham()
SayNew("<color=green>ThÇy §å:<color>",2,
"Mua 100 ch÷ S­ gi¸ 10 TiÒn §ång/muavatpham1",
"Tho¸t./no")
end

function muavatpham1()
	if CheckFreeBoxItem(0,10,2,2) == 0 then
			Msg2Player("Hµnh trang kh«ng ®ñ 2 x 3 chç trèng, kh«ng thÓ mua")
			return
		end
		
vang = GetItemCount(697)
if vang >= 10 then
	for k=1,10 do DelItem(697) end	
	if GetItemCount(697) == vang - 10 then
		for i=1,100 do AddEventItem(907) end	
		inlog4("["..GetItemCount(907).."] "..GetAccount().." - "..GetName().."")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
Talk(1,"","Ng­¬i kh«ng ®ñ 10 TiÒn §ång ®Ó mua vËt phÈm")
end
end

function giahan1()
if GetTask(969) >= 2 then
	Talk(1,"","Giíi h¹n sù kiÖn cña b¹n ®· ®¹t mèc tèi ®a <color=yellow>2 lÇn<color> !")
	return
end

vang = GetItemCount(697)
if vang >= 100 then
	for k=1,100 do DelItem(697) end	
	if GetItemCount(697) == vang - 100 then
		SetTask(969, GetTask(969) + 1)
		Msg2Player("B¹n ®· gia h¹n sù kiÖn Nhµ Gi¸o ViÖt Nam lªn <color=yellow>"..GetTask(969).." lÇn")
		inlog5("["..GetTask(969).."] "..GetAccount().." - "..GetName().."")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
Talk(1,"","Ng­¬i kh«ng ®ñ 100 TiÒn §ång ®Ó gia h¹n sù kiÖn")
end
end

function tangbochu()
sl1 = GetItemCount(904)
sl2 = GetItemCount(905)
sl3 = GetItemCount(906)
sl4 = GetItemCount(907)
cash = GetCash()

if sl1 == 0 or sl2 == 0 or sl3 == 0 or sl4 == 0 or cash < 10000 then
Talk(1,"","Ng­¬i ®ang ®ïa giìn víi ta sao? Khi nµo gom ®ñ m·nh hay ®Õn t×m ta.")
return
end

gh = gioihan()
if GetTask(970) >= gh then
	Talk(1,"","Ng­¬i cÇn ph¶i gia h¹n míi cã thÓ tÆng tiÕp !")
	return
end
	

soluong = 0
for i=1,20 do
		if GetItemCount(904) == 0 or GetItemCount(905) == 0 or GetItemCount(906) == 0 or GetItemCount(907) == 0 or cash < 10000 then
			break;
		end
		if GetTask(970) >= gh then		
			Msg2Player("V­ît giíi h¹n bé ch÷, ngõng tÆng")
			break;
		end
		if CheckFreeBoxItem(0,10,2,2) == 0 then
			Msg2Player("Hµnh trang kh«ng ®ñ 2 x 3 chç trèng, ngõng tÆng")
			break
		end
	
		DelItem(904)
		DelItem(905)
		DelItem(906)
		DelItem(907)
		Pay(10000)
		soluong = soluong + 1
		SetTask(970, GetTask(970) + 2000)
		AddOwnExp(2000000)			
		XacSuatVatPham()	
end

if soluong > 0 then
		Msg2Player("B¹n ®· tÆng "..soluong.." bé ch÷ NhÊt Tù Vi S­ ")
		Msg2Player("Giíi h¹n: "..GetTask(970).."000 / "..gh.."000")
end
end


function XacSuatVatPham()
sx = RandomNew(1,40)
if sx == 20 then
			sx2 = RandomNew(1,200)
			if sx2 < 50 then
					idxitem = AddEventItem(random(173,174))
					Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
			elseif sx2 < 80 then
					idxitem = AddEventItem(114)
					Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")		
			elseif sx2 < 120 then
					idxitem = AddEventItem(113)
					Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
			elseif sx2 < 130 then
					idxitem = AddEventItem(118)
					Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
			elseif sx2 < 140 then								
					sx3 = RandomNew(1,9)
					if sx3 == 1 then
					itemidx = AddItem(0,2,80,1,0,0,0)
					Msg2SubWorld("Chóc mõng "..GetName().." tÆng NhÊt Tù Vi S­ nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 2 then
					itemidx = AddItem(0,4,21,1,0,0,0)
					Msg2SubWorld("Chóc mõng "..GetName().." tÆng NhÊt Tù Vi S­ nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 3 then
					itemidx = AddItem(0,6,27,1,0,0,0)
					Msg2SubWorld("Chóc mõng "..GetName().." tÆng NhÊt Tù Vi S­ nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 4 then
					itemidx = AddItem(0,5,25,1,0,0,0)
					Msg2SubWorld("Chóc mõng "..GetName().." tÆng NhÊt Tù Vi S­ nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 5 then
					itemidx = AddItem(0,8,23,1,0,0,0)
					Msg2SubWorld("Chóc mõng "..GetName().." tÆng NhÊt Tù Vi S­ nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 6 then
					itemidx = AddItem(0,7,42,1,0,0,0)
					Msg2SubWorld("Chóc mõng "..GetName().." tÆng NhÊt Tù Vi S­ nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 7 then
					itemidx = AddItem(0,9,21,1,0,0,0)
					Msg2SubWorld("Chóc mõng "..GetName().." tÆng NhÊt Tù Vi S­ nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 8 then
					itemidx = AddItem(0,3,40,1,0,0,0)
					Msg2SubWorld("Chóc mõng "..GetName().." tÆng NhÊt Tù Vi S­ nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 9 then
					idxitem = AddItem(0,3,41,1,0,0,0)
					Msg2SubWorld("Chóc mõng "..GetName().." tÆng NhÊt Tù Vi S­ nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
					end
			elseif sx2 < 170 then		
					sx3 = RandomNew(1,9)
					if sx3 == 1 then
						idxitem = AddItem(0,5,4,2,0,0,0)
						Msg2Player("B¹n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 2 then		
						idxitem = AddItem(0,4,2,2,0,0,0)
						Msg2Player("B¹n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 3 then
						idxitem = AddItem(0,7,14,2,0,0,0)
						Msg2Player("B¹n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 4 then
						idxitem = AddItem(0,9,2,2,0,0,0)
						Msg2Player("B¹n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 5 then
						idxitem = AddItem(0,2,29,2,0,0,0)
						Msg2Player("B¹n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 6 then
						idxitem = AddItem(0,3,2,2,0,0,0)
						Msg2Player("B¹n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 7 then
						idxitem = AddItem(0,6,2,2,0,0,0)
						Msg2Player("B¹n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 8 then
						idxitem = AddItem(0,8,2,2,0,0,0)
						Msg2Player("B¹n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 9 then
						idxitem = AddItem(0,3,1,2,0,0,0)
						Msg2Player("B¹n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
					end				
			elseif sx2 < 180 then
					idxitem = AddEventItem(117)
					Msg2Player("B¹n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")		
			elseif sx2 < 190 then
					idxitem = AddEventItem(115)
					Msg2Player("B¹n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")				
			elseif sx2 < 198 then
					idxitem = AddEventItem(116)
					Msg2SubWorld("Chóc mõng "..GetName().." tÆng NhÊt Tù Vi S­ nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")		
			elseif sx2 < 192 then
					idxitem = AddEventItem(random(28,31))
					Msg2SubWorld("Chóc mõng "..GetName().." tÆng NhÊt Tù Vi S­ nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")		
			elseif sx2 == 197 then
					idxitem = AddEventItem(687)
					Msg2SubWorld("Chóc mõng "..GetName().." tÆng NhÊt Tù Vi S­ nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")				
			elseif sx2 == 198 then
					idxitem = AddEventItem(120)
					Msg2SubWorld("Chóc mõng "..GetName().." tÆng NhÊt Tù Vi S­ nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")				
			elseif sx2 == 199 then
					idxitem = AddEventItem(random(0,1))
					Msg2SubWorld("Chóc mõng "..GetName().." tÆng NhÊt Tù Vi S­ nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")		
			elseif sx2 == 200 then
					idxitem = AddEventItem(random(698,699))
					Msg2SubWorld("Chóc mõng "..GetName().." tÆng NhÊt Tù Vi S­ nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
			end
end
end


function gioihan()
if GetTask(969) == 0 then
return 2000000
elseif GetTask(969) == 1 then
return 4000000
elseif GetTask(969) == 2 then
return 6000000
else
return 0
end
end

function no()
end
function inlog4(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/logMuaVatPham10Vang.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function inlog2(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/logMocSuKien.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function inlog5(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/logGiaHan.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end