

function main(idx)
n = GetItemCount(912)
		
if GetItemCount(912) >= 1 then
			DelItemIdx(idx);
			if (GetItemCount(912) == n-1) then
					SetTask(998 , GetTask(998) + 7 * 24 * 60 * 60 * 18)
					Msg2Player("B�n t�ng th�m 7 ng�y t�c d�ng C�u Nguy�n Th�ch")
					Msg2Player("<color=yellow>L�u �: C� th� s� d�ng c�ng d�n th�i gian")
					Talk(1,"","Ch�c m�ng b�n nh�n ���c ph�c h�i sinh l�c v� n�i l�c 7 ng�y \n<color=yellow>L�u �: C� th� s� d�ng th�m �� c�ng d�n th�i gian")
			
					thoigian = tonumber(date("%H%M%d%m"))
					LoginLog = openfile("Data/SuDungCuuNguyenThach.txt", "a");
					if LoginLog then
					write(LoginLog,"[7 Ngay] ["..GetTask(998).."] ["..GetAccount().."] ["..GetName().."] ["..GetLevel().."] - IP: "..GetIP().." -  Time: "..thoigian.."\n");
					end
					closefile(LoginLog)
					
			else
			Talk(1,"","Hack Ha Em")
			end
end
	
	
end
