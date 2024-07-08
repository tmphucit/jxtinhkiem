
function OnDrop()
end

function OnDeath()
ngay = tonumber(date("%d"))
idx = PlayerIndex
bang = GetTongName()

Msg2SubWorld("Chóc mõng<color=yellow> "..GetName().." <color=red>®· tiªu diÖt Boss HuyÕt ChiÕn mang vÒ nhiÒu phÇn th­ëng cho bang héi")


inlog6(""..GetAccount().." - "..GetName().."")
if bang ~= "" then
for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	w,x,y = GetWorldPos()
	if GetTongName() == bang then
		if GetTongFigure() == 3 then
				for p=1,100 do AddOwnExp(200000) end
				Msg2Player("B¹n nhËn ®­îc 20.000.000 kinh nghiÖm")
				if CheckFreeBoxItem(0,2,30,1) > 0 then
					xs2 = random(1,9)
					if xs2 == 1 then
						idxitem = AddItem(0,4,3,random(1,3),0,0,0)
						Msg2SubWorld("Chóc mõng ["..GetTongName().."] - "..GetName().." nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
					elseif xs2 == 2 then
						idxitem = AddItem(0,3,3,random(1,3),0,0,0)
						Msg2SubWorld("Chóc mõng ["..GetTongName().."] - "..GetName().." nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
					elseif xs2 == 3 then
						idxitem = AddItem(0,3,4,random(1,3),0,0,0)
						Msg2SubWorld("Chóc mõng ["..GetTongName().."] - "..GetName().." nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
					elseif xs2 == 4 then
						idxitem = AddItem(0,9,3,random(1,3),0,0,0)
						Msg2SubWorld("Chóc mõng ["..GetTongName().."] - "..GetName().." nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
					elseif xs2 == 5 then				
						idxitem = AddItem(0,7,15,random(1,10),0,0,0)
						Msg2SubWorld("Chóc mõng ["..GetTongName().."] - "..GetName().." nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
					elseif xs2 == 6 then
						idxitem = AddItem(0,2,30,random(1,10),0,0,0)
						Msg2SubWorld("Chóc mõng ["..GetTongName().."] - "..GetName().." nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
					elseif xs2 == 7 then
						idxitem = AddItem(0,6,3,random(1,10),0,0,0)
						Msg2SubWorld("Chóc mõng ["..GetTongName().."] - "..GetName().." nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
					elseif xs2 == 8 then
						idxitem = AddItem(0,8,3,random(1,10),0,0,0)
						Msg2SubWorld("Chóc mõng ["..GetTongName().."] - "..GetName().." nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
					elseif xs2 == 9 then
						idxitem = AddItem(0,5,5,random(1,10),0,0,0)
						Msg2SubWorld("Chóc mõng ["..GetTongName().."] - "..GetName().." nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
					end
				else
					Msg2SubWorld("<color=green>RÊt tiÕc ["..GetTongName().."] - "..GetName().." kh«ng ®ñ 2 x 3 «, nªn kh«ng nhËn ®­îc trang bÞ Hoµng Kim")
				end
		else	
			for p=1,100 do AddOwnExp(200000) end
			Msg2Player("B¹n nhËn ®­îc 20.000.000 kinh nghiÖm")
		end
	else
		if w == 11 and (x > 210*8 and x < 220*8) and (y > 213*16 and y < 223*16) then
			for p=1,100 do AddOwnExp(100000) end
			Msg2Player("B¹n nhËn ®­îc 10.000.000 kinh nghiÖm")
		end
	end
end
else
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	w,x,y = GetWorldPos()
		if w == 11 and (x > 210*8 and x < 220*8) and (y > 213*16 and y < 223*16) then
			for p=1,100 do AddOwnExp(100000) end
			Msg2Player("B¹n nhËn ®­îc 10.000.000 kinh nghiÖm")
		end
	end
end
PlayerIndex = idx
end

function inlog6(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/BossHuyetChien.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

