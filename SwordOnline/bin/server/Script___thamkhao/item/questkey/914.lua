iditem = 914

function main(idx)
w,x,y = GetWorldPos()
if w ~= 53 then
Talk(1,"","V�t ph�m chi s� d�ng t�i Ba L�ng Huy�n !")
return
end
if GetTask(196) == 0 then
Talk(1,"","Nh�n v�t c�a b�n ch�a s� d�ng quy�n l�n ��o mi�n ph� t�i xa phu, kh�ng th� s� d�ng !")
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
					Msg2Player("Ng�i y�n, ch�ng ta �i ��o t�y t�y..")
					SetRevPos(14);		
					Msg2SubWorld("��i hi�p "..GetName().." v�a s� d�ng Thi�t B�i T�y T�y !")
									
			else
			Talk(1,"","Hack Ha Em")
			end
end
	
	
end

