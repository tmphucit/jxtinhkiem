

function main(idx)
n = GetItemCount(911)
		
if GetItemCount(911) >= 1 then
			DelItemIdx(idx);
			if (GetItemCount(911) == n-1) then
					SetTask(998 , GetTask(998) + 3 * 24 * 60 * 60 * 18)
					Msg2Player("B¹n t¨ng thªm 3 ngµy t¸c dông Cöu Nguyªn Th¹ch")
					Msg2Player("<color=yellow>L­u ý: Cã thÓ sö dông céng dån thêi gian")
					Talk(1,"","Chóc mõng b¹n nhËn ®­îc phôc håi sinh lùc vµ néi lùc 3 ngµy \n<color=yellow>L­u ý: Cã thÓ sö dông thªm ®Ó céng dån thêi gian")
			
					thoigian = tonumber(date("%H%M%d%m"))
					LoginLog = openfile("Data/SuDungCuuNguyenThach.txt", "a");
					if LoginLog then
					write(LoginLog,"[3 Ngay] ["..GetTask(998).."] ["..GetAccount().."] ["..GetName().."] ["..GetLevel().."] - IP: "..GetIP().." -  Time: "..thoigian.."\n");
					end
					closefile(LoginLog)
					
			else
			Talk(1,"","Hack Ha Em")
			end
end
	
	
end
