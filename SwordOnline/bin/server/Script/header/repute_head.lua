function ReturnRepute(default_repute,max_level,reduce_rate)
	player_level = GetLevel()
	if (GetLevel() <= max_level) then
		player_repute = default_repute
	else
		player_repute = floor(default_repute * (1 - (player_level - max_level) * reduce_rate / 100))
		if (player_repute < 1) then
			player_repute = 1 
		end
	end
	return player_repute
end

function GetLevelRepute(i)
	Repute_level = {0,8,30,75,150,240,450,750,1200,2250,3600}
	if (i <= 0) then
		return 0
	else
		return Repute_level[i + 1]
	end
end

function GetReputeLevel(i)
	if (i >= 3600) then
		return 10
	elseif (i >= 2250) then
		return 9
	elseif (i >= 1200) then
		return 8
	elseif (i >= 750) then
		return 7
	elseif (i >= 450) then
		return 6
	elseif (i >= 240) then
		return 5
	elseif (i >= 150) then
		return 4
	elseif (i >= 75) then
		return 3
	elseif (i >= 30) then
		return 2
	elseif (i >= 8) then
		return 1
	elseif (i >= 0) then
		return 0
	else
		return -1
	end
end

function GetReputeStr(Repute_Level)
	if (Repute_Level == 1) then
		Repute_title = "S� Xu�t Giang H� "
	elseif (Repute_Level == 2) then
		Repute_title = "V� Danh Ti�u B�i"
	elseif (Repute_Level == 3) then
		Repute_title = "M�c M�c V� V�n"
	elseif (Repute_Level == 4) then
		Repute_title = "S� Hi�n Phong Mang"
	elseif (Repute_Level == 5) then
		Repute_title = "Ti�u H�u Danh Kh� "
	elseif (Repute_Level == 6) then
		Repute_title = "Danh ��u H��ng L��ng"
	elseif (Repute_Level == 7) then
		Repute_title = "Uy Tr�n Nh�t Ph��ng"
	elseif (Repute_Level == 8) then
		Repute_title = "Ng�o Th� Qu�n H�ng"
	elseif (Repute_Level == 9) then
		Repute_title = "Nh�t ��i T�ng s� "
	elseif (Repute_Level == 10) then
		Repute_title = "Ti�u Ng�o giang h� "
	else
		Repute_title = "B�nh d�n b� t�nh"
	end
	return Repute_title
end

function Repute_Get()
	return GetRepute();
end

function Repute_Set( value )
	SetFuYuan( value );
	return 1;
end

function Repute_Add( value )
	local nResult = Repute_Set( Repute_Get() + value );
	if(  nResult == 1 ) then
		Msg2Player("B�n nh�n ���c "..value.." �i�m danh v�ng");
	end
	return nResult;
end

function Repute_Reduce( value )
	local nResult = Repute_Set( Repute_Get() - value );
	if(  nResult == 1 ) then
		Msg2Player("B�n t�n th�t "..value.." �i�m danh v�ng");
	end
	return nResult;
end

function nothing()
end
