
Include("\\script\\lib\\thuvien.lua")
MaxRank = 40
	DSXH = {}
temp = {}

function XepHang()
nLevel = GetLevel()
nExp = GetExp()
nTotal = nLevel * 1000000 + nExp / 10000
nCheckSelf = 1
nCheckMP = checkmonphai()
if getn(DSXH) == 0 then
		DSXH[getn(DSXH)+1] = {GetName(),nTotal,nCheckMP}
else
		nCheckSelf = check_self_player()
		if  nCheckSelf ~= 0 then
			DSXH[nCheckSelf][2] = nTotal
		else
				if getn(DSXH) < MaxRank then
						DSXH[getn(DSXH)+1] = {GetName(),nTotal,nCheckMP}
				else
						nCheckMin = check_min_player()
						if nTotal > DSXH[nCheckMin][2] then
							DSXH[nCheckMin] = 	{GetName(),nTotal,nCheckMP}
						end
				end
		end
end
end

function xephangmonphai()
vt = 1
for i=1,getn(DSXH) do
	if DSXH[i][1] == GetName() then
	break
	end
	if DSXH[i][3] == checkmonphai() then
		vt = vt + 1
	end
end
return vt
end

function HoanVi(Tab)
temp = {{"",0,0}}
for i = 1,(getn(Tab)-1) do
	for j=( i+1),getn(Tab) do
			if Tab[i][2] < Tab[j][2] then
					temp[1] = Tab[j]
					Tab[j] = Tab[i]
					Tab[i] = temp[1]	
			end
	end
end
end

function returnLader(player_Faction)
		if (player_Faction == 1) then
		return 10277
		elseif (player_Faction == 2) then
			return 10278	
		elseif (player_Faction == 3) then
			return 10279
		elseif (player_Faction == 4) then
			return 10280
		elseif (player_Faction == 5) then				
			return 10281
		elseif (player_Faction == 6) then	
			return 10282
		elseif (player_Faction == 7) then
			return 10283
		elseif (player_Faction == 8) then
			return 10284
		elseif (player_Faction == 9) then
			return 10285
		elseif (player_Faction == 10) then
			return 10286
		end
end


function checkmonphai()
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


function sapxepxephang()
HoanVi(DSXH)

Msg2SubWorld("<color=pink>XÕp h¹ng cao thñ:")
for i=1,MaxRank do
	Msg2SubWorld("H¹ng "..i..": ["..checkmpxxx(DSXH[i][3]).."]"..DSXH[i][1].." ") 
end
end


function checkmpxxx(num)
	if num == 1 then
	return "TL"
	elseif num == 2 then
	return "TVB"
	elseif num == 3 then
	return "DM"
	elseif num == 4 then
	return "ND"
	elseif num == 5 then
	return "NM"
	elseif num == 6 then
	return "TY"
	elseif num == 7 then
	return "CB"
	elseif num == 8 then
	return "TN"
	elseif num == 9 then
	return "VD"
	elseif num == 10 then
	return "CL"
	else
	return 0
	end
end;
function check_self_player()
for i=1,getn(DSXH) do
if GetName() == DSXH[i][1] then
return i
end
end
return 0
end

function check_min_player()
min = DSXH[1][2]
vtmin = 1
for i=2,getn(DSXH) do
	if min > DSXH[i][2] then
		min = DSXH[i][2]
		vtmin = i
	end
end
return vtmin
end

function save()
BANG1 = TaoBang(DSXH,"DSXH")
LuuBang("script/newcode/dsxephang.lua",BANG1)
end