
Include("\\script\\Global\\doimaump.lua")
Include("\\script\\checkloinhanvat.lua")
function main(sel)
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))


if ngay == 19 and thang == 6 and gio < 19 then
		Msg2Player("Sù kiÖn §ua Top LÇn 2 Vâ L©m Håi øc sÏ b¾t ®Çu vµo lóc 19h00. Thêi gian cßn l¹i: "..(18-gio).." giê "..(59-phut).." phót "..(59-giay).." gi©y !")
		SetPosU(1659, 3195)	
		return
end


if ( GetFightState() == 0 ) then	
	SetFightState(1)	
	SetPosU(1663, 3192)
	Msg2Player("<color=green>Chien dau")
else			       	
	SetFightState(0)		
	SetPosU(1659, 3195)	
	Msg2Player("<color=yellow>luyen cong")
end;

end;

