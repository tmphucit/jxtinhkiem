function main(idx)
if mp() == 0 then
Talk(1,"","B¹n ch­a gia nhËp m«n ph¸i !")
return
end

sl = GetItemCount(177)
if GetLevel() >= 80 then
	DelItemIdx(idx);
	if GetItemCount(177) == sl-1 then
		if mp() == 1 then
			AddMagic(350,1)
			AddMagic(351,1)
			AddMagic(353,1)
		elseif mp() == 2 then
			AddMagic(342,1)
			AddMagic(347,1)
			AddMagic(345,1)
		elseif mp() == 3 then
			AddMagic(355,1)
			AddMagic(358,1)
			AddMagic(302,1)
			AddMagic(399,0)
		elseif mp() == 4 then
			AddMagic(359,1)
			AddMagic(361,1)
			AddMagic(327,0)
		elseif mp() == 5 then
			AddMagic(374,1)
			AddMagic(370,1)
			AddMagic(291,0)
		elseif mp() == 6 then
			AddMagic(377,1)
			AddMagic(378,1)
		elseif mp() == 7 then
			AddMagic(362,1)
			AddMagic(389,1)
		elseif mp() == 8 then
			AddMagic(365,1)
			AddMagic(367,1)
			AddMagic(328,0)
		elseif mp() == 9 then
			AddMagic(380,1)
			AddMagic(382,1)
		elseif mp() == 10 then
			AddMagic(385,1)
			AddMagic(384,1)
			AddMagic(329,0)

		else
		Msg2Player("Ban chua gia nhap mon phai, khong the hoc ky nang")
		end
	else
		Talk(1,"","Hack ha em")
	end
else
Msg2Player("Dang cap khong du 80")
end
end


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
