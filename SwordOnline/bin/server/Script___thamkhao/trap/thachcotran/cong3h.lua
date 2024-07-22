
Include("\\script\\Global\\doimaump.lua")
Include("\\script\\checkloinhanvat.lua")
function main(sel)
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))
if ngay == 21 and thang == 8 and gio < 19 then
		Msg2Player("Sù kiÖn §ua Top M¸y Chñ PhËt S¬n sÏ b¾t ®Çu vµo lóc 19h00 ngµy 21/08/2021. Thêi gian cßn l¹i: <color=red>"..(18-gio).." giê "..(59-phut).." phót "..(59-giay).." gi©y !")
		SetPosU(1693, 3264)
		return
end

if ( GetFightState() == 0 ) then	
	SetFightState(1)	
	SetPosU(1698, 3270)
else			       	
	SetFightState(0)		
	SetPosU(1693, 3264)
end;
end;
