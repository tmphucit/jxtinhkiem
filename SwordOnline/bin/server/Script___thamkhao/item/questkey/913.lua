iditem = 913

function main(idx)
w,x,y = GetWorldPos()
if w ~= 53 then
Talk(1,"","VËt phÈm chi sö dông t¹i Ba L¨ng HuyÖn !")
return
end

n = GetItemCount(iditem)
		
if GetItemCount(iditem) >= 1 then
			DelItemIdx(idx);
			if (GetItemCount(iditem) == n-1) then
		
					thoigian = tonumber(date("%H%M%d%m"))
					LoginLog = openfile("Data/SuDungTayTuyLenh.txt", "a");
					if LoginLog then
					write(LoginLog,"["..GetAccount().."] ["..GetName().."] ["..GetLevel().."] - IP: "..GetIP().." -  Time: "..thoigian.."\n");
					end
					closefile(LoginLog)
					
					TayTiemNang()
					TayKyNang()
					Msg2SubWorld("§¹i hiÖp "..GetName().." võa sö dông TÈy Tñy LÖnh !")
					
					
			else
			Talk(1,"","Hack Ha Em")
			end
end
	
	
end


function TayTiemNang()
a = GetSeries()
if a == 0 then
RestAP(35,25,25,15)
elseif a == 1 then
RestAP(20,35,20,25)
elseif a == 2 then
RestAP(25,25,25,25)
elseif a == 3 then
RestAP(30,20,30,20)
elseif a == 4 then
RestAP(20,15,25,40)
end
diemtn = GetProp()
AddProp(-diemtn)
diem = (GetLevel()-1)*5+GetTask(198)*5 + getTiemNang()
AddProp(diem)
KickOutSelf()
end


function TayKyNang()
diemkn = GetMagicPoint()
AddMagicPoint(-diemkn)
diemkn2 = (GetLevel()-1)+GetTask(199) + getKyNang()
AddMagicPoint(diemkn2)
RollbackSkill()
UpdateSkill()
KickOutSelf()
end
function getTiemNang()
if GetTask(139) == 1 then
return 50
elseif GetTask(139) == 2 then
return 100
elseif GetTask(139) == 3 then
return 200
elseif GetTask(139) == 4 then
return 300
elseif GetTask(139) == 5 then
return 400
else
return 0
end
end
function getKyNang()
if GetTask(139) == 1 then
return 10
elseif GetTask(139) == 2 then
return 20
elseif GetTask(139) == 3 then
return 40
elseif GetTask(139) == 4 then
return 60
elseif GetTask(139) == 5 then
return 80
else
return 0
end
end