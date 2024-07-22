
Include("\\script\\Global\\doimaump.lua")
Include("\\script\\checkloinhanvat.lua")
function main(sel)
ngay = tonumber(date("%d"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))
--if ngay == 21 then
--	if gio < 10 then
--		Msg2Player("Sù kiÖn §ua Top LÇn 2 Vâ L©m T×nh NghÜa sÏ b¾t ®Çu vµo lóc 10h00. Thêi gian cßn l¹i: "..(9-gio).." giê "..(59-phut).." phót "..(59-giay).." gi©y !")
--		SetPosU(1657, 3200)
--		return
--	end
--else
--		Msg2Player("Sù kiÖn §ua Top LÇn 2 Vâ L©m T×nh NghÜa sÏ b¾t ®Çu vµo lóc 10h00. Thêi gian cßn l¹i: "..((21-ngay)*24+9-gio).." giê "..(59-phut).." phót "..(59-giay).." gi©y !")
--		SetPosU(1657, 3200)
--		return
--end


if ( GetFightState() == 0 ) then	
	SetFightState(1)	
	SetPosU(1510, 3167)
else			       	
	SetFightState(0)		
	SetPosU(1516, 3163)
end;
end;
