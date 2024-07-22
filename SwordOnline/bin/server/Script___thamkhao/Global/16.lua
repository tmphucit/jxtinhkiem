function main(idx)
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","Hµnh trang kh´ng ÆÒ 2 x 3 kh´ng th” mÎ vÀt ph»m")
	return
end


n = GetItemCount(16)
if GetItemCount(16) >= 1 then
			DelItemIdx(idx);
			if GetItemCount(16) == (n-1) then
		
				sx = random(1,100)
				if sx < 40 then
					idxitem = AddEventItem(27)
					Msg2SubWorld(""..GetName().." mÎ th«n b› Æπi hÂng bao may mæn nhÀn Æ≠Óc: <color=yellow>Ng‰c B› »n")
						inlogin("[Ngoc Bi An] "..GetAccount().." - "..GetName().." - "..GetLevel().."")		
				elseif sx >= 40 and sx < 80 then
					idxitem = AddEventItem(339)
					Msg2SubWorld(""..GetName().." mÎ th«n b› Æπi hÂng bao may mæn nhÀn Æ≠Óc: <color=yellow>M∑nh Ng˘a Phi™n VÚ ")	
						inlogin("[Manh Phien Vu] "..GetAccount().." - "..GetName().." - "..GetLevel().."")		
				elseif sx >= 80 and sx < 99 then
					idxitem = AddEventItem(410)
					Msg2SubWorld(""..GetName().." mÎ th«n b› Æπi hÂng bao may mæn nhÀn Æ≠Óc: <color=yellow>Tu Luy÷n ßan")	
						inlogin("[Tu Luyen Dan] "..GetAccount().." - "..GetName().." - "..GetLevel().."")		
				else
					sx2 = random(1,9)
					if sx2 == 1 then
						idxitem = AddItem(0,4,17,6,0,0,0)
						Msg2SubWorld(""..GetName().." mÎ th«n b› Æπi hÂng bao may mæn nhÀn Æ≠Óc: <color=yellow>"..GetNameItemBox(idxitem).."")	
						inlogin("["..GetNameItemBox(idxitem).."] "..GetAccount().." - "..GetName().." - "..GetLevel().."")		
					elseif sx2 == 2 then
						idxitem = AddItem(0,9,17,6,0,0,0)
						Msg2SubWorld(""..GetName().." mÎ th«n b› Æπi hÂng bao may mæn nhÀn Æ≠Óc: <color=yellow>"..GetNameItemBox(idxitem).."")
						inlogin("["..GetNameItemBox(idxitem).."] "..GetAccount().." - "..GetName().." - "..GetLevel().."")			
					elseif sx2 == 3 then
						idxitem = AddItem(0,3,30,6,0,0,0)
						Msg2SubWorld(""..GetName().." mÎ th«n b› Æπi hÂng bao may mæn nhÀn Æ≠Óc: <color=yellow>"..GetNameItemBox(idxitem).."")	
						inlogin("["..GetNameItemBox(idxitem).."] "..GetAccount().." - "..GetName().." - "..GetLevel().."")		
					elseif sx2 == 4 then
						idxitem = AddItem(0,3,29,6,0,0,0)
						Msg2SubWorld(""..GetName().." mÎ th«n b› Æπi hÂng bao may mæn nhÀn Æ≠Óc: <color=yellow>"..GetNameItemBox(idxitem).."")	
						inlogin("["..GetNameItemBox(idxitem).."] "..GetAccount().." - "..GetName().." - "..GetLevel().."")		
					elseif sx2 == 5 then
						idxitem = AddItem(0,7,43,1,0,0,0)
						Msg2SubWorld(""..GetName().." mÎ th«n b› Æπi hÂng bao may mæn nhÀn Æ≠Óc: <color=yellow>"..GetNameItemBox(idxitem).."")	
						inlogin("["..GetNameItemBox(idxitem).."] "..GetAccount().." - "..GetName().." - "..GetLevel().."")		
					elseif sx2 == 6 then
						idxitem = AddItem(0,5,26,1,0,0,0)
						Msg2SubWorld(""..GetName().." mÎ th«n b› Æπi hÂng bao may mæn nhÀn Æ≠Óc: <color=yellow>"..GetNameItemBox(idxitem).."")	
						inlogin("["..GetNameItemBox(idxitem).."] "..GetAccount().." - "..GetName().." - "..GetLevel().."")		
					elseif sx2 == 7 then
						idxitem = AddItem(0,2,81,1,0,0,0)
						Msg2SubWorld(""..GetName().." mÎ th«n b› Æπi hÂng bao may mæn nhÀn Æ≠Óc: <color=yellow>"..GetNameItemBox(idxitem).."")
						inlogin("["..GetNameItemBox(idxitem).."] "..GetAccount().." - "..GetName().." - "..GetLevel().."")			
					elseif sx2 == 8 then
						idxitem = AddItem(0,8,24,1,0,0,0)
						Msg2SubWorld(""..GetName().." mÎ th«n b› Æπi hÂng bao may mæn nhÀn Æ≠Óc: <color=yellow>"..GetNameItemBox(idxitem).."")	
						inlogin("["..GetNameItemBox(idxitem).."] "..GetAccount().." - "..GetName().." - "..GetLevel().."")		
					elseif sx2 == 9 then
						idxitem = AddItem(0,6,28,1,0,0,0)
						Msg2SubWorld(""..GetName().." mÎ th«n b› Æπi hÂng bao may mæn nhÀn Æ≠Óc: <color=yellow>"..GetNameItemBox(idxitem).."")	
						inlogin("["..GetNameItemBox(idxitem).."] "..GetAccount().." - "..GetName().." - "..GetLevel().."")						
					end
				end
			else
			Talk(1,"","Hack Ha Em")
			end
end
end


function inlogin(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/MoThanBiHongBao.txt", "a");
if LoginLog then
write(LoginLog,""..string.."\n");
end
closefile(LoginLog)
end
