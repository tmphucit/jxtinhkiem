

function main(idx)
n = GetItemCount(911)
		
if GetItemCount(911) >= 1 then
			DelItemIdx(idx);
			if (GetItemCount(911) == n-1) then
					SetTask(998 , GetTask(998) + 3 * 24 * 60 * 60 * 18)
					Msg2Player("B�n t�ng th�m 3 ng�y t�c d�ng C�u Nguy�n Th�ch")
					Msg2Player("<color=yellow>L�u �: C� th� s� d�ng c�ng d�n th�i gian")
					Talk(1,"","Ch�c m�ng b�n nh�n ���c ph�c h�i sinh l�c v� n�i l�c 3 ng�y \n<color=yellow>L�u �: C� th� s� d�ng th�m �� c�ng d�n th�i gian")
			
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
