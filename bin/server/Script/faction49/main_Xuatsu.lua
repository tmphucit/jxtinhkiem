Task_XuatSu=19
function XuatSu()
if	GetCurCamp() < 4 then
	local h = GetCash()
	if(GetLevel() >= 60) then
		if (GetCash() >= 100000) then
			Pay(100000)
			if(GetCash() == h - 100000) then
				SetTask(Task_XuatSu,1)
				SetCamp(4)
				SetCurCamp(4)
				SetRank(11)
				Talk(1,"","Ng��i �� r�i kh�i s� m�n , sau n�y h�y v� nh�n ngh�a m� h�nh ��o")
			else
				Talk(1,"","Kh�ng c� �� 10 v�ng l��ng")
			end
		else
			Talk(1,"","Kh�ng c� �� 10 v�ng l��ng")
		end
	else
		Talk(1,"","��ng C�p c�a ng��i ch�a th� r�i kh�i s� m�n (>=60)")
		end
	else
	Msg2Player("Ng��i kh�ng thu�c b�n ph�i")
	end
end
function velai()
	if	GetCurCamp() == 4 then
		local h = GetCash()
		if (GetCash() >= 100000) then
			Pay(100000)
			if(GetCash() == h - 100000) then
				SetTask(Task_XuatSu,0)
					if GetFaction() == "Thieu Lam Phai" or GetFaction() == "Nga My Phai"
						or GetFaction() == "Cai Bang" or GetFaction() == "Vo Dang Phai" then
						SetCamp(1)    
						SetCurCamp(1)
						Talk(1,"","Ng��i �� quay tr� v� b�n ph�i")
					elseif GetFaction() == "Ngu Doc Giao" or GetFaction() == "Thien Nhan Giao" then
						SetCamp(2)    
						SetCurCamp(2)
						Talk(1,"","Ng��i �� quay tr� v� b�n ph�i")
					else 
						SetCamp(3)    
						SetCurCamp(3)
						Talk(1,"","Ng��i �� quay tr� v� b�n ph�i")
					end
				end
			end
		end
	end

	
Tab_Faction ={
{{},{},{},{}},--1
{{},{}},--2
{{"Con Lon Phai"},{"Thuy Yen Mon"},{"Duong Mon"},{"Thien Vuong Bang"}},--3

}
