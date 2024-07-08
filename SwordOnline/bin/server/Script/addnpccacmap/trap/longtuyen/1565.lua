
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
--		SetPosU(1569, 3179)
--		return
--	end
--else
--		Msg2Player("Sù kiÖn §ua Top LÇn 2 Vâ L©m T×nh NghÜa sÏ b¾t ®Çu vµo lóc 10h00. Thêi gian cßn l¹i: "..((21-ngay)*24+9-gio).." giê "..(59-phut).." phót "..(59-giay).." gi©y !")
--		SetPosU(1569, 3179)
--		return
--end



if check() == 0 then
checkruapk()
if ( GetFightState() == 0 ) then	
	SetFightState(1)	
	SetPosU(1559, 3171)
else			       	
	SetFightState(0)		
	SetPosU(1569, 3179)
end;
	AddStation(10)			
doimaump()
else
xuly()
end
end;

-- cua 3h