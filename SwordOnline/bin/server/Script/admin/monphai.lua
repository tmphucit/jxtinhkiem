
function mp()
	if GetFaction() == "Thieu Lam Phai" then
	return 1
	elseif GetFaction() == "Thien Vuong Bang" then
	return 2
	elseif GetFaction() == "Duong Mon" then
	return 3
	elseif GetFaction() == "Ngu Doc Giao" then
	return 4
	elseif GetFaction() == "Nga My Phai" then
	return 5
	elseif GetFaction() == "Thuy Yen Mon" then
	return 6
	elseif GetFaction() == "Cai Bang" then
	return 7
	elseif GetFaction() == "Thien Nhan Giao" then
	return 8
	elseif GetFaction() == "Vo Dang Phai" then
	return 9
	elseif GetFaction() == "Con Lon Phai" then
	return 10
	else
	return 0
	end
end;
