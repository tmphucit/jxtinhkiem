

function main()

SayNew("<color=green>H»ng Nga<color>: Tr¨ng thanh giã m¸t, ph¶i ch¨ng ®ang thiÕu mÊt mét ng­êi....\n<color=yellow>Quý b»ng h÷u cÇn ta gióp g×? T­íng t¸ tr«ng còng ®­îc ®Êy! Ahihi....<color>",3,
"Gia h¹n sö dông Lång §Ìn /giahan",
"NhËn th­ëng mèc Lång §Ìn /nhanthuongmoc_longden",
"Tho¸t./no")

end
function giahan()
SayNew("<color=green>H»ng Nga:<color> Gia h¹n sù kiÖn mÊt phÝ 100 TiÒn §ång, ng­¬i thÊy sao?",2,
"Ta ch¾c ch¾n muèn gia h¹n sù kiÖn/giahan1",
"Tho¸t./no")
end

function giahan1()
if GetTask(955) >= 2 then
	Talk(1,"","Giíi h¹n sù kiÖn cña b¹n ®· ®¹t mèc tèi ®a <color=yellow>2 lÇn<color> !")
	return
end

vang = GetItemCount(697)
if vang >= 100 then
	for k=1,100 do DelItem(697) end	
	if GetItemCount(697) == vang - 100 then
		SetTask(955, GetTask(955) + 1)
		Msg2Player("B¹n ®· gia h¹n sù kiÖn Quèc Kh¸nh lªn <color=yellow>"..GetTask(955).." lÇn")
		inlog5(""..GetAccount().." - "..GetName().." - "..GetLevel().."")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
Talk(1,"","Ng­¬i kh«ng ®ñ 100 TiÒn §ång ®Ó gia h¹n sù kiÖn")
end
end

function nhanthuongmoc_longden()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 2 x 3 « míi cã thÓ sö dông lång ®Ìn!")
	return
end

if GetTask(958) == 0 then
	if GetTask(954) >= 500000 then
			SetTask(958, GetTask(958) + 1)
			if GetTask(958) == 1 then
				
			itemname = AddEventItem(120)
			SetBindItem(itemname, 1)
			itemname = AddEventItem(120)
			SetBindItem(itemname, 1)
			Msg2SubWorld("Chóc mõng "..GetName().." nhËn th­ëng Mèc 1 - Lång §Ìn ®­îc: <color=yellow>2 Tiªn Th¶o Lé 6 Giê ")
			inlog2("[Tiªn Th¶o Lé] "..GetAccount().." - "..GetName().."")
				
			end
	else
		Talk(1,"","Mèc 1 ®¹t ®­îc: "..GetTask(954).."000 / 500000000")
	end
elseif GetTask(958) == 1 then
	if GetTask(954) >= 1000000 then
			SetTask(958, GetTask(958) + 1)
			if GetTask(958) == 2 then
				
			AddEventItem(685)	
			itemname = AddEventItem(random(0,1))
			SetBindItem(itemname, 1)
			Msg2SubWorld("Chóc mõng "..GetName().." nhËn th­ëng Mèc 2 - Lång §Ìn ®­îc: <color=yellow>"..GetNameItemBox(itemname).." + VÐ Phong V©n Lo¹n ChiÕn")
			inlog2("["..GetNameItemBox(itemname).."] "..GetAccount().." - "..GetName().."")
				
			end
	else
		Talk(1,"","Mèc 2 ®¹t ®­îc: "..GetTask(954).."000 / 1000000000")
	end
elseif GetTask(958) == 2 then
		if GetTask(954) >= 1500000 then
			SetTask(958, GetTask(958) + 1)
			if GetTask(958) == 3 then
				
				
				if GetGlbMissionV(37) == 1111 then
					SetGlbMissionV(37, 0)
					idxitem = AddEventItem(691)
					AddGlobalCountNews("Chóc mõng "..GetName().." nhËn th­ëng Mèc 3 - Lång §Ìn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."",1)
					Msg2SubWorld("Chóc mõng "..GetName().." nhËn th­ëng Mèc 3 - Lång §Ìn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")		
				elseif GetGlbMissionV(37) == 2222 then
					SetGlbMissionV(37, 0)
					idxitem = AddEventItem(692)
					AddGlobalCountNews("Chóc mõng "..GetName().." nhËn th­ëng Mèc 3 - Lång §Ìn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."",1)
					Msg2SubWorld("Chóc mõng "..GetName().." nhËn th­ëng Mèc 3 - Lång §Ìn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")			
				elseif GetGlbMissionV(37) == 3333 then
					SetGlbMissionV(37, 0)
					idxitem = AddEventItem(694)
					AddGlobalCountNews("Chóc mõng "..GetName().." nhËn th­ëng Mèc 3 - Lång §Ìn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."",1)
					Msg2SubWorld("Chóc mõng "..GetName().." nhËn th­ëng Mèc 3 - Lång §Ìn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")			
				else		
					itemname = AddEventItem(random(698,699))
					Msg2SubWorld("Chóc mõng "..GetName().." nhËn th­ëng Mèc 3 - Lång §Ìn ®­îc: <color=yellow>"..GetNameItemBox(itemname).." ")
					inlog2("["..GetNameItemBox(itemname).."] "..GetAccount().." - "..GetName().."")
				end
			end
	else
		Talk(1,"","Mèc 3 ®¹t ®­îc: "..GetTask(954).."000 / 1500000000")
	end



else
	Talk(1,"","B¹n ®· nhËn ®ñ tÊt c¶ phÇn th­ëng, kh«ng thÓ nhËn thªm")
end
end


function inlog5(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/logGiaHan_LongDen.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
function inlog2(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/PTMoc_LongDen.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
function no()
end