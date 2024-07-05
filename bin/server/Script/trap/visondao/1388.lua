
Include("\\script\\Global\\doimaump.lua")
Include("\\script\\checkloinhanvat.lua")
function main(sel)
ngay = tonumber(date("%d"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))


if check() == 0 then		
Msg2Player("Thay ®æi tr¹ng th¸i")
checkruapk()
if ( GetFightState() == 0 ) then		
	SetFightState(1)		
	SetPos(1387, 2762)	
else				
	SetFightState(0)       		
	SetPos(1390, 2768)			
end;
	AddStation(10)	
doimaump()
else
xuly()
end
end;

-- cua thanh thanh son