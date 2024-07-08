iditem = 914

function main(idx)
w,x,y = GetWorldPos()
if w ~= 53 then
Talk(1,"","VËt phÈm chi sö dông t¹i Ba L¨ng HuyÖn !")
return
end
if GetTask(196) == 0 then
Talk(1,"","Nh©n vËt cña b¹n ch­a sö dông quyÒn lªn ®¶o miÔn phÝ t¹i xa phu, kh«ng thÓ sö dông !")
return
end

n = GetItemCount(iditem)
		
if GetItemCount(iditem) >= 1 then
			DelItemIdx(idx);
			if (GetItemCount(iditem) == n-1) then
		
					thoigian = tonumber(date("%H%M%d%m"))
					LoginLog = openfile("Data/SuDungThietBaiTayTuy.txt", "a");
					if LoginLog then
					write(LoginLog,"["..GetAccount().."] ["..GetName().."] ["..GetLevel().."] - IP: "..GetIP().." -  Time: "..thoigian.."\n");
					end
					closefile(LoginLog)
					
					SetTask(196,2)
					NewWorld(20,200*8, 200*16);
					SetPunish(0)
					SetFightState(0)
					Msg2Player("Ngåi yªn, chóng ta ®i ®¶o tÈy tñy..")
					SetRevPos(14);		
					Msg2SubWorld("§¹i hiÖp "..GetName().." võa sö dông ThiÕt Bµi TÈy Tñy !")
									
			else
			Talk(1,"","Hack Ha Em")
			end
end
	
	
end

